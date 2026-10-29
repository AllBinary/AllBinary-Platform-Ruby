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
# package org.allbinary.data.tables.user.commerce.inventory.item.downloads

require "org/allbinary/logic/communication/sql/AbSqlBean"
require "org/allbinary/data/tables/user/commerce/inventory/item/downloads/DownloadItemsEntityInterface"

class DownloadItemsEntity < AbSqlBean
    include DownloadItemsEntityInterface
    attr_accessor :logUtil, :basicItemData, :tableName

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @basicItemData = BasicItemData.getInstance()
        @tableName = "downloaditems"
    end
    

    def initialize()
        super(InventoryDbInitInfo.new())
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
    

    def delete(value)
        begin
            self.class.superclass.instance_method(:deleteWhere).bind(self).call(DownloadItemData::ID, value)
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.putF(@commonStrings.SUCCESS, self, @commonStrings.delete)
            end
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, @commonStrings.delete, e)
            end
        end
    end
    

    def update(updatedValues)
        self.class.superclass.instance_method(:updateWhere).bind(self).call(DownloadItemData::ID, updatedValues.get(DownloadItemData::ID), updatedValues)
    end
    

    def getForItem(id)
        returnVector = BasicArrayListD.new()
        keysAndValues = StdUtil.getInstance().createHashMap()
        keysAndValues.put(@basicItemData.ID, id)
        vector = self.class.superclass.instance_method(:getRows).bind(self).call(keysAndValues)
        size = vector.size()
        (0...size).each do |index|
            hashMap = vector.get(index)
            returnVector.add(DownloadableItem.new(hashMap))
        end
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
            @logUtil.putF("Found: " + (size).to_s, self, "getForItem")
        end
        return returnVector
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def getForItem(id, downloadItemId)
        returnVector = BasicArrayListD.new()
        keysAndValues = StdUtil.getInstance().createHashMap()
        keysAndValues.put(@basicItemData.ID, id)
        keysAndValues.put(DownloadItemData::ID, downloadItemId)
        vector = self.class.superclass.instance_method(:getRows).bind(self).call(keysAndValues)
        size = vector.size()
        (0...size).each do |index|
            hashMap = vector.get(index)
            returnVector.add(DownloadableItem.new(hashMap))
        end
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
            @logUtil.putF("Found: " + (size).to_s, self, "getForItem")
        end
        return returnVector
    end
    

    def createTableStatement()
        stringBuffer = StringMaker.new()
        stringBuffer.append(@sqlStrings.CREATE_TABLE).append(@tableName).append(@sqlStrings.START).append(DownloadItemData::ID).append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(@basicItemData.ID).append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(EntryData.getInstance().ENABLE).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(DownloadItemData::SPECIAL_NAME).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(DownloadItemData::VERSION).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(DownloadItemData::CHANGES).append(@sqlTypeStrings.BLOB_NOT_NULL).append(DownloadItemData::SYSTEM).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(DownloadItemData::PLATFORM).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(DownloadItemData::LICENSE_FILE).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(DownloadItemData::FILE).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(DownloadItemData::SIZE).append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(DownloadItemData::VALID_TIME).append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(DownloadItemData::RETRIES).append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(EntryData.getInstance().TIMECREATED).append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(EntryData.getInstance().LASTMODIFIED).append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(@sqlStrings.PRIMARY_KEY).append(DownloadItemData::ID).append(@sqlStrings.END_)
        return stringBuffer.to_s
    end
    

    def createTable()
        return super(self.createTableStatement())
    end
    

    def dropTable()
        return super()
    end
end

require "java/util/HashMap"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/business/entry/EntryData"
require "org/allbinary/business/init/db/InventoryDbInitInfo"
require "org/allbinary/business/user/commerce/inventory/item/BasicItemData"
require "org/allbinary/business/user/commerce/inventory/item/download/DownloadItemData"
require "org/allbinary/business/user/commerce/inventory/item/download/DownloadableItem"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"

