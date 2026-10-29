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
# package org.allbinary.data.tables.advertisement.areas

require "org/allbinary/logic/communication/sql/AbSqlBean"
require "org/allbinary/data/tables/advertisement/areas/AdvertisementAreasEntityInterface"

class AdvertisementAreasEntity < AbSqlBean
    include AdvertisementAreasEntityInterface
    attr_accessor :logUtil, :tableName

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @tableName = "advertisements"
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
    

    # throws Exception
    def get(storeName)
        keysAndValues = StdUtil.getInstance().createHashMap()
        keysAndValues.put(StoreFrontData.getInstance().NAME, storeName)
        hashMapVector = self.class.superclass.instance_method(:getRows).bind(self).call(keysAndValues)
        vector = BasicArrayListD.new()
        size = hashMapVector.size()
        (0...size).each do |index|
            hashMap = hashMapVector.get(index)
            if hashMap != nil
                vector.add(AdvertisementArea.new(hashMap))
            end
        end
        return vector
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def get(storeName, advertisementAreaName)
        keysAndValues = StdUtil.getInstance().createHashMap()
        keysAndValues.put(StoreFrontData.getInstance().NAME, storeName)
        keysAndValues.put(AdvertisementAreaData.getInstance().NAME, advertisementAreaName)
        hashMap = self.class.superclass.instance_method(:getRow).bind(self).call(keysAndValues)
        if hashMap != nil
            return AdvertisementArea.new(hashMap)
        else
            return nil
        end
    end
    

    def createTableStatement()
        advertisementAreaData = AdvertisementAreaData.getInstance()
        stringBuffer = StringMaker.new()
        stringBuffer.append(@sqlStrings.CREATE_TABLE)
        stringBuffer.append(self.getTableName())
        stringBuffer.append(@sqlStrings.START)
        stringBuffer.append(advertisementAreaData.NAME).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(StoreFrontData.getInstance().NAME).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(advertisementAreaData.DESCRIPTION).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(advertisementAreaData.CONSTRAINTS).append(@sqlTypeStrings.BLOB_NOT_NULL).append(AdvertisementCampaignData.getInstance().NAME).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(EntryData.getInstance().TIMECREATED).append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(EntryData.getInstance().LASTMODIFIED).append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(@sqlStrings.PRIMARY_KEY).append(advertisementAreaData.NAME).append(@sqlStrings.END_)
        return stringBuffer.to_s
    end
    

    def createTable()
        returnStr = super(self.createTableStatement())
        return returnStr
    end
    

    def update(updatedValues)
        self.class.superclass.instance_method(:updateWhere).bind(self).call(AdvertisementAreaData.getInstance().NAME, updatedValues.get(AdvertisementAreaData.getInstance().NAME), updatedValues)
    end
    

    def dropTable()
        return super()
    end
end

require "java/util/HashMap"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/business/advertisement/area/AdvertisementArea"
require "org/allbinary/business/advertisement/area/AdvertisementAreaData"
require "org/allbinary/business/advertisement/area/AdvertisementAreaInterface"
require "org/allbinary/business/advertisement/campaign/AdvertisementCampaignData"
require "org/allbinary/business/context/modules/storefront/StoreFrontData"
require "org/allbinary/business/entry/EntryData"
require "org/allbinary/business/init/db/UserDbInitInfo"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"

