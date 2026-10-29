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
# package org.allbinary.data.tables.user.commerce.inventory.order

# require "java/util/ListIterator"
# require "java/util/Set"
require "org/allbinary/logic/communication/sql/AbSqlBean"
require "org/allbinary/data/tables/user/commerce/inventory/order/OrderItemsEntityInterface"

class OrderItemsEntity < AbSqlBean
    include OrderItemsEntityInterface
    attr_accessor :logUtil, :basicItemData, :tableName

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @basicItemData = BasicItemData.getInstance()
        @tableName = "orderitems"
    end
    

    def initialize()
        super(HistoryDbInitInfo.new())
        initialize_fields
        self.setTableName(@tableName)
    end
    

    def insert(userName, order)
        vector = BasicArrayListD.new()
        begin
            basket = order.getBasket()
            items = basket.getIds()
            _ZERO_STRING = TableDataFactory.getInstance().ZERO_STRING
            _EMPTY_STRING = StringUtil.getInstance().EMPTY_STRING
            inventoryEntity = InventoryEntityFactory.getInstance().getInventoryEntityInstance()
            itemsArray = items.toArray()
            itemsSize = itemsArray.length
            (0...itemsSize).each do |i|
                item = itemsArray[i]
                itemInterface = inventoryEntity.getItem(item)
                vector = BasicArrayListD.new()
                vector.add(OrderItemIdGenerator.new().getNext())
                vector.add(order.getId())
                vector.add(TableDataFactory.getInstance().INTEGER_MAX_VALUE_STRING)
                vector.add(userName)
                vector.add(order.getStoreName())
                vector.add(itemInterface.getId())
                vector.add(basket.getNumberOf(item).to_s)
                vector.add(itemInterface.getNewOrUsed())
                vector.add(itemInterface.getSummary())
                vector.add(itemInterface.getDistributor())
                vector.add(itemInterface.getIdUsedByDistributor())
                vector.add(itemInterface.getProducedBy())
                vector.add(itemInterface.getProductionDate())
                vector.add(itemInterface.getStartProductionDate())
                vector.add(itemInterface.getDescription())
                vector.add(itemInterface.getKeywords())
                vector.add(itemInterface.getCategory())
                vector.add(itemInterface.getType())
                vector.add(itemInterface.getSmallImage())
                vector.add(itemInterface.getMediumImage())
                vector.add(itemInterface.getLargeImage())
                vector.add(itemInterface.getWeight())
                vector.add(itemInterface.getPrice().to_s)
                vector.add(itemInterface.getComment())
                vector.add(itemInterface.getCustoms())
                vector.add(itemInterface.getDownloads())
                vector.add(_EMPTY_STRING)
                vector.add(_EMPTY_STRING)
                vector.add(_EMPTY_STRING)
                vector.add(_EMPTY_STRING)
                vector.add(_EMPTY_STRING)
                vector.add(_EMPTY_STRING)
                vector.add(_EMPTY_STRING)
                vector.add(_EMPTY_STRING)
                vector.add(_EMPTY_STRING)
                vector.add(_EMPTY_STRING)
                vector.add(_EMPTY_STRING)
                vector.add(_EMPTY_STRING)
                vector.add(_EMPTY_STRING)
                vector.add(_ZERO_STRING)
                vector.add(_ZERO_STRING)
                vector.add(_ZERO_STRING)
                vector.add(_ZERO_STRING)
                self.insert(vector)
            end
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.putF("Command Success Added: " + (items.size()).to_s, self, INSERT)
            end
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put("Command Failed: " + vector.to_s, self, INSERT, e)
            end
        end
    end
    

    def setStatus(orderId, groupId, status)
        begin
            whereHashMap = StdUtil.getInstance().createHashMap()
            updateHashMap = StdUtil.getInstance().createHashMap()
            whereHashMap.put(OrderData::ID, orderId)
            whereHashMap.put(ShippingMethodData::GROUP, groupId)
            updateHashMap.put(OrderHistoryData::STATUS, status)
            self.class.superclass.instance_method(:updateWhere).bind(self).call(whereHashMap, updateHashMap)
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, "setStatus", e)
            end
        end
    end
    

    def isEverythingShipped(orderId)
        begin
            itemStatusVector = self.class.superclass.instance_method(:getColumnWhere).bind(self).call(OrderHistoryData::STATUS, OrderData::ID, orderId)
            size = itemStatusVector.size()
            (0...size).each do |index|
                status = itemStatusVector.get(index)
                if (status <=> OrderHistoryData::SHIPPED) != 0
                    return false
                end
            end
            return true
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, "isEverythingShipped", e)
            end
            return false
        end
    end
    

    def getBasketReview(orderId)
        begin
            basketReview = BasketReview.new()
            keyValues = StdUtil.getInstance().createHashMap()
            keyValues.put(OrderData::ID, orderId)
            items = self.class.superclass.instance_method(:getRows).bind(self).call(keyValues)
            entryData = EntryData.getInstance()
            if items != nil && items.size() > 0
                _EMPTY_STRING = StringUtil.getInstance().EMPTY_STRING
                itemsArray = items.toArray()
                itemsSize = itemsArray.length
                (0...itemsSize).each do |i|
                    itemHashMap = itemsArray[i]
                    itemHashMap.put(@basicItemData.INBASKETS, _EMPTY_STRING)
                    itemHashMap.put(entryData.ENABLE, _EMPTY_STRING)
                    itemHashMap.put(entryData.TIMECREATED, _EMPTY_STRING)
                    itemHashMap.put(entryData.LASTMODIFIED, _EMPTY_STRING)
                    itemHashMap.put(@basicItemData.GROUPS, _EMPTY_STRING)
                    itemHashMap.put(@basicItemData.OPTIONS, _EMPTY_STRING)
                    itemHashMap.put(@basicItemData.PERMISSIONS, _EMPTY_STRING)
                    itemHashMap.put(@basicItemData.SPECIALS, _EMPTY_STRING)
                    item = Item.new(itemHashMap)
                    basketReview.addItem(item)
                end
                return basketReview
            else
                return nil
            end
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, "getBasketReview", e)
            end
            return nil
        end
    end
    

    def createTableStatement()
        entryData = EntryData.getInstance()
        stringBuffer = StringMaker.new()
        stringBuffer.append("CREATE TABLE ")
        stringBuffer.append(@tableName)
        stringBuffer.append(" (")
        stringBuffer.append(entryData.ID)
        stringBuffer.append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL)
        stringBuffer.append(OrderData::ID)
        stringBuffer.append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL)
        stringBuffer.append(ShippingMethodData::GROUP)
        stringBuffer.append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL)
        stringBuffer.append(UserData::USERNAME)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(StoreFrontData.getInstance().NAME)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(@basicItemData.ID)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(@basicItemData.NUMBER)
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
        stringBuffer.append(@basicItemData.WEIGHT)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(@basicItemData.PRICE)
        stringBuffer.append(" VARCHAR(20) NOT NULL,")
        stringBuffer.append(@basicItemData.COMMENT)
        stringBuffer.append(@sqlTypeStrings.BLOB_NOT_NULL)
        stringBuffer.append(@basicItemData.CUSTOMS)
        stringBuffer.append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL)
        stringBuffer.append(@basicItemData.DOWNLOADS)
        stringBuffer.append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL)
        stringBuffer.append(ShippingMethodData::COST)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(OrderHistoryData::TAX)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(ShippingAddressData::NAME)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(ShippingAddressData::STREET)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(ShippingAddressData::CITY)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(ShippingAddressData::STATE)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(ShippingAddressData::CODE)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(ShippingAddressData::COUNTRY)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(ShippingMethodData::NAME)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(entryData.SPECIAL)
        stringBuffer.append(" VARCHAR(255) ,")
        stringBuffer.append(OrderHistoryData::STATUS)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(OrderHistoryData::CANCELINFO)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(OrderHistoryData::CANCELTYPE)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(OrderHistoryData::SHIPPEDDATE)
        stringBuffer.append(" BIGINT(19) UNSIGNED ,")
        stringBuffer.append(OrderHistoryData::ORDERDATE)
        stringBuffer.append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL)
        stringBuffer.append(OrderHistoryData::TRANSDATE)
        stringBuffer.append(" BIGINT(19) UNSIGNED ,")
        stringBuffer.append(OrderHistoryData::CANCELDATE)
        stringBuffer.append(" BIGINT(19) UNSIGNED ,")
        stringBuffer.append("PRIMARY KEY(")
        stringBuffer.append(entryData.ID)
        stringBuffer.append(") )")
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
require "org/allbinary/business/context/modules/storefront/StoreFrontData"
require "org/allbinary/business/entry/EntryData"
require "org/allbinary/business/init/db/HistoryDbInitInfo"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/business/user/UserData"
require "org/allbinary/business/user/address/ShippingAddressData"
require "org/allbinary/business/user/commerce/inventory/basket/BasketInterface"
require "org/allbinary/business/user/commerce/inventory/basket/BasketReview"
require "org/allbinary/business/user/commerce/inventory/item/BasicItemData"
require "org/allbinary/business/user/commerce/inventory/item/Item"
require "org/allbinary/business/user/commerce/inventory/item/ItemInterface"
require "org/allbinary/business/user/commerce/inventory/order/OrderData"
require "org/allbinary/business/user/commerce/inventory/order/OrderHistoryData"
require "org/allbinary/business/user/commerce/inventory/order/OrderInterface"
require "org/allbinary/business/user/commerce/shipping/ShippingMethodData"
require "org/allbinary/data/generator/OrderItemIdGenerator"
require "org/allbinary/data/tables/TableDataFactory"
require "org/allbinary/data/tables/user/commerce/inventory/item/InventoryEntity"
require "org/allbinary/data/tables/user/commerce/inventory/item/InventoryEntityFactory"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"

