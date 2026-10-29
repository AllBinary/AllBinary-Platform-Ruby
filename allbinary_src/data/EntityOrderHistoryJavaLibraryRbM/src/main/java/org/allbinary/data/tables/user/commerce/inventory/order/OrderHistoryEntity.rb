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

# require "java/util/Random"
require "org/allbinary/logic/communication/sql/AbSqlBean"
require "org/allbinary/data/tables/user/commerce/inventory/order/OrderHistoryEntityInterface"

class OrderHistoryEntity < AbSqlBean
    include OrderHistoryEntityInterface
    attr_accessor :logUtil, :tableName

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @tableName = "orderhistory"
    end
    

    def initialize()
        super(HistoryDbInitInfo.new())
        initialize_fields
        self.setTableName(@tableName)
    end
    

    def insert(userName, order)
        vector = BasicArrayListD.new()
        begin
            paymentInterface = PaymentEntity.new().getDefault(userName)
            billingAddress = BillingAddressesEntity.new(userName).getDefault()
            shippingAddress = ShippingAddressesEntity.new(userName).getDefault()
            abeClientInformation = ServiceClientInformationInterfaceFactory.getInstance()
            storeFrontInterface = StoreFrontFactory.getInstance(order.getStoreName())
            shippingInterface = ShippingMethods.new(abeClientInformation, storeFrontInterface).getShippingInterface(order.getShippingMethod())
            shippingCost = shippingInterface.getCost(order)
            basketInterface = order.getBasket()
            subTotal = basketInterface.getSubTotal()
            taxRate = TaxFactory.getInstance().getInstance(abeClientInformation, storeFrontInterface).getTaxRate(shippingAddress, storeFrontInterface)
            tax = Money.new()
            total = Money.new()
            total.add(shippingCost.to_s)
            total.add(subTotal.to_s)
            tax.add(total.to_s)
            tax.multiply(taxRate)
            total.add(tax.to_s)
            empty = StringUtil.getInstance().EMPTY_STRING
            vector.add(OrderHistoryIdGenerator.new().getNext())
            _ZERO = TableDataFactory.getInstance().ZERO_STRING
            vector.add(order.getId())
            vector.add(userName)
            vector.add(order.getStoreName())
            calendar = Calendar.getInstance()
            time = String.new(calendar.getTimeInMillis().to_s)
            vector.add(_ZERO)
            vector.add(time)
            vector.add(_ZERO)
            vector.add(_ZERO)
            vector.add(OrderHistoryData::PREPROCESSING)
            vector.add(order.getPaymentMethod())
            if paymentInterface != nil
                vector.add(paymentInterface.getName())
                vector.add(paymentInterface.getType())
                vector.add(paymentInterface.getExpiration())
                random = Random.new().nextInt(SuperCrypt::KEYMAX)
                vector.add(SuperCrypt.new(random).encrypt(paymentInterface.getNumber()))
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
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.putF(@commonStrings.SUCCESS, self, INSERT)
            end
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put("Command Failed: " + (vector).to_s, self, INSERT, e)
            end
        end
    end
    

    # Java overloaded method: Ruby keeps the last definition
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
    

    def setStatus(orderId, status)
        begin
            calendar = Calendar.getInstance()
            time = String.new(calendar.getTimeInMillis().to_s)
            updateHashMap = StdUtil.getInstance().createHashMap()
            updateHashMap.put(OrderHistoryData::STATUS, status)
            if (status <=> OrderHistoryData::CANCELLED) == 0
                updateHashMap.put(OrderHistoryData::CANCELDATE, time)
            elsif (status <=> OrderHistoryData::SHIPPED) == 0
                updateHashMap.put(OrderHistoryData::SHIPPEDDATE, time)
            end
            self.class.superclass.instance_method(:updateWhere).bind(self).call(OrderData::ID, orderId, updateHashMap)
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, "setStatus", e)
            end
        end
    end
    

    def setPaymentMethod(orderId, paymentMethod)
        begin
            calendar = Calendar.getInstance()
            time = String.new(calendar.getTimeInMillis().to_s)
            updateHashMap = StdUtil.getInstance().createHashMap()
            updateHashMap.put(PaymentData::METHOD, paymentMethod)
            updateHashMap.put(OrderHistoryData::TRANSDATE, time)
            self.class.superclass.instance_method(:updateWhere).bind(self).call(OrderData::ID, orderId, updateHashMap)
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, "setPaymentMethod", e)
            end
        end
    end
    

    # throws Exception
    def getStoreOrders(storeFrontInterface)
        orderReviewVector = BasicArrayListD.new()
        whereHashMap = StdUtil.getInstance().createHashMap()
        whereHashMap.put(StoreFrontData.getInstance().NAME, storeFrontInterface.getName())
        orderHashMapVector = self.class.superclass.instance_method(:getRows).bind(self).call(whereHashMap)
        size = orderHashMapVector.size()
        (0...size).each do |i|
            orderReviewHashMap = orderHashMapVector.get(i)
            orderReview = OrderHistory.new(Basket.new(), orderReviewHashMap)
            orderReviewVector.add(orderReview)
        end
        return orderReviewVector
    end
    

    # throws Exception
    def getOrders(userName)
        orderReviewVector = BasicArrayListD.new()
        whereHashMap = StdUtil.getInstance().createHashMap()
        whereHashMap.put(UserData::USERNAME, userName)
        orderHashMapVector = self.class.superclass.instance_method(:getRows).bind(self).call(whereHashMap)
        size = orderHashMapVector.size()
        (0...size).each do |index|
            orderReviewHashMap = orderHashMapVector.get(index)
            orderReview = OrderHistory.new(Basket.new(), orderReviewHashMap)
            orderReviewVector.add(orderReview)
        end
        return orderReviewVector
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def getOrders(status, fromDate, toDate)
        orderReviewVector = BasicArrayListD.new()
        whereHashMap = StdUtil.getInstance().createHashMap()
        whereHashMap.put(OrderHistoryData::STATUS, status)
        orderHashMapVector = self.class.superclass.instance_method(:getRowsWhereBetween).bind(self).call(whereHashMap, OrderHistoryData::ORDERDATE, fromDate, toDate)
        size = orderHashMapVector.size()
        (0...size).each do |index|
            orderReviewHashMap = orderHashMapVector.get(index)
            orderReview = OrderHistory.new(Basket.new(), orderReviewHashMap)
            orderReviewVector.add(orderReview)
        end
        return orderReviewVector
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def getOrders(fromDate, toDate)
        orderReviewVector = BasicArrayListD.new()
        orderHashMapVector = self.class.superclass.instance_method(:getRowsWhereBetween).bind(self).call(OrderHistoryData::ORDERDATE, fromDate, toDate)
        size = orderHashMapVector.size()
        (0...size).each do |index|
            orderReviewHashMap = orderHashMapVector.get(index)
            orderReview = OrderHistory.new(Basket.new(), orderReviewHashMap)
            orderReviewVector.add(orderReview)
        end
        return orderReviewVector
    end
    

    # throws Exception
    def getOrder(id)
        whereHashMap = StdUtil.getInstance().createHashMap()
        whereHashMap.put(OrderData::ID, id)
        orderReviewHashMap = self.class.superclass.instance_method(:getRow).bind(self).call(whereHashMap)
        if orderReviewHashMap != nil
            orderHistory = OrderHistory.new(Basket.new(), orderReviewHashMap)
            return orderHistory
        else
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
        stringBuffer.append(UserData::USERNAME)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(StoreFrontData.getInstance().NAME)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(OrderHistoryData::SHIPPEDDATE)
        stringBuffer.append(" BIGINT(19) UNSIGNED ,")
        stringBuffer.append(OrderHistoryData::ORDERDATE)
        stringBuffer.append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL)
        stringBuffer.append(OrderHistoryData::TRANSDATE)
        stringBuffer.append(" BIGINT(19) UNSIGNED ,")
        stringBuffer.append(OrderHistoryData::CANCELDATE)
        stringBuffer.append(" BIGINT(19) UNSIGNED ,")
        stringBuffer.append(OrderHistoryData::STATUS)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(PaymentData::METHOD)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(PaymentData::NAME)
        stringBuffer.append(" VARCHAR(255) ,")
        stringBuffer.append(PaymentData::TYPE)
        stringBuffer.append(" VARCHAR(255) ,")
        stringBuffer.append(PaymentData::EXPIRATION)
        stringBuffer.append(" VARCHAR(255) ,")
        stringBuffer.append(PaymentData::NUMBER)
        stringBuffer.append(" VARCHAR(255) ,")
        stringBuffer.append(entryData.ENCRYPTION)
        stringBuffer.append(" BIGINT(19) UNSIGNED ,")
        stringBuffer.append(BillingAddressData::NAME)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(BillingAddressData::STREET)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(BillingAddressData::CITY)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(BillingAddressData::STATE)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(BillingAddressData::CODE)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(BillingAddressData::COUNTRY)
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
        stringBuffer.append(OrderHistoryData::SUBTOTAL)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(OrderHistoryData::SHIPPINGCOST)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(OrderHistoryData::TAX)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(OrderHistoryData::TOTAL)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(entryData.SPECIAL)
        stringBuffer.append(" VARCHAR(255) ,")
        stringBuffer.append(OrderData::CUSTOMERCOMMENT)
        stringBuffer.append(@sqlTypeStrings.BLOB_NOT_NULL)
        stringBuffer.append(OrderData::CUSTOMERCANCELCOMMENT)
        stringBuffer.append(@sqlTypeStrings.BLOB_NOT_NULL)
        stringBuffer.append(OrderData::STORECOMMENT)
        stringBuffer.append(@sqlTypeStrings.BLOB_NOT_NULL)
        stringBuffer.append(OrderData::STORECANCELCOMMENT)
        stringBuffer.append(@sqlTypeStrings.BLOB_NOT_NULL)
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
    

    # throws Exception
    def update(whereHashMap, orderHashMap)
        begin
            updateWhere(whereHashMap, orderHashMap)
        rescue StandardError => e
            raise e
        end
    end
end

require "java/util/Calendar"
require "java/util/HashMap"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/business/context/modules/storefront/StoreFrontData"
require "org/allbinary/business/context/modules/storefront/StoreFrontFactory"
require "org/allbinary/business/context/modules/storefront/StoreFrontInterface"
require "org/allbinary/business/entry/EntryData"
require "org/allbinary/business/init/db/HistoryDbInitInfo"
require "org/allbinary/business/user/UserData"
require "org/allbinary/business/user/address/BillingAddressData"
require "org/allbinary/business/user/address/ShippingAddressData"
require "org/allbinary/business/user/address/StreetAddress"
require "org/allbinary/business/user/commerce/inventory/basket/Basket"
require "org/allbinary/business/user/commerce/inventory/basket/BasketInterface"
require "org/allbinary/business/user/commerce/inventory/order/Order"
require "org/allbinary/business/user/commerce/inventory/order/OrderData"
require "org/allbinary/business/user/commerce/inventory/order/OrderHistory"
require "org/allbinary/business/user/commerce/inventory/order/OrderHistoryData"
require "org/allbinary/business/user/commerce/money/Money"
require "org/allbinary/business/user/commerce/money/payment/PaymentData"
require "org/allbinary/business/user/commerce/money/payment/PaymentInterface"
require "org/allbinary/business/user/commerce/money/tax/TaxFactory"
require "org/allbinary/business/user/commerce/shipping/ShippingMethodData"
require "org/allbinary/business/user/commerce/shipping/ShippingMethods"
require "org/allbinary/business/user/commerce/shipping/modules/ShippingInterface"
require "org/allbinary/data/generator/OrderHistoryIdGenerator"
require "org/allbinary/data/tables/TableDataFactory"
require "org/allbinary/data/tables/user/address/billing/BillingAddressesEntity"
require "org/allbinary/data/tables/user/address/shipping/ShippingAddressesEntity"
require "org/allbinary/data/tables/user/commerce/money/payment/PaymentEntity"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/control/crypt/SuperCrypt"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
require "org/allbinary/logic/system/security/licensing/ServiceClientInformationInterfaceFactory"

