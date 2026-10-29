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
# package org.allbinary.data.tables.log

require "org/allbinary/logic/communication/sql/AbSqlBean"
require "org/allbinary/data/tables/log/LogTableEntityInterface"

class LogTableEntity < AbSqlBean
    include LogTableEntityInterface
    attr_accessor :tableName

    def initialize_fields
        @tableName = "log"
    end
    

    def initialize()
        super(LogDbInitInfo.new())
        initialize_fields
        self.setTableName(@tableName)
    end
    

    def createTableStatement()
        abeHttpRequestInfoData = AbeHttpRequestInfoData.getInstance()
        stringBuffer = StringMaker.new()
        stringBuffer.append(@sqlStrings.CREATE_TABLE).append(@tableName).append(@sqlStrings.START).append(@sqlStrings.ID).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(abeHttpRequestInfoData.HTTP_USER_AGENT).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(abeHttpRequestInfoData.REMOTE_HOST).append(@sqlTypeStrings.MAX_CHAR_COLUMN).append(abeHttpRequestInfoData.REMOTE_ADDRESS).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(abeHttpRequestInfoData.REQUEST_FILE_PATH).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(abeHttpRequestInfoData.REMOTE_PORT).append(@sqlTypeStrings.MAX_INT_UNSIGNED_NOT_NULL).append(EntryData.getInstance().TIMECREATED).append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(@sqlStrings.PRIMARY_KEY).append(@sqlStrings.ID).append(@sqlStrings.END_)
        return stringBuffer.to_s
    end
    

    def createTable()
        return super(self.createTableStatement())
    end
end

require "org/allbinary/business/entry/EntryData"
require "org/allbinary/business/init/db/LogDbInitInfo"
require "org/allbinary/logic/communication/http/request/AbeHttpRequestInfoData"
require "org/allbinary/logic/string/StringMaker"

