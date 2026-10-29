#
# AllBinary Open License Version 1
# Copyright (c) 2011 AllBinary
# 
# By agreeing to this license you and any business entity you represent are
# legally bound to the AllBinary Open License Version 1 legal agreement.
# 
# You may obtain the AllBinary Open License Version 1 legal agreement from
# AllBinary or the root directory of AllBinary's AllBinary Platform repository.
# 
# Created By: Travis Berthelot
#  
# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.data.tables.user.quoterequest

require "org/allbinary/logic/communication/sql/AbSqlBean"
require "org/allbinary/data/tables/user/quoterequest/QuoteRequestEntityInterface"

class QuoteRequestEntity < AbSqlBean
    include QuoteRequestEntityInterface
    attr_accessor :logUtil, :tableName

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @tableName = "quoterequest"
    end
    

    def initialize()
        super(UserDbInitInfo.new())
        initialize_fields
        self.setTableName(@tableName)
    end
    

    def insert(values)
        begin
            super(values)
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.putF(@commonStrings.SUCCESS, self, INSERT)
            end
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, INSERT, e)
            end
        end
    end
    

    # throws Exception
    def get(userName, id)
        row = StdUtil.getInstance().createHashMap()
        row.put(UserData::USERNAME, userName)
        row.put(QuoteRequestData.getInstance().ID, (id).to_s)
        quoteRequestHashMap = self.class.superclass.instance_method(:getRow).bind(self).call(row)
        if quoteRequestHashMap != nil
            return QuoteRequest.new(quoteRequestHashMap)
        else
            return nil
        end
    end
    

    def getIds(userName)
        return self.class.superclass.instance_method(:getColumnWhere).bind(self).call(QuoteRequestData.getInstance().ID, UserData::USERNAME, userName)
    end
    

    def deleteWhere(key, value)
        begin
            super(key, value)
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.putF(@commonStrings.SUCCESS, self, "deleteWhere")
            end
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, "deleteWhere", e)
            end
        end
    end
    

    def createTableStatement()
        quoteRequestData = QuoteRequestData.getInstance()
        stringBuffer = StringMaker.new()
        stringBuffer.append(@sqlStrings.CREATE_TABLE).append(@tableName).append(@sqlStrings.START)
        stringBuffer.append(quoteRequestData.ID).append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL)
        stringBuffer.append(UserData::USERNAME)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(quoteRequestData.PROJECT_INFO)
        stringBuffer.append(@sqlTypeStrings.BLOB_NOT_NULL)
        stringBuffer.append(quoteRequestData.CUSTOMER_COMMENTS)
        stringBuffer.append(@sqlTypeStrings.BLOB_NOT_NULL)
        stringBuffer.append(quoteRequestData.BUDGET)
        stringBuffer.append(@sqlTypeStrings.BLOB_NOT_NULL)
        stringBuffer.append(quoteRequestData.TIMEFRAME)
        stringBuffer.append(@sqlTypeStrings.BLOB_NOT_NULL)
        stringBuffer.append(quoteRequestData.COMMENTS)
        stringBuffer.append(@sqlTypeStrings.BLOB_NOT_NULL)
        stringBuffer.append(EntryData.getInstance().TIMECREATED)
        stringBuffer.append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL)
        stringBuffer.append(EntryData.getInstance().LASTMODIFIED)
        stringBuffer.append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL)
        stringBuffer.append(@sqlStrings.PRIMARY_KEY)
        stringBuffer.append(quoteRequestData.ID)
        stringBuffer.append(@sqlStrings.END_)
        return stringBuffer.to_s
    end
    

    def createTable()
        return super(self.createTableStatement())
    end
    

    def dropTable()
        result = String.new(super())
        return result
    end
    

    def update(userName, updatedValues)
        self.class.superclass.instance_method(:updateWhere).bind(self).call(UserData::USERNAME, userName, updatedValues)
    end
end

require "java/util/HashMap"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/business/entry/EntryData"
require "org/allbinary/business/init/db/UserDbInitInfo"
require "org/allbinary/business/quoterequest/QuoteRequestData"
require "org/allbinary/business/user/UserData"
require "org/allbinary/business/user/quoterequest/QuoteRequest"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"

