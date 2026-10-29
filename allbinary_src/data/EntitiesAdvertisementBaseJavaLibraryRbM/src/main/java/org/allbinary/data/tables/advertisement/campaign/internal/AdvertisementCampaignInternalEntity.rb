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
# package org.allbinary.data.tables.advertisement.campaign.internal

require "org/allbinary/logic/communication/sql/AbSqlBean"
require "org/allbinary/data/tables/advertisement/campaign/internal/AdvertisementCampaignInternalEntityInterface"

class AdvertisementCampaignInternalEntity < AbSqlBean
    include AdvertisementCampaignInternalEntityInterface
    attr_accessor :logUtil, :tableName

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @tableName = "adCampaignInternal"
    end
    

    def initialize()
        super(UserDbInitInfo.new())
        initialize_fields
        self.setTableName(@tableName)
    end
    

    def delete(value)
        begin
            self.class.superclass.instance_method(:deleteWhere).bind(self).call(StoreFrontData.getInstance().NAME, value)
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.putF(@commonStrings.SUCCESS, self, @commonStrings.delete)
            end
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, @commonStrings.delete, e)
            end
        end
    end
    

    def getCampaignsInStore(storeName)
        keysAndValues = StdUtil.getInstance().createHashMap()
        keysAndValues.put(StoreFrontData.getInstance().NAME, storeName)
        hashMapVector = self.class.superclass.instance_method(:getRows).bind(self).call(keysAndValues)
        vector = BasicArrayListD.new()
        size = hashMapVector.size()
        (0...size).each do |index|
            hashMap = hashMapVector.get(index)
            if hashMap != nil
                vector.add(AdvertisementCampaign.new(hashMap))
            end
        end
        return AdvertisementCampaigns.new(vector)
    end
    

    def get(storeName, name)
        keysAndValues = StdUtil.getInstance().createHashMap()
        keysAndValues.put(StoreFrontData.getInstance().NAME, storeName)
        keysAndValues.put(AdvertisementCampaignData.getInstance().NAME, name)
        hashMap = self.class.superclass.instance_method(:getRow).bind(self).call(keysAndValues)
        if hashMap != nil
            return AdvertisementCampaign.new(hashMap)
        else
            return nil
        end
    end
    

    def update(updatedValues)
        self.class.superclass.instance_method(:updateWhere).bind(self).call(EntryData.getInstance().getInstance().ID, updatedValues.get(EntryData.getInstance().getInstance().ID), updatedValues)
    end
    

    def createTableStatement()
        entryData = EntryData.getInstance().getInstance()
        advertisementCampaignData = AdvertisementCampaignData.getInstance()
        stringBuffer = StringMaker.new()
        stringBuffer.append(@sqlStrings.CREATE_TABLE)
        stringBuffer.append(self.getTableName())
        stringBuffer.append(@sqlStrings.START)
        stringBuffer.append(entryData.ID).append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(StoreFrontData.getInstance().NAME).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(advertisementCampaignData.NAME).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(advertisementCampaignData.DESCRIPTION).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(advertisementCampaignData.CONFIG).append(@sqlTypeStrings.BLOB_NOT_NULL).append(TimeData.getInstance().START).append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(TimeData.getInstance().END_).append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(entryData.TIMECREATED).append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(entryData.LASTMODIFIED).append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(@sqlStrings.PRIMARY_KEY).append(entryData.ID).append(@sqlStrings.END_)
        return stringBuffer.to_s
    end
    

    def createTable()
        returnStr = super(self.createTableStatement())
        return returnStr
    end
    

    def dropTable()
        return super()
    end
end

require "java/util/HashMap"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/business/advertisement/campaign/AdvertisementCampaign"
require "org/allbinary/business/advertisement/campaign/AdvertisementCampaignData"
require "org/allbinary/business/advertisement/campaign/AdvertisementCampaignInterface"
require "org/allbinary/business/advertisement/campaign/AdvertisementCampaigns"
require "org/allbinary/business/advertisement/campaign/AdvertisementCampaignsInterface"
require "org/allbinary/business/context/modules/storefront/StoreFrontData"
require "org/allbinary/business/entry/EntryData"
require "org/allbinary/business/init/db/UserDbInitInfo"
require "org/allbinary/business/time/TimeData"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"

