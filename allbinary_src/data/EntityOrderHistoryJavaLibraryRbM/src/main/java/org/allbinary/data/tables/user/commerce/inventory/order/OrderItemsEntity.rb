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

require "java/lang/JavaOverload"
# require "java/util/ListIterator"
# require "java/util/Set"
require "org/allbinary/logic/communication/sql/AbSqlBean"
require "org/allbinary/data/tables/user/commerce/inventory/order/OrderItemsEntityInterface"

module ::Org; module Allbinary; module DataPackage; module Tables; module User; module Commerce; module Inventory; module Order

class OrderItemsEntity < ::Org::Allbinary::Logic::Communication::Sql::AbSqlBean
    include OrderItemsEntityInterface
    attr_accessor :logUtil, :basicItemData, :tableName

    def jfields_org_allbinary_data_tables_user_commerce_inventory_order_OrderItemsEntity
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @basicItemData = ::Org::Allbinary::Business::User::Commerce::Inventory::Item::BasicItemData.getInstance()
        @tableName = "orderitems"
    end
    

    def initialize()
        super(::Org::Allbinary::Business::Init::Db::HistoryDbInitInfo.new())
        jfields_org_allbinary_data_tables_user_commerce_inventory_order_OrderItemsEntity
        self.setTableName(@tableName)
    end
    

    def insert_j2(userName, order)
        vector = ::Org::Allbinary::Util::BasicArrayListD.new()
        begin
            basket = order.getBasket()
            items = basket.getIds()
            _ZERO_STRING = ::Org::Allbinary::DataPackage::Tables::TableDataFactory.getInstance().ZERO_STRING
            _EMPTY_STRING = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
            inventoryEntity = ::Org::Allbinary::DataPackage::Tables::User::Commerce::Inventory::Item::InventoryEntityFactory.getInstance().getInventoryEntityInstance()
            itemsArray = items.toArray()
            itemsSize = itemsArray.length
            (0...itemsSize).each do |i|
                item = itemsArray[i]
                itemInterface = inventoryEntity.getItem(item)
                vector = ::Org::Allbinary::Util::BasicArrayListD.new()
                vector.add(::Org::Allbinary::DataPackage::Generator::OrderItemIdGenerator.new().getNext())
                vector.add(order.getId())
                vector.add(::Org::Allbinary::DataPackage::Tables::TableDataFactory.getInstance().INTEGER_MAX_VALUE_STRING)
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
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.putF("Command Success Added: " + (items.size()).to_s, self, INSERT)
            end
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put("Command Failed: " + vector.to_s, self, INSERT, e)
            end
        end
    end
    

    def setStatus(orderId, groupId, status)
        begin
            whereHashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
            updateHashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
            whereHashMap.put(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderData::ID, orderId)
            whereHashMap.put(::Org::Allbinary::Business::User::Commerce::Shipping::ShippingMethodData::GROUP, groupId)
            updateHashMap.put(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::STATUS, status)
            OrderItemsEntity.superclass.java_super_method(:updateWhere, 2).bind(self).call(whereHashMap, updateHashMap)
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, "setStatus", e)
            end
        end
    end
    java_overload :setStatus, 3
    

    def isEverythingShipped(orderId)
        begin
            itemStatusVector = OrderItemsEntity.superclass.java_super_method(:getColumnWhere, 3).bind(self).call(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::STATUS, ::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderData::ID, orderId)
            size = itemStatusVector.size()
            (0...size).each do |index|
                status = itemStatusVector.get(index)
                if (status <=> ::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::SHIPPED) != 0
                    return false
                end
            end
            return true
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, "isEverythingShipped", e)
            end
            return false
        end
    end
    java_overload :isEverythingShipped, 1
    

    def getBasketReview(orderId)
        begin
            basketReview = ::Org::Allbinary::Business::User::Commerce::Inventory::Basket::BasketReview.new()
            keyValues = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
            keyValues.put(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderData::ID, orderId)
            items = OrderItemsEntity.superclass.java_super_method(:getRows, 1).bind(self).call(keyValues)
            entryData = ::Org::Allbinary::Business::Entry::EntryData.getInstance()
            if items != nil && items.size() > 0
                _EMPTY_STRING = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
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
                    item = ::Org::Allbinary::Business::User::Commerce::Inventory::Item::Item.new(itemHashMap)
                    basketReview.addItem(item)
                end
                return basketReview
            else
                return nil
            end
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, "getBasketReview", e)
            end
            return nil
        end
    end
    java_overload :getBasketReview, 1
    

    def createTableStatement()
        entryData = ::Org::Allbinary::Business::Entry::EntryData.getInstance()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append("CREATE TABLE ")
        stringBuffer.append(@tableName)
        stringBuffer.append(" (")
        stringBuffer.append(entryData.ID)
        stringBuffer.append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL)
        stringBuffer.append(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderData::ID)
        stringBuffer.append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL)
        stringBuffer.append(::Org::Allbinary::Business::User::Commerce::Shipping::ShippingMethodData::GROUP)
        stringBuffer.append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL)
        stringBuffer.append(::Org::Allbinary::Business::User::UserData::USERNAME)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontData.getInstance().NAME)
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
        stringBuffer.append(::Org::Allbinary::Business::User::Commerce::Shipping::ShippingMethodData::COST)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::TAX)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(::Org::Allbinary::Business::User::Address::ShippingAddressData::NAME)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(::Org::Allbinary::Business::User::Address::ShippingAddressData::STREET)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(::Org::Allbinary::Business::User::Address::ShippingAddressData::CITY)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(::Org::Allbinary::Business::User::Address::ShippingAddressData::STATE)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(::Org::Allbinary::Business::User::Address::ShippingAddressData::CODE)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(::Org::Allbinary::Business::User::Address::ShippingAddressData::COUNTRY)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(::Org::Allbinary::Business::User::Commerce::Shipping::ShippingMethodData::NAME)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(entryData.SPECIAL)
        stringBuffer.append(" VARCHAR(255) ,")
        stringBuffer.append(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::STATUS)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::CANCELINFO)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::CANCELTYPE)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::SHIPPEDDATE)
        stringBuffer.append(" BIGINT(19) UNSIGNED ,")
        stringBuffer.append(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::ORDERDATE)
        stringBuffer.append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL)
        stringBuffer.append(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::TRANSDATE)
        stringBuffer.append(" BIGINT(19) UNSIGNED ,")
        stringBuffer.append(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::CANCELDATE)
        stringBuffer.append(" BIGINT(19) UNSIGNED ,")
        stringBuffer.append("PRIMARY KEY(")
        stringBuffer.append(entryData.ID)
        stringBuffer.append(") )")
        return stringBuffer.to_s
    end
    java_overload :createTableStatement, 0
    

    def createTable()
        return OrderItemsEntity.superclass.java_super_method(:createTable, 1).bind(self).call(self.createTableStatement())
    end
    java_overload :createTable, 0
    

    def dropTable()
        return OrderItemsEntity.superclass.java_super_method(:dropTable, 0).bind(self).call()
    end
    java_overload :dropTable, 0
    

    def insert_j1(values)
        OrderItemsEntity.superclass.java_super_method(:insert, 1).bind(self).call(values)
    end

    def insert(*java_overload_args)
        return insert_j2(*java_overload_args) if java_overload_args.length == 2
        return insert_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method insert takes #{java_overload_args.length} arguments"
    end
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontData, "org/allbinary/business/context/modules/storefront/StoreFrontData" unless const_defined?(:StoreFrontData, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module Entry; autoload :EntryData, "org/allbinary/business/entry/EntryData" unless const_defined?(:EntryData, false); end; end; end; end
module ::Org; module Allbinary; module Business; module Init; module Db; autoload :HistoryDbInitInfo, "org/allbinary/business/init/db/HistoryDbInitInfo" unless const_defined?(:HistoryDbInitInfo, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Business; module User; autoload :UserData, "org/allbinary/business/user/UserData" unless const_defined?(:UserData, false); end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Address; autoload :ShippingAddressData, "org/allbinary/business/user/address/ShippingAddressData" unless const_defined?(:ShippingAddressData, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Basket; autoload :BasketInterface, "org/allbinary/business/user/commerce/inventory/basket/BasketInterface" unless const_defined?(:BasketInterface, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Basket; autoload :BasketReview, "org/allbinary/business/user/commerce/inventory/basket/BasketReview" unless const_defined?(:BasketReview, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Item; autoload :BasicItemData, "org/allbinary/business/user/commerce/inventory/item/BasicItemData" unless const_defined?(:BasicItemData, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Item; autoload :Item, "org/allbinary/business/user/commerce/inventory/item/Item" unless const_defined?(:Item, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Item; autoload :ItemInterface, "org/allbinary/business/user/commerce/inventory/item/ItemInterface" unless const_defined?(:ItemInterface, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Order; autoload :OrderData, "org/allbinary/business/user/commerce/inventory/order/OrderData" unless const_defined?(:OrderData, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Order; autoload :OrderHistoryData, "org/allbinary/business/user/commerce/inventory/order/OrderHistoryData" unless const_defined?(:OrderHistoryData, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Order; autoload :OrderInterface, "org/allbinary/business/user/commerce/inventory/order/OrderInterface" unless const_defined?(:OrderInterface, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Shipping; autoload :ShippingMethodData, "org/allbinary/business/user/commerce/shipping/ShippingMethodData" unless const_defined?(:ShippingMethodData, false); end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Generator; autoload :OrderItemIdGenerator, "org/allbinary/data/generator/OrderItemIdGenerator" unless const_defined?(:OrderItemIdGenerator, false); end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; autoload :TableDataFactory, "org/allbinary/data/tables/TableDataFactory" unless const_defined?(:TableDataFactory, false); end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module User; module Commerce; module Inventory; module Item; autoload :InventoryEntity, "org/allbinary/data/tables/user/commerce/inventory/item/InventoryEntity" unless const_defined?(:InventoryEntity, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module User; module Commerce; module Inventory; module Item; autoload :InventoryEntityFactory, "org/allbinary/data/tables/user/commerce/inventory/item/InventoryEntityFactory" unless const_defined?(:InventoryEntityFactory, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end; end; end; end; end; end; end

