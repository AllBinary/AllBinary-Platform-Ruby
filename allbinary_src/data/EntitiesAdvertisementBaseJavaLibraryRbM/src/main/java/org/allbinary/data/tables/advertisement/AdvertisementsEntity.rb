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
# package org.allbinary.data.tables.advertisement

require "org/allbinary/logic/communication/sql/AbSqlBean"
require "org/allbinary/data/tables/advertisement/AdvertisementsEntityInterface"

class AdvertisementsEntity < AbSqlBean
    include AdvertisementsEntityInterface
    attr_accessor :logUtil, :tableName, :_INDEX

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @tableName = "advertisements"
        @_INDEX = "_index"
    end
    

    def initialize()
        super(UserDbInitInfo.new())
        initialize_fields
        self.setTableName(@tableName)
    end
    

    def delete(value)
        begin
            self.class.superclass.instance_method(:deleteWhere).bind(self).call(EntryData.getInstance().ID, value)
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.putF(@commonStrings.SUCCESS, self, @commonStrings.delete)
            end
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, @commonStrings.delete, e)
            end
        end
    end
    

    def get(storeName)
        keysAndValues = StdUtil.getInstance().createHashMap()
        keysAndValues.put(StoreFrontData.getInstance().NAME, storeName)
        hashMapVector = self.class.superclass.instance_method(:getRows).bind(self).call(keysAndValues)
        vector = BasicArrayListD.new()
        size = hashMapVector.size()
        (0...size).each do |index|
            hashMap = hashMapVector.get(index)
        end
        return vector
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def get(storeName, advertismentName)
        keysAndValues = StdUtil.getInstance().createHashMap()
        keysAndValues.put(StoreFrontData.getInstance().NAME, storeName)
        keysAndValues.put(AdvertisementData.getInstance().NAME, advertismentName)
        hashMap = self.class.superclass.instance_method(:getRow).bind(self).call(keysAndValues)
        return nil
    end
    

    def createTableStatement()
        advertisementData = AdvertisementData.getInstance()
        stringBuffer = StringMaker.new()
        stringBuffer.append(@sqlStrings.CREATE_TABLE)
        stringBuffer.append(self.getTableName()).append(@sqlStrings.START).append(advertisementData.NAME).append(@_INDEX).append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(advertisementData.NAME).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(StoreFrontData.getInstance().NAME).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(advertisementData.DESCRIPTION).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(DynamicObjectData::NAME).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(EntryData.getInstance().TIMECREATED).append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(EntryData.getInstance().LASTMODIFIED).append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(@sqlStrings.PRIMARY_KEY).append(advertisementData.NAME).append(@sqlStrings.END_)
        return stringBuffer.to_s
    end
    

    def createTable()
        returnStr = super(self.createTableStatement())
        return returnStr
    end
    

    def update(updatedValues)
        self.class.superclass.instance_method(:updateWhere).bind(self).call(EntryData.getInstance().ID, updatedValues.get(EntryData.getInstance().ID), updatedValues)
    end
    

    def dropTable()
        return super()
    end
end

require "java/util/HashMap"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/business/DynamicObjectData"
require "org/allbinary/business/advertisement/AdvertisementData"
require "org/allbinary/business/advertisement/AdvertisementInterface"
require "org/allbinary/business/context/modules/storefront/StoreFrontData"
require "org/allbinary/business/entry/EntryData"
require "org/allbinary/business/init/db/UserDbInitInfo"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"

