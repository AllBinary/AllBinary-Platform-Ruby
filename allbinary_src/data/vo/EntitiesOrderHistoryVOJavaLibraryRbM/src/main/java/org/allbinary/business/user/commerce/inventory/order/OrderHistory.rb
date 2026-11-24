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

require "java/lang/JavaOverload"
# require "java/util/Set"
require "org/allbinary/business/user/commerce/inventory/order/Order"
require "org/allbinary/business/user/commerce/inventory/order/OrderHistoryInterface"

module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Order

class OrderHistory < Order
    include OrderHistoryInterface
    attr_accessor :userName, :shippingAddress, :billingAddress, :payment, :shipDate, :orderDate, :transDate, :cancelDate, :status, :subTotal, :shippingCost, :taxes, :total

    def jfields_org_allbinary_business_user_commerce_inventory_order_OrderHistory
        @userName = nil unless instance_variable_defined?(:@userName)
        @shippingAddress = nil unless instance_variable_defined?(:@shippingAddress)
        @billingAddress = nil unless instance_variable_defined?(:@billingAddress)
        @payment = nil unless instance_variable_defined?(:@payment)
        @shipDate = nil unless instance_variable_defined?(:@shipDate)
        @orderDate = nil unless instance_variable_defined?(:@orderDate)
        @transDate = nil unless instance_variable_defined?(:@transDate)
        @cancelDate = nil unless instance_variable_defined?(:@cancelDate)
        @status = nil unless instance_variable_defined?(:@status)
        @subTotal = nil unless instance_variable_defined?(:@subTotal)
        @shippingCost = nil unless instance_variable_defined?(:@shippingCost)
        @taxes = nil unless instance_variable_defined?(:@taxes)
        @total = nil unless instance_variable_defined?(:@total)
    end

    def initialize(*args)
        case args.length
        when 1 then jnew_org_allbinary_business_user_commerce_inventory_order_OrderHistory_1(*args)
        when 2 then jnew_org_allbinary_business_user_commerce_inventory_order_OrderHistory_2(*args)
        else raise ArgumentError, "No constructor of OrderHistory takes #{args.length} arguments"
        end
    end

    def jnew_org_allbinary_business_user_commerce_inventory_order_OrderHistory_2(*java_overload_args)
        return jnew_org_allbinary_business_user_commerce_inventory_order_OrderHistory_2_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::Org::Allbinary::Business::User::Commerce::Inventory::Basket::BasketInterface)) && (java_overload_args[1].nil? || java_overload_args[1].is_a?(OrderHistory))
        return jnew_org_allbinary_business_user_commerce_inventory_order_OrderHistory_2_2(*java_overload_args)
    end
    

    def jnew_org_allbinary_business_user_commerce_inventory_order_OrderHistory_1(basketInterface)
        OrderHistory.superclass.instance_method(:initialize).bind(self).call(basketInterface)
        jfields_org_allbinary_business_user_commerce_inventory_order_OrderHistory
    end
    

    def jnew_org_allbinary_business_user_commerce_inventory_order_OrderHistory_2_1(basketInterface, orderHistory)
        OrderHistory.superclass.instance_method(:initialize).bind(self).call(orderHistory.getStoreName(), basketInterface, orderHistory.getId(), orderHistory.getShippingMethod(), orderHistory.getSpecial(), orderHistory.getPaymentMethod())
        jfields_org_allbinary_business_user_commerce_inventory_order_OrderHistory
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
        OrderHistory.superclass.java_super_method(:setUserComments, 1).bind(self).call(orderHistory.getUserComments())
        OrderHistory.superclass.java_super_method(:setUserCancelComments, 1).bind(self).call(orderHistory.getUserCancelComments())
        OrderHistory.superclass.java_super_method(:setStoreComments, 1).bind(self).call(orderHistory.getStoreComments())
        OrderHistory.superclass.java_super_method(:setStoreCancelComments, 1).bind(self).call(orderHistory.getStoreCancelComments())
    end
    

    def jnew_org_allbinary_business_user_commerce_inventory_order_OrderHistory_2_2(basketInterface, orderHistoryHashMap)
        OrderHistory.superclass.instance_method(:initialize).bind(self).call(orderHistoryHashMap.get(::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontData.getInstance().NAME), basketInterface, orderHistoryHashMap.get(OrderData::ID), orderHistoryHashMap.get(::Org::Allbinary::Business::User::Commerce::Shipping::ShippingMethodData::NAME), orderHistoryHashMap.get(::Org::Allbinary::Business::Entry::EntryData.getInstance().SPECIAL), orderHistoryHashMap.get(::Org::Allbinary::Business::User::Commerce::Money::Payment::PaymentData::METHOD))
        jfields_org_allbinary_business_user_commerce_inventory_order_OrderHistory
        @shippingAddress = ::Org::Allbinary::Business::User::Address::StreetAddress.new(orderHistoryHashMap.get(::Org::Allbinary::Business::User::Address::ShippingAddressData::NAME), orderHistoryHashMap.get(::Org::Allbinary::Business::User::Address::ShippingAddressData::STREET), orderHistoryHashMap.get(::Org::Allbinary::Business::User::Address::ShippingAddressData::CITY), orderHistoryHashMap.get(::Org::Allbinary::Business::User::Address::ShippingAddressData::STATE), orderHistoryHashMap.get(::Org::Allbinary::Business::User::Address::ShippingAddressData::CODE), orderHistoryHashMap.get(::Org::Allbinary::Business::User::Address::ShippingAddressData::COUNTRY))
        @billingAddress = ::Org::Allbinary::Business::User::Address::StreetAddress.new(orderHistoryHashMap.get(::Org::Allbinary::Business::User::Address::BillingAddressData::NAME), orderHistoryHashMap.get(::Org::Allbinary::Business::User::Address::BillingAddressData::STREET), orderHistoryHashMap.get(::Org::Allbinary::Business::User::Address::BillingAddressData::CITY), orderHistoryHashMap.get(::Org::Allbinary::Business::User::Address::BillingAddressData::STATE), orderHistoryHashMap.get(::Org::Allbinary::Business::User::Address::BillingAddressData::CODE), orderHistoryHashMap.get(::Org::Allbinary::Business::User::Address::BillingAddressData::COUNTRY))
        @payment = ::Org::Allbinary::Business::User::Commerce::Money::Payment::Payment.new(orderHistoryHashMap)
        @userName = orderHistoryHashMap.get(::Org::Allbinary::Business::User::UserData::USERNAME)
        @orderDate = orderHistoryHashMap.get(OrderHistoryData::ORDERDATE)
        @shipDate = orderHistoryHashMap.get(OrderHistoryData::SHIPPEDDATE)
        @transDate = orderHistoryHashMap.get(OrderHistoryData::TRANSDATE)
        @cancelDate = orderHistoryHashMap.get(OrderHistoryData::CANCELDATE)
        @status = orderHistoryHashMap.get(OrderHistoryData::STATUS)
        @subTotal = ::Org::Allbinary::Business::User::Commerce::Money::Money.new(orderHistoryHashMap.get(OrderHistoryData::SUBTOTAL))
        @total = ::Org::Allbinary::Business::User::Commerce::Money::Money.new(orderHistoryHashMap.get(OrderHistoryData::TOTAL))
        @shippingCost = ::Org::Allbinary::Business::User::Commerce::Money::Money.new(orderHistoryHashMap.get(OrderHistoryData::SHIPPINGCOST))
        @taxes = ::Org::Allbinary::Business::User::Commerce::Money::Money.new(orderHistoryHashMap.get(OrderHistoryData::TAX))
        OrderHistory.superclass.java_super_method(:setUserComments, 1).bind(self).call(orderHistoryHashMap.get(OrderData::CUSTOMERCOMMENT))
        OrderHistory.superclass.java_super_method(:setUserCancelComments, 1).bind(self).call(orderHistoryHashMap.get(OrderData::CUSTOMERCANCELCOMMENT))
        OrderHistory.superclass.java_super_method(:setStoreComments, 1).bind(self).call(orderHistoryHashMap.get(OrderData::STORECOMMENT))
        OrderHistory.superclass.java_super_method(:setStoreCancelComments, 1).bind(self).call(orderHistoryHashMap.get(OrderData::STORECANCELCOMMENT))
    end
    

    def setUserName(value)
        @userName = value
    end
    java_overload :setUserName, 1
    

    def setDefaultShippingAddress(shippingAddress)
        @shippingAddress = shippingAddress
    end
    java_overload :setDefaultShippingAddress, 1
    

    def setBillingAddress(billingAddress)
        @billingAddress = billingAddress
    end
    java_overload :setBillingAddress, 1
    

    def setPaymentInfo(payment)
        @payment = payment
    end
    java_overload :setPaymentInfo, 1
    

    def setShipDate(value)
        @shipDate = value
    end
    java_overload :setShipDate, 1
    

    def setOrderDate(value)
        @orderDate = value
    end
    java_overload :setOrderDate, 1
    

    def setTransDate(value)
        @transDate = value
    end
    java_overload :setTransDate, 1
    

    def setCancelDate(value)
        @cancelDate = value
    end
    java_overload :setCancelDate, 1
    

    def setStatus(value)
        @status = value
    end
    java_overload :setStatus, 1
    

    def setSubTotal(value)
        @subTotal = value
    end
    java_overload :setSubTotal, 1
    

    def setShippingCost(value)
        @shippingCost = value
    end
    java_overload :setShippingCost, 1
    

    def setTaxes(value)
        @taxes = value
    end
    java_overload :setTaxes, 1
    

    def setTotal(value)
        @total = value
    end
    java_overload :setTotal, 1
    

    def getUserName()
        return @userName
    end
    java_overload :getUserName, 0
    

    def getShippingAddress()
        return @shippingAddress
    end
    java_overload :getShippingAddress, 0
    

    def getBillingAddress()
        return @billingAddress
    end
    java_overload :getBillingAddress, 0
    

    def getPaymentInfo()
        return @payment
    end
    java_overload :getPaymentInfo, 0
    

    def getShipDate()
        return @shipDate
    end
    java_overload :getShipDate, 0
    

    def getOrderDate()
        return @orderDate
    end
    java_overload :getOrderDate, 0
    

    def getTransDate()
        return @transDate
    end
    java_overload :getTransDate, 0
    

    def getCancelDate()
        return @cancelDate
    end
    java_overload :getCancelDate, 0
    

    def getStatus()
        return @status
    end
    java_overload :getStatus, 0
    

    def getSubTotal()
        return @subTotal
    end
    java_overload :getSubTotal, 0
    

    def getShippingCost()
        return @shippingCost
    end
    java_overload :getShippingCost, 0
    

    def getTaxes()
        return @taxes
    end
    java_overload :getTaxes, 0
    

    def getTotal()
        return @total
    end
    java_overload :getTotal, 0
    

    def toHashMap()
        hashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
        hashMap.put(::Org::Allbinary::Business::User::UserData::USERNAME, @userName)
        hashMap.put(OrderHistoryData::ORDERDATE, @orderDate)
        hashMap.put(OrderHistoryData::SHIPPEDDATE, @shipDate)
        hashMap.put(OrderHistoryData::TRANSDATE, @transDate)
        hashMap.put(OrderHistoryData::CANCELDATE, @cancelDate)
        hashMap.put(OrderHistoryData::ORDERDATEFORMATTED, ::Java::Util::Date.new(@orderDate.to_i).to_s)
        hashMap.put(OrderHistoryData::SHIPPEDDATEFORMATTED, ::Java::Util::Date.new(@shipDate.to_i).to_s)
        hashMap.put(OrderHistoryData::TRANSDATEFORMATTED, ::Java::Util::Date.new(@transDate.to_i).to_s)
        hashMap.put(OrderHistoryData::CANCELDATEFORMATTED, ::Java::Util::Date.new(@cancelDate.to_i).to_s)
        hashMap.put(OrderHistoryData::STATUS, @status)
        hashMap.put(OrderHistoryData::SUBTOTAL, @subTotal.to_s)
        hashMap.put(OrderHistoryData::TOTAL, @total.to_s)
        hashMap.put(OrderHistoryData::SHIPPINGCOST, @shippingCost.to_s)
        hashMap.put(OrderHistoryData::TAX, @taxes.to_s)
        return hashMap
    end
    java_overload :toHashMap, 0
    

    # throws Exception
    def toXmlNode(document)
        hashMap = self.toHashMap()
        keySet = hashMap.keySet()
        keyArray = keySet.toArray()
        size = keyArray.length
        node = document.createElement(OrderHistoryData::ORDERHISTORY)
        node.appendChild(OrderHistory.superclass.java_super_method(:toXmlNode, 1).bind(self).call(document))
        billingAddressNode = document.createElement(::Org::Allbinary::Business::User::Address::BillingAddressData::BILLINGADDRESS)
        billingAddressNode.appendChild(@billingAddress.toXmlNode(document))
        shippingAddressNode = document.createElement(::Org::Allbinary::Business::User::Address::ShippingAddressData::SHIPPINGADDRESS)
        shippingAddressNode.appendChild(@shippingAddress.toXmlNode(document))
        node.appendChild(billingAddressNode)
        node.appendChild(shippingAddressNode)
        node.appendChild(@payment.toXmlNode(document))
        (0...size).each do |i|
            name = keyArray[i]
            value = hashMap.get(name)
            value = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().getNonNull(value)
            node.appendChild(::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createNameValueNodes(document, name, value))
        end
        return node
    end
    java_overload :toXmlNode, 1
    

    def getPaymentMethod()
        return OrderHistory.superclass.java_super_method(:getPaymentMethod, 0).bind(self).call()
    end
    java_overload :getPaymentMethod, 0
end

module ::Java; module Util; autoload :Date, "java/util/Date" unless const_defined?(:Date, false); end; end
module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontData, "org/allbinary/business/context/modules/storefront/StoreFrontData" unless const_defined?(:StoreFrontData, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module Entry; autoload :EntryData, "org/allbinary/business/entry/EntryData" unless const_defined?(:EntryData, false); end; end; end; end
module ::Org; module Allbinary; module Business; module User; autoload :UserData, "org/allbinary/business/user/UserData" unless const_defined?(:UserData, false); end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Address; autoload :BillingAddressData, "org/allbinary/business/user/address/BillingAddressData" unless const_defined?(:BillingAddressData, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Address; autoload :ShippingAddressData, "org/allbinary/business/user/address/ShippingAddressData" unless const_defined?(:ShippingAddressData, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Address; autoload :StreetAddress, "org/allbinary/business/user/address/StreetAddress" unless const_defined?(:StreetAddress, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Basket; autoload :BasketInterface, "org/allbinary/business/user/commerce/inventory/basket/BasketInterface" unless const_defined?(:BasketInterface, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; autoload :Money, "org/allbinary/business/user/commerce/money/Money" unless const_defined?(:Money, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; autoload :MoneyException, "org/allbinary/business/user/commerce/money/MoneyException" unless const_defined?(:MoneyException, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Payment; autoload :Payment, "org/allbinary/business/user/commerce/money/payment/Payment" unless const_defined?(:Payment, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Payment; autoload :PaymentData, "org/allbinary/business/user/commerce/money/payment/PaymentData" unless const_defined?(:PaymentData, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Shipping; autoload :ShippingMethodData, "org/allbinary/business/user/commerce/shipping/ShippingMethodData" unless const_defined?(:ShippingMethodData, false); end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :ModDomHelper, "org/allbinary/data/tree/dom/ModDomHelper" unless const_defined?(:ModDomHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
autoload :OrderData, "org/allbinary/business/user/commerce/inventory/order/OrderData" unless const_defined?(:OrderData, false)
autoload :OrderHistoryData, "org/allbinary/business/user/commerce/inventory/order/OrderHistoryData" unless const_defined?(:OrderHistoryData, false)

end; end; end; end; end; end; end

