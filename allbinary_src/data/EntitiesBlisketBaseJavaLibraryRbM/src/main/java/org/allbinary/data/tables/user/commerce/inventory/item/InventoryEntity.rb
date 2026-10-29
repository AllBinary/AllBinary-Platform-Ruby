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
# package org.allbinary.data.tables.user.commerce.inventory.item

require "org/allbinary/logic/communication/sql/AbSqlBean"
require "org/allbinary/data/tables/user/commerce/inventory/item/InventoryEntityInterface"

class InventoryEntity < AbSqlBean
    include InventoryEntityInterface
    attr_accessor :logUtil, :basicItemData, :tableName

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @basicItemData = BasicItemData.getInstance()
        @tableName = "basicinventory"
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
            self.class.superclass.instance_method(:deleteWhere).bind(self).call(@basicItemData.ID, value)
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
    def getItems(storeFrontInterface)
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
            @logUtil.putF("Getting Items For: " + storeFrontInterface.getName(), self, "getItems")
        end
        itemVector = BasicArrayListD.new()
        keysAndValues = StdUtil.getInstance().createHashMap()
        itemHashMapVector = self.class.superclass.instance_method(:getRows).bind(self).call(keysAndValues)
        size = itemHashMapVector.size()
        (0...size).each do |i|
            itemHashMap = itemHashMapVector.get(i)
            if itemHashMap != nil
                category = itemHashMap.get(@basicItemData.CATEGORY)
                if !StringValidationUtil.getInstance().isEmpty(category) && category.start_with?(storeFrontInterface.getCategoryPath())
                    itemVector.add(BasicItem.new(itemHashMap))
                end
            end
        end
        return itemVector
    end
    

    # throws MoneyException
    def getItem(id)
        keysAndValues = StdUtil.getInstance().createHashMap()
        keysAndValues.put(@basicItemData.ID, id)
        itemHashMap = self.class.superclass.instance_method(:getRow).bind(self).call(keysAndValues)
        if itemHashMap != nil
            return BasicItem.new(itemHashMap)
        else
            return nil
        end
    end
    

    def getWeight(id)
        return self.class.superclass.instance_method(:getField).bind(self).call(@basicItemData.ID, id, @basicItemData.WEIGHT)
    end
    

    def createTableStatement()
        stringBuffer = StringMaker.new()
        stringBuffer.append(@sqlStrings.CREATE_TABLE)
        stringBuffer.append(@tableName)
        stringBuffer.append(@sqlStrings.START)
        stringBuffer.append(@basicItemData.ID)
        stringBuffer.append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL)
        stringBuffer.append(@basicItemData.NUMBER)
        stringBuffer.append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL)
        stringBuffer.append(@basicItemData.INBASKETS)
        stringBuffer.append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL)
        stringBuffer.append(@basicItemData.WEIGHT)
        stringBuffer.append(" VARCHAR(20) NOT NULL,")
        stringBuffer.append(EntryData.getInstance().ENABLE)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(@basicItemData.NEWORUSED)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(@basicItemData.SUMMARY)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(@basicItemData.DISTRIBUTOR)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(@basicItemData.IDUSEDBYDISTRIBUTOR)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(@basicItemData.PRODUCEDBY)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(@basicItemData.PRODUCTIONDATE)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(@basicItemData.STARTPRODUCTIONDATE)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(@basicItemData.DESCRIPTION)
        stringBuffer.append(@sqlTypeStrings.BLOB_NOT_NULL)
        stringBuffer.append(@basicItemData.KEYWORDS)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(@basicItemData.CATEGORY)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(@basicItemData.TYPE)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(@basicItemData.SMALLIMAGE)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(@basicItemData.MEDIUMIMAGE)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(@basicItemData.LARGEIMAGE)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(EntryData.getInstance().LASTMODIFIED)
        stringBuffer.append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL)
        stringBuffer.append(EntryData.getInstance().TIMECREATED)
        stringBuffer.append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL)
        stringBuffer.append(@basicItemData.PRICE)
        stringBuffer.append(" VARCHAR(20) NOT NULL,")
        stringBuffer.append(@basicItemData.COMMENT)
        stringBuffer.append(@sqlTypeStrings.BLOB_NOT_NULL)
        stringBuffer.append(@basicItemData.CUSTOMS)
        stringBuffer.append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL)
        stringBuffer.append(@basicItemData.DOWNLOADS)
        stringBuffer.append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL)
        stringBuffer.append(@basicItemData.GROUPS)
        stringBuffer.append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL)
        stringBuffer.append(@basicItemData.OPTIONS)
        stringBuffer.append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL)
        stringBuffer.append(@basicItemData.PERMISSIONS)
        stringBuffer.append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL)
        stringBuffer.append(@basicItemData.SPECIALS)
        stringBuffer.append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL)
        stringBuffer.append(@sqlStrings.PRIMARY_KEY)
        stringBuffer.append(@basicItemData.ID)
        stringBuffer.append(@sqlStrings.END_)
        return stringBuffer.to_s
    end
    

    def createTable()
        return super(self.createTableStatement())
    end
    

    def update(updatedValues)
        self.class.superclass.instance_method(:updateWhere).bind(self).call(@basicItemData.ID, updatedValues.get(@basicItemData.ID), updatedValues)
    end
    

    def dropTable()
        return super()
    end
end

require "java/util/HashMap"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/business/context/modules/storefront/StoreFrontInterface"
require "org/allbinary/business/entry/EntryData"
require "org/allbinary/business/init/db/InventoryDbInitInfo"
require "org/allbinary/business/user/commerce/inventory/item/BasicItem"
require "org/allbinary/business/user/commerce/inventory/item/BasicItemData"
require "org/allbinary/business/user/commerce/inventory/item/ItemInterface"
require "org/allbinary/business/user/commerce/money/MoneyException"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringValidationUtil"

