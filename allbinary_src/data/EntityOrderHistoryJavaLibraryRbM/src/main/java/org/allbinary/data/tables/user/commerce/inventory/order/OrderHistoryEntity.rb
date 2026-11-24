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
require "java/lang/JavaClass"
# require "java/util/Random"
require "org/allbinary/logic/communication/sql/AbSqlBean"
require "org/allbinary/data/tables/user/commerce/inventory/order/OrderHistoryEntityInterface"

module ::Org; module Allbinary; module DataPackage; module Tables; module User; module Commerce; module Inventory; module Order

class OrderHistoryEntity < ::Org::Allbinary::Logic::Communication::Sql::AbSqlBean
    include OrderHistoryEntityInterface
    attr_accessor :logUtil, :tableName

    def jfields_org_allbinary_data_tables_user_commerce_inventory_order_OrderHistoryEntity
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @tableName = "orderhistory"
    end
    

    def initialize()
        super(::Org::Allbinary::Business::Init::Db::HistoryDbInitInfo.new())
        jfields_org_allbinary_data_tables_user_commerce_inventory_order_OrderHistoryEntity
        self.setTableName(@tableName)
    end
    

    def insert_j2(userName, order)
        vector = ::Org::Allbinary::Util::BasicArrayListD.new()
        begin
            paymentInterface = ::Org::Allbinary::DataPackage::Tables::User::Commerce::Money::Payment::PaymentEntity.new().getDefault(userName)
            billingAddress = ::Org::Allbinary::DataPackage::Tables::User::Address::Billing::BillingAddressesEntity.new(userName).getDefault()
            shippingAddress = ::Org::Allbinary::DataPackage::Tables::User::Address::Shipping::ShippingAddressesEntity.new(userName).getDefault()
            abeClientInformation = ::Org::Allbinary::Logic::System::Security::Licensing::ServiceClientInformationInterfaceFactory.getInstance()
            storeFrontInterface = ::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontFactory.getInstance(order.getStoreName())
            shippingInterface = ::Org::Allbinary::Business::User::Commerce::Shipping::ShippingMethods.new(abeClientInformation, storeFrontInterface).getShippingInterface(order.getShippingMethod())
            shippingCost = shippingInterface.getCost(order)
            basketInterface = order.getBasket()
            subTotal = basketInterface.getSubTotal()
            taxRate = ::Org::Allbinary::Business::User::Commerce::Money::Tax::TaxFactory.getInstance().getInstance(abeClientInformation, storeFrontInterface).getTaxRate(shippingAddress, storeFrontInterface)
            tax = ::Org::Allbinary::Business::User::Commerce::Money::Money.new()
            total = ::Org::Allbinary::Business::User::Commerce::Money::Money.new()
            total.add(shippingCost.to_s)
            total.add(subTotal.to_s)
            tax.add(total.to_s)
            tax.multiply(taxRate)
            total.add(tax.to_s)
            empty = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
            vector.add(::Org::Allbinary::DataPackage::Generator::OrderHistoryIdGenerator.new().getNext())
            _ZERO = ::Org::Allbinary::DataPackage::Tables::TableDataFactory.getInstance().ZERO_STRING
            vector.add(order.getId())
            vector.add(userName)
            vector.add(order.getStoreName())
            calendar = ::Java::Util::Calendar.getInstance()
            time = String.new(calendar.getTimeInMillis().to_s)
            vector.add(_ZERO)
            vector.add(time)
            vector.add(_ZERO)
            vector.add(_ZERO)
            vector.add(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::PREPROCESSING)
            vector.add(order.getPaymentMethod())
            if paymentInterface != nil
                vector.add(paymentInterface.getName())
                vector.add(paymentInterface.getType())
                vector.add(paymentInterface.getExpiration())
                random = Random.new().nextInt(::Org::Allbinary::Logic::ControlPackage::Crypt::SuperCrypt::KEYMAX)
                vector.add(::Org::Allbinary::Logic::ControlPackage::Crypt::SuperCrypt.new(random).encrypt(paymentInterface.getNumber()))
                vector.add(random.to_s)
            else
                vector.add(empty)
                vector.add(empty)
                vector.add(empty)
                vector.add(empty)
                vector.add(_ZERO)
            end
            if billingAddress != nil
                vector.add(billingAddress.getName())
                vector.add(billingAddress.getStreet())
                vector.add(billingAddress.getCity())
                vector.add(billingAddress.getState())
                vector.add(billingAddress.getCode())
                vector.add(billingAddress.getCountry())
            else
                vector.add(empty)
                vector.add(empty)
                vector.add(empty)
                vector.add(empty)
                vector.add(empty)
                vector.add(empty)
            end
            if shippingAddress != nil
                vector.add(shippingAddress.getName())
                vector.add(shippingAddress.getStreet())
                vector.add(shippingAddress.getCity())
                vector.add(shippingAddress.getState())
                vector.add(shippingAddress.getCode())
                vector.add(shippingAddress.getCountry())
            else
                vector.add(empty)
                vector.add(empty)
                vector.add(empty)
                vector.add(empty)
                vector.add(empty)
                vector.add(empty)
            end
            vector.add(order.getShippingMethod())
            vector.add(subTotal.to_s)
            vector.add(shippingCost.to_s)
            vector.add(tax.to_s)
            vector.add(total.to_s)
            vector.add(order.getSpecial())
            vector.add(order.getUserComments())
            vector.add(order.getUserCancelComments())
            vector.add(order.getStoreComments())
            vector.add(order.getStoreCancelComments())
            self.insert(vector)
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.putF(@commonStrings.SUCCESS, self, INSERT)
            end
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put("Command Failed: " + (vector).to_s, self, INSERT, e)
            end
        end
    end
    

    def insert_j1(values)
        begin
            OrderHistoryEntity.superclass.java_super_method(:insert, 1).bind(self).call(values)
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.putF(@commonStrings.SUCCESS, self, INSERT)
            end
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, INSERT, e)
            end
        end
    end

    def insert(*java_overload_args)
        return insert_j2(*java_overload_args) if java_overload_args.length == 2
        return insert_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method insert takes #{java_overload_args.length} arguments"
    end
    

    def setStatus(orderId, status)
        begin
            calendar = ::Java::Util::Calendar.getInstance()
            time = String.new(calendar.getTimeInMillis().to_s)
            updateHashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
            updateHashMap.put(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::STATUS, status)
            if (status <=> ::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::CANCELLED) == 0
                updateHashMap.put(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::CANCELDATE, time)
            elsif (status <=> ::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::SHIPPED) == 0
                updateHashMap.put(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::SHIPPEDDATE, time)
            end
            OrderHistoryEntity.superclass.java_super_method(:updateWhere, 3).bind(self).call(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderData::ID, orderId, updateHashMap)
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, "setStatus", e)
            end
        end
    end
    java_overload :setStatus, 2
    

    def setPaymentMethod(orderId, paymentMethod)
        begin
            calendar = ::Java::Util::Calendar.getInstance()
            time = String.new(calendar.getTimeInMillis().to_s)
            updateHashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
            updateHashMap.put(::Org::Allbinary::Business::User::Commerce::Money::Payment::PaymentData::METHOD, paymentMethod)
            updateHashMap.put(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::TRANSDATE, time)
            OrderHistoryEntity.superclass.java_super_method(:updateWhere, 3).bind(self).call(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderData::ID, orderId, updateHashMap)
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, "setPaymentMethod", e)
            end
        end
    end
    java_overload :setPaymentMethod, 2
    

    # throws Exception
    def getStoreOrders(storeFrontInterface)
        orderReviewVector = ::Org::Allbinary::Util::BasicArrayListD.new()
        whereHashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
        whereHashMap.put(::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontData.getInstance().NAME, storeFrontInterface.getName())
        orderHashMapVector = OrderHistoryEntity.superclass.java_super_method(:getRows, 1).bind(self).call(whereHashMap)
        size = orderHashMapVector.size()
        (0...size).each do |i|
            orderReviewHashMap = orderHashMapVector.get(i)
            orderReview = ::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistory.new(::Org::Allbinary::Business::User::Commerce::Inventory::Basket::Basket.new(), orderReviewHashMap)
            orderReviewVector.add(orderReview)
        end
        return orderReviewVector
    end
    java_overload :getStoreOrders, 1
    

    # throws Exception
    def getOrders_j1(userName)
        orderReviewVector = ::Org::Allbinary::Util::BasicArrayListD.new()
        whereHashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
        whereHashMap.put(::Org::Allbinary::Business::User::UserData::USERNAME, userName)
        orderHashMapVector = OrderHistoryEntity.superclass.java_super_method(:getRows, 1).bind(self).call(whereHashMap)
        size = orderHashMapVector.size()
        (0...size).each do |index|
            orderReviewHashMap = orderHashMapVector.get(index)
            orderReview = ::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistory.new(::Org::Allbinary::Business::User::Commerce::Inventory::Basket::Basket.new(), orderReviewHashMap)
            orderReviewVector.add(orderReview)
        end
        return orderReviewVector
    end
    

    # throws Exception
    def getOrders_j3(status, fromDate, toDate)
        orderReviewVector = ::Org::Allbinary::Util::BasicArrayListD.new()
        whereHashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
        whereHashMap.put(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::STATUS, status)
        orderHashMapVector = OrderHistoryEntity.superclass.java_super_method(:getRowsWhereBetween, 4).bind(self).call(whereHashMap, ::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::ORDERDATE, fromDate, toDate)
        size = orderHashMapVector.size()
        (0...size).each do |index|
            orderReviewHashMap = orderHashMapVector.get(index)
            orderReview = ::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistory.new(::Org::Allbinary::Business::User::Commerce::Inventory::Basket::Basket.new(), orderReviewHashMap)
            orderReviewVector.add(orderReview)
        end
        return orderReviewVector
    end
    

    # throws Exception
    def getOrders_j2(fromDate, toDate)
        orderReviewVector = ::Org::Allbinary::Util::BasicArrayListD.new()
        orderHashMapVector = OrderHistoryEntity.superclass.java_super_method(:getRowsWhereBetween, 3).bind(self).call(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::ORDERDATE, fromDate, toDate)
        size = orderHashMapVector.size()
        (0...size).each do |index|
            orderReviewHashMap = orderHashMapVector.get(index)
            orderReview = ::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistory.new(::Org::Allbinary::Business::User::Commerce::Inventory::Basket::Basket.new(), orderReviewHashMap)
            orderReviewVector.add(orderReview)
        end
        return orderReviewVector
    end

    def getOrders(*java_overload_args)
        return getOrders_j1(*java_overload_args) if java_overload_args.length == 1
        return getOrders_j3(*java_overload_args) if java_overload_args.length == 3
        return getOrders_j2(*java_overload_args) if java_overload_args.length == 2
        raise ArgumentError, "No method getOrders takes #{java_overload_args.length} arguments"
    end
    

    # throws Exception
    def getOrder(id)
        whereHashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
        whereHashMap.put(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderData::ID, id)
        orderReviewHashMap = OrderHistoryEntity.superclass.java_super_method(:getRow, 1).bind(self).call(whereHashMap)
        if orderReviewHashMap != nil
            orderHistory = ::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistory.new(::Org::Allbinary::Business::User::Commerce::Inventory::Basket::Basket.new(), orderReviewHashMap)
            return orderHistory
        else
            return nil
        end
    end
    java_overload :getOrder, 1
    

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
        stringBuffer.append(::Org::Allbinary::Business::User::UserData::USERNAME)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontData.getInstance().NAME)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::SHIPPEDDATE)
        stringBuffer.append(" BIGINT(19) UNSIGNED ,")
        stringBuffer.append(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::ORDERDATE)
        stringBuffer.append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL)
        stringBuffer.append(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::TRANSDATE)
        stringBuffer.append(" BIGINT(19) UNSIGNED ,")
        stringBuffer.append(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::CANCELDATE)
        stringBuffer.append(" BIGINT(19) UNSIGNED ,")
        stringBuffer.append(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::STATUS)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(::Org::Allbinary::Business::User::Commerce::Money::Payment::PaymentData::METHOD)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(::Org::Allbinary::Business::User::Commerce::Money::Payment::PaymentData::NAME)
        stringBuffer.append(" VARCHAR(255) ,")
        stringBuffer.append(::Org::Allbinary::Business::User::Commerce::Money::Payment::PaymentData::TYPE)
        stringBuffer.append(" VARCHAR(255) ,")
        stringBuffer.append(::Org::Allbinary::Business::User::Commerce::Money::Payment::PaymentData::EXPIRATION)
        stringBuffer.append(" VARCHAR(255) ,")
        stringBuffer.append(::Org::Allbinary::Business::User::Commerce::Money::Payment::PaymentData::NUMBER)
        stringBuffer.append(" VARCHAR(255) ,")
        stringBuffer.append(entryData.ENCRYPTION)
        stringBuffer.append(" BIGINT(19) UNSIGNED ,")
        stringBuffer.append(::Org::Allbinary::Business::User::Address::BillingAddressData::NAME)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(::Org::Allbinary::Business::User::Address::BillingAddressData::STREET)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(::Org::Allbinary::Business::User::Address::BillingAddressData::CITY)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(::Org::Allbinary::Business::User::Address::BillingAddressData::STATE)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(::Org::Allbinary::Business::User::Address::BillingAddressData::CODE)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(::Org::Allbinary::Business::User::Address::BillingAddressData::COUNTRY)
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
        stringBuffer.append(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::SUBTOTAL)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::SHIPPINGCOST)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::TAX)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::TOTAL)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(entryData.SPECIAL)
        stringBuffer.append(" VARCHAR(255) ,")
        stringBuffer.append(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderData::CUSTOMERCOMMENT)
        stringBuffer.append(@sqlTypeStrings.BLOB_NOT_NULL)
        stringBuffer.append(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderData::CUSTOMERCANCELCOMMENT)
        stringBuffer.append(@sqlTypeStrings.BLOB_NOT_NULL)
        stringBuffer.append(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderData::STORECOMMENT)
        stringBuffer.append(@sqlTypeStrings.BLOB_NOT_NULL)
        stringBuffer.append(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderData::STORECANCELCOMMENT)
        stringBuffer.append(@sqlTypeStrings.BLOB_NOT_NULL)
        stringBuffer.append("PRIMARY KEY(")
        stringBuffer.append(entryData.ID)
        stringBuffer.append(") )")
        return stringBuffer.to_s
    end
    java_overload :createTableStatement, 0
    

    def createTable()
        return OrderHistoryEntity.superclass.java_super_method(:createTable, 1).bind(self).call(self.createTableStatement())
    end
    java_overload :createTable, 0
    

    def dropTable()
        return OrderHistoryEntity.superclass.java_super_method(:dropTable, 0).bind(self).call()
    end
    java_overload :dropTable, 0
    

    # throws Exception
    def update(whereHashMap, orderHashMap)
        begin
            updateWhere(whereHashMap, orderHashMap)
        rescue StandardError => e
            raise e
        end
    end
    java_overload :update, 2
end

module ::Java; module Util; autoload :Calendar, "java/util/Calendar" unless const_defined?(:Calendar, false); end; end
module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontData, "org/allbinary/business/context/modules/storefront/StoreFrontData" unless const_defined?(:StoreFrontData, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontFactory, "org/allbinary/business/context/modules/storefront/StoreFrontFactory" unless const_defined?(:StoreFrontFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontInterface, "org/allbinary/business/context/modules/storefront/StoreFrontInterface" unless const_defined?(:StoreFrontInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module Entry; autoload :EntryData, "org/allbinary/business/entry/EntryData" unless const_defined?(:EntryData, false); end; end; end; end
module ::Org; module Allbinary; module Business; module Init; module Db; autoload :HistoryDbInitInfo, "org/allbinary/business/init/db/HistoryDbInitInfo" unless const_defined?(:HistoryDbInitInfo, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; autoload :UserData, "org/allbinary/business/user/UserData" unless const_defined?(:UserData, false); end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Address; autoload :BillingAddressData, "org/allbinary/business/user/address/BillingAddressData" unless const_defined?(:BillingAddressData, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Address; autoload :ShippingAddressData, "org/allbinary/business/user/address/ShippingAddressData" unless const_defined?(:ShippingAddressData, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Address; autoload :StreetAddress, "org/allbinary/business/user/address/StreetAddress" unless const_defined?(:StreetAddress, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Basket; autoload :Basket, "org/allbinary/business/user/commerce/inventory/basket/Basket" unless const_defined?(:Basket, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Basket; autoload :BasketInterface, "org/allbinary/business/user/commerce/inventory/basket/BasketInterface" unless const_defined?(:BasketInterface, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Order; autoload :Order, "org/allbinary/business/user/commerce/inventory/order/Order" unless const_defined?(:Order, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Order; autoload :OrderData, "org/allbinary/business/user/commerce/inventory/order/OrderData" unless const_defined?(:OrderData, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Order; autoload :OrderHistory, "org/allbinary/business/user/commerce/inventory/order/OrderHistory" unless const_defined?(:OrderHistory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Order; autoload :OrderHistoryData, "org/allbinary/business/user/commerce/inventory/order/OrderHistoryData" unless const_defined?(:OrderHistoryData, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; autoload :Money, "org/allbinary/business/user/commerce/money/Money" unless const_defined?(:Money, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Payment; autoload :PaymentData, "org/allbinary/business/user/commerce/money/payment/PaymentData" unless const_defined?(:PaymentData, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Payment; autoload :PaymentInterface, "org/allbinary/business/user/commerce/money/payment/PaymentInterface" unless const_defined?(:PaymentInterface, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Tax; autoload :TaxFactory, "org/allbinary/business/user/commerce/money/tax/TaxFactory" unless const_defined?(:TaxFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Shipping; autoload :ShippingMethodData, "org/allbinary/business/user/commerce/shipping/ShippingMethodData" unless const_defined?(:ShippingMethodData, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Shipping; autoload :ShippingMethods, "org/allbinary/business/user/commerce/shipping/ShippingMethods" unless const_defined?(:ShippingMethods, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Shipping; module Modules; autoload :ShippingInterface, "org/allbinary/business/user/commerce/shipping/modules/ShippingInterface" unless const_defined?(:ShippingInterface, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Generator; autoload :OrderHistoryIdGenerator, "org/allbinary/data/generator/OrderHistoryIdGenerator" unless const_defined?(:OrderHistoryIdGenerator, false); end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; autoload :TableDataFactory, "org/allbinary/data/tables/TableDataFactory" unless const_defined?(:TableDataFactory, false); end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module User; module Address; module Billing; autoload :BillingAddressesEntity, "org/allbinary/data/tables/user/address/billing/BillingAddressesEntity" unless const_defined?(:BillingAddressesEntity, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module User; module Address; module Shipping; autoload :ShippingAddressesEntity, "org/allbinary/data/tables/user/address/shipping/ShippingAddressesEntity" unless const_defined?(:ShippingAddressesEntity, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module User; module Commerce; module Money; module Payment; autoload :PaymentEntity, "org/allbinary/data/tables/user/commerce/money/payment/PaymentEntity" unless const_defined?(:PaymentEntity, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module ControlPackage; module Crypt; autoload :SuperCrypt, "org/allbinary/logic/control/crypt/SuperCrypt" unless const_defined?(:SuperCrypt, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" unless const_defined?(:AbeClientInformationInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :ServiceClientInformationInterfaceFactory, "org/allbinary/logic/system/security/licensing/ServiceClientInformationInterfaceFactory" unless const_defined?(:ServiceClientInformationInterfaceFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end; end; end; end; end; end; end

