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
# package org.allbinary.business.user.commerce.inventory.order

# require "java/util/Set"
require "org/allbinary/business/user/commerce/inventory/order/Order"
require "org/allbinary/business/user/commerce/inventory/order/OrderHistoryInterface"

class OrderHistory < Order
    include OrderHistoryInterface
    attr_accessor :userName, :shippingAddress, :billingAddress, :payment, :shipDate, :orderDate, :transDate, :cancelDate, :status, :subTotal, :shippingCost, :taxes, :total

    def initialize_fields
        @userName = nil
        @shippingAddress = nil
        @billingAddress = nil
        @payment = nil
        @shipDate = nil
        @orderDate = nil
        @transDate = nil
        @cancelDate = nil
        @status = nil
        @subTotal = nil
        @shippingCost = nil
        @taxes = nil
        @total = nil
    end

    def initialize(*args)
        case args.length
        when 1 then constructor1(*args)
        when 2 then constructor2(*args)
        when 2 then constructor2(*args)
        end
    end
    

    def constructor1(basketInterface)
        method(:initialize).super_method.call(basketInterface)
        initialize_fields
    end
    

    def constructor2(basketInterface, orderHistory)
        method(:initialize).super_method.call(orderHistory.getStoreName(), basketInterface, orderHistory.getId(), orderHistory.getShippingMethod(), orderHistory.getSpecial(), orderHistory.getPaymentMethod())
        initialize_fields
        @userName = orderHistory.getUserName()
        @shippingAddress = orderHistory.getShippingAddress()
        @billingAddress = orderHistory.getBillingAddress()
        @payment = orderHistory.getPaymentInfo()
        @shipDate = orderHistory.getShipDate()
        @orderDate = orderHistory.getOrderDate()
        @transDate = orderHistory.getTransDate()
        @cancelDate = orderHistory.getCancelDate()
        @status = orderHistory.getStatus()
        @subTotal = orderHistory.getSubTotal()
        @shippingCost = orderHistory.getShippingCost()
        @taxes = orderHistory.getTaxes()
        @total = orderHistory.getTotal()
        self.class.superclass.instance_method(:setUserComments).bind(self).call(orderHistory.getUserComments())
        self.class.superclass.instance_method(:setUserCancelComments).bind(self).call(orderHistory.getUserCancelComments())
        self.class.superclass.instance_method(:setStoreComments).bind(self).call(orderHistory.getStoreComments())
        self.class.superclass.instance_method(:setStoreCancelComments).bind(self).call(orderHistory.getStoreCancelComments())
    end
    

    def constructor2(basketInterface, orderHistoryHashMap)
        method(:initialize).super_method.call(orderHistoryHashMap.get(StoreFrontData.getInstance().NAME), basketInterface, orderHistoryHashMap.get(OrderData::ID), orderHistoryHashMap.get(ShippingMethodData::NAME), orderHistoryHashMap.get(EntryData.getInstance().SPECIAL), orderHistoryHashMap.get(PaymentData::METHOD))
        initialize_fields
        @shippingAddress = StreetAddress.new(orderHistoryHashMap.get(ShippingAddressData::NAME), orderHistoryHashMap.get(ShippingAddressData::STREET), orderHistoryHashMap.get(ShippingAddressData::CITY), orderHistoryHashMap.get(ShippingAddressData::STATE), orderHistoryHashMap.get(ShippingAddressData::CODE), orderHistoryHashMap.get(ShippingAddressData::COUNTRY))
        @billingAddress = StreetAddress.new(orderHistoryHashMap.get(BillingAddressData::NAME), orderHistoryHashMap.get(BillingAddressData::STREET), orderHistoryHashMap.get(BillingAddressData::CITY), orderHistoryHashMap.get(BillingAddressData::STATE), orderHistoryHashMap.get(BillingAddressData::CODE), orderHistoryHashMap.get(BillingAddressData::COUNTRY))
        @payment = Payment.new(orderHistoryHashMap)
        @userName = orderHistoryHashMap.get(UserData::USERNAME)
        @orderDate = orderHistoryHashMap.get(OrderHistoryData::ORDERDATE)
        @shipDate = orderHistoryHashMap.get(OrderHistoryData::SHIPPEDDATE)
        @transDate = orderHistoryHashMap.get(OrderHistoryData::TRANSDATE)
        @cancelDate = orderHistoryHashMap.get(OrderHistoryData::CANCELDATE)
        @status = orderHistoryHashMap.get(OrderHistoryData::STATUS)
        @subTotal = Money.new(orderHistoryHashMap.get(OrderHistoryData::SUBTOTAL))
        @total = Money.new(orderHistoryHashMap.get(OrderHistoryData::TOTAL))
        @shippingCost = Money.new(orderHistoryHashMap.get(OrderHistoryData::SHIPPINGCOST))
        @taxes = Money.new(orderHistoryHashMap.get(OrderHistoryData::TAX))
        self.class.superclass.instance_method(:setUserComments).bind(self).call(orderHistoryHashMap.get(OrderData::CUSTOMERCOMMENT))
        self.class.superclass.instance_method(:setUserCancelComments).bind(self).call(orderHistoryHashMap.get(OrderData::CUSTOMERCANCELCOMMENT))
        self.class.superclass.instance_method(:setStoreComments).bind(self).call(orderHistoryHashMap.get(OrderData::STORECOMMENT))
        self.class.superclass.instance_method(:setStoreCancelComments).bind(self).call(orderHistoryHashMap.get(OrderData::STORECANCELCOMMENT))
    end
    

    def setUserName(value)
        @userName = value
    end
    

    def setDefaultShippingAddress(shippingAddress)
        @shippingAddress = shippingAddress
    end
    

    def setBillingAddress(billingAddress)
        @billingAddress = billingAddress
    end
    

    def setPaymentInfo(payment)
        @payment = payment
    end
    

    def setShipDate(value)
        @shipDate = value
    end
    

    def setOrderDate(value)
        @orderDate = value
    end
    

    def setTransDate(value)
        @transDate = value
    end
    

    def setCancelDate(value)
        @cancelDate = value
    end
    

    def setStatus(value)
        @status = value
    end
    

    def setSubTotal(value)
        @subTotal = value
    end
    

    def setShippingCost(value)
        @shippingCost = value
    end
    

    def setTaxes(value)
        @taxes = value
    end
    

    def setTotal(value)
        @total = value
    end
    

    def getUserName()
        return @userName
    end
    

    def getShippingAddress()
        return @shippingAddress
    end
    

    def getBillingAddress()
        return @billingAddress
    end
    

    def getPaymentInfo()
        return @payment
    end
    

    def getShipDate()
        return @shipDate
    end
    

    def getOrderDate()
        return @orderDate
    end
    

    def getTransDate()
        return @transDate
    end
    

    def getCancelDate()
        return @cancelDate
    end
    

    def getStatus()
        return @status
    end
    

    def getSubTotal()
        return @subTotal
    end
    

    def getShippingCost()
        return @shippingCost
    end
    

    def getTaxes()
        return @taxes
    end
    

    def getTotal()
        return @total
    end
    

    def toHashMap()
        hashMap = StdUtil.getInstance().createHashMap()
        hashMap.put(UserData::USERNAME, @userName)
        hashMap.put(OrderHistoryData::ORDERDATE, @orderDate)
        hashMap.put(OrderHistoryData::SHIPPEDDATE, @shipDate)
        hashMap.put(OrderHistoryData::TRANSDATE, @transDate)
        hashMap.put(OrderHistoryData::CANCELDATE, @cancelDate)
        hashMap.put(OrderHistoryData::ORDERDATEFORMATTED, Date.new(@orderDate.to_i).to_s)
        hashMap.put(OrderHistoryData::SHIPPEDDATEFORMATTED, Date.new(@shipDate.to_i).to_s)
        hashMap.put(OrderHistoryData::TRANSDATEFORMATTED, Date.new(@transDate.to_i).to_s)
        hashMap.put(OrderHistoryData::CANCELDATEFORMATTED, Date.new(@cancelDate.to_i).to_s)
        hashMap.put(OrderHistoryData::STATUS, @status)
        hashMap.put(OrderHistoryData::SUBTOTAL, @subTotal.to_s)
        hashMap.put(OrderHistoryData::TOTAL, @total.to_s)
        hashMap.put(OrderHistoryData::SHIPPINGCOST, @shippingCost.to_s)
        hashMap.put(OrderHistoryData::TAX, @taxes.to_s)
        return hashMap
    end
    

    # throws Exception
    def toXmlNode(document)
        hashMap = self.toHashMap()
        keySet = hashMap.keySet()
        keyArray = keySet.toArray()
        size = keyArray.length
        node = document.createElement(OrderHistoryData::ORDERHISTORY)
        node.appendChild(super(document))
        billingAddressNode = document.createElement(BillingAddressData::BILLINGADDRESS)
        billingAddressNode.appendChild(@billingAddress.toXmlNode(document))
        shippingAddressNode = document.createElement(ShippingAddressData::SHIPPINGADDRESS)
        shippingAddressNode.appendChild(@shippingAddress.toXmlNode(document))
        node.appendChild(billingAddressNode)
        node.appendChild(shippingAddressNode)
        node.appendChild(@payment.toXmlNode(document))
        (0...size).each do |i|
            name = keyArray[i]
            value = hashMap.get(name)
            value = StringUtil.getInstance().getNonNull(value)
            node.appendChild(ModDomHelper.createNameValueNodes(document, name, value))
        end
        return node
    end
end

require "java/util/Date"
require "java/util/HashMap"
require "org/allbinary/business/context/modules/storefront/StoreFrontData"
require "org/allbinary/business/entry/EntryData"
require "org/allbinary/business/user/UserData"
require "org/allbinary/business/user/address/BillingAddressData"
require "org/allbinary/business/user/address/ShippingAddressData"
require "org/allbinary/business/user/address/StreetAddress"
require "org/allbinary/business/user/commerce/inventory/basket/BasketInterface"
require "org/allbinary/business/user/commerce/money/Money"
require "org/allbinary/business/user/commerce/money/MoneyException"
require "org/allbinary/business/user/commerce/money/payment/Payment"
require "org/allbinary/business/user/commerce/money/payment/PaymentData"
require "org/allbinary/business/user/commerce/shipping/ShippingMethodData"
require "org/allbinary/data/tree/dom/ModDomHelper"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/string/StringUtil"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"
require "org/allbinary/business/user/commerce/inventory/order/OrderData"
require "org/allbinary/business/user/commerce/inventory/order/OrderHistoryData"

