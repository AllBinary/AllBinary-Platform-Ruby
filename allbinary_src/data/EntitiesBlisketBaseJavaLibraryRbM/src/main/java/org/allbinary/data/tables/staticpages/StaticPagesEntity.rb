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
# package org.allbinary.data.tables.staticpages

require "org/allbinary/logic/communication/sql/AbSqlBean"
require "org/allbinary/data/tables/staticpages/StaticPagesEntityInterface"

class StaticPagesEntity < AbSqlBean
    include StaticPagesEntityInterface
    attr_accessor :logUtil, :basicItemData, :TABLENAME

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @basicItemData = BasicItemData.getInstance()
        @TABLENAME = "staticpages"
    end
    

    def initialize()
        super(StaticPagesDbInitInfo.new())
        initialize_fields
        self.setTableName(@TABLENAME)
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
    

    def getFile(store, keywords)
        whereHashMap = StdUtil.getInstance().createHashMap()
        whereHashMap.put(StoreFrontData.getInstance().NAME, store)
        whereHashMap.put(@basicItemData.KEYWORDS, keywords)
        file = self.class.superclass.instance_method(:getField).bind(self).call(whereHashMap, SearchData::PAGE)
        return file
    end
    

    def delete(keywords)
        self.class.superclass.instance_method(:deleteWhere).bind(self).call(@basicItemData.KEYWORDS, keywords)
    end
    

    def dropTable()
        returnStr = super()
        return returnStr
    end
    

    def update(updatedValues)
        self.class.superclass.instance_method(:updateWhere).bind(self).call(@basicItemData.KEYWORDS, updatedValues.get(@basicItemData.KEYWORDS), updatedValues)
    end
    

    def createTableStatement()
        stringBuffer = StringMaker.new()
        stringBuffer.append(@sqlStrings.CREATE_TABLE).append(@TABLENAME).append(@sqlStrings.START).append(StoreFrontData.getInstance().NAME).append(@sqlTypeStrings.SIXTY_CHAR_COLUMN_NOT_NULL).append(@basicItemData.KEYWORDS).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(SearchData::PAGE).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(@sqlStrings.PRIMARY_KEY).append(StoreFrontData.getInstance().NAME).append(CommonSeps.getInstance().COMMA_SEP).append(@basicItemData.KEYWORDS).append(@sqlStrings.END_)
        return stringBuffer.to_s
    end
    

    def createTable()
        return super(self.createTableStatement())
    end
end

require "java/util/HashMap"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/business/context/modules/storefront/StoreFrontData"
require "org/allbinary/business/init/db/StaticPagesDbInitInfo"
require "org/allbinary/business/user/commerce/inventory/item/BasicItemData"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/control/search/SearchData"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/string/CommonSeps"

