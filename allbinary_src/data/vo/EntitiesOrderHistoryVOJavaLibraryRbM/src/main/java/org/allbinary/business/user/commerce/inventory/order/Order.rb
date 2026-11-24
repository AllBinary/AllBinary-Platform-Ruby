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
require "java/io/Serializable"
# require "java/util/Set"
require "org/allbinary/business/user/commerce/inventory/order/OrderInterface"

module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Order

class Order
    include OrderInterface
    include ::Java::Io::Serializable
    attr_accessor :basket, :paymentMethod, :shippingType, :storeName, :special, :id, :userComment, :userCancelComment, :storeComment, :storeCancelComment

    def jfields_org_allbinary_business_user_commerce_inventory_order_Order
        @basket = nil unless instance_variable_defined?(:@basket)
        @paymentMethod = nil unless instance_variable_defined?(:@paymentMethod)
        @shippingType = nil unless instance_variable_defined?(:@shippingType)
        @storeName = nil unless instance_variable_defined?(:@storeName)
        @special = nil unless instance_variable_defined?(:@special)
        @id = nil unless instance_variable_defined?(:@id)
        @userComment = nil unless instance_variable_defined?(:@userComment)
        @userCancelComment = nil unless instance_variable_defined?(:@userCancelComment)
        @storeComment = nil unless instance_variable_defined?(:@storeComment)
        @storeCancelComment = nil unless instance_variable_defined?(:@storeCancelComment)
    end

    def initialize(*args)
        case args.length
        when 1 then jnew_org_allbinary_business_user_commerce_inventory_order_Order_1(*args)
        when 6 then jnew_org_allbinary_business_user_commerce_inventory_order_Order_6(*args)
        else raise ArgumentError, "No constructor of Order takes #{args.length} arguments"
        end
    end
    

    def jnew_org_allbinary_business_user_commerce_inventory_order_Order_1(basket)
        jfields_org_allbinary_business_user_commerce_inventory_order_Order
        @basket = basket
        @id = nil
        @shippingType = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
    end
    

    def jnew_org_allbinary_business_user_commerce_inventory_order_Order_6(storeName, basket, id, shippingType, special, paymentMethod)
        jfields_org_allbinary_business_user_commerce_inventory_order_Order
        @storeName = storeName
        @basket = basket
        @id = id
        @shippingType = shippingType
        @special = special
        @paymentMethod = paymentMethod
    end
    

    def isIdValid()
        if self.getId() == nil || self.getId().compareTo(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING) == 0 || self.getId().length() > OrderHistoryData::MAXIDLEN || !::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance().isNumber(self.getId())
            return false
        end
        return true
    end
    java_overload :isIdValid, 0
    

    def isValid()
        return true
    end
    java_overload :isValid, 0
    

    def getIdValidationInfo()
        _EMPTY_STRING = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
        if self.getId() == nil || self.getId().compareTo(_EMPTY_STRING) == 0 || self.getId().length() > OrderHistoryData::MAXIDLEN || !::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance().isNumber(self.getId())
            return "Please enter a valid order Id < " + (OrderHistoryData::MAXIDLEN).to_s + " digits in length.<br>"
        end
        return _EMPTY_STRING
    end
    java_overload :getIdValidationInfo, 0
    

    def setShippingMethod(shippingType)
        @shippingType = shippingType
    end
    java_overload :setShippingMethod, 1
    

    def setPaymentMethod(value)
        @paymentMethod = value
    end
    java_overload :setPaymentMethod, 1
    

    def setSpecial(special)
        @special = special
    end
    java_overload :setSpecial, 1
    

    def setId(value)
        @id = value
    end
    java_overload :setId, 1
    

    def setStoreName(value)
        @storeName = value
    end
    java_overload :setStoreName, 1
    

    def setUserComments(value)
        @userComment = value
    end
    java_overload :setUserComments, 1
    

    def setUserCancelComments(value)
        @userCancelComment = value
    end
    java_overload :setUserCancelComments, 1
    

    def setStoreComments(value)
        @storeComment = value
    end
    java_overload :setStoreComments, 1
    

    def setStoreCancelComments(value)
        @storeCancelComment = value
    end
    java_overload :setStoreCancelComments, 1
    

    def getBasket()
        return @basket
    end
    java_overload :getBasket, 0
    

    def getShippingMethod()
        return @shippingType
    end
    java_overload :getShippingMethod, 0
    

    def getPaymentMethod()
        return @paymentMethod
    end
    java_overload :getPaymentMethod, 0
    

    def getSpecial()
        return @special
    end
    java_overload :getSpecial, 0
    

    def getId()
        return @id
    end
    java_overload :getId, 0
    

    def getStoreName()
        return @storeName
    end
    java_overload :getStoreName, 0
    

    def getUserComments()
        return @userComment
    end
    java_overload :getUserComments, 0
    

    def getUserCancelComments()
        return @userCancelComment
    end
    java_overload :getUserCancelComments, 0
    

    def getStoreComments()
        return @storeComment
    end
    java_overload :getStoreComments, 0
    

    def getStoreCancelComments()
        return @storeCancelComment
    end
    java_overload :getStoreCancelComments, 0
    

    def reviewOrder(paymentMethod)
        return "Create your own Order.reviewOrder"
    end
    java_overload :reviewOrder, 1
    

    def viewOrder(paymentMethod)
        return "Create your own Order.viewOrder"
    end
    java_overload :viewOrder, 1
    

    def emailOrder(userName, paymentMethod, storeFrontInterface)
        return "Create your own Order.emailOrder"
    end
    java_overload :emailOrder, 3
    

    def toHashMapOrder()
        hashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
        hashMap.put(::Org::Allbinary::Business::User::Commerce::Money::Payment::PaymentData::METHOD, @paymentMethod)
        hashMap.put(::Org::Allbinary::Business::User::Commerce::Shipping::ShippingMethodData::NAME, @shippingType)
        hashMap.put(::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontData.getInstance().NAME, @storeName)
        hashMap.put(::Org::Allbinary::Business::Entry::EntryData.getInstance().SPECIAL, @special)
        hashMap.put(OrderData::ID, @id)
        hashMap.put(OrderData::CUSTOMERCOMMENT, @userComment)
        hashMap.put(OrderData::CUSTOMERCANCELCOMMENT, @userCancelComment)
        hashMap.put(OrderData::STORECOMMENT, @storeComment)
        hashMap.put(OrderData::STORECANCELCOMMENT, @storeCancelComment)
        return hashMap
    end
    java_overload :toHashMapOrder, 0
    

    # throws Exception
    def toXmlNode(document)
        hashMap = self.toHashMapOrder()
        keySet = hashMap.keySet()
        keyArray = keySet.toArray()
        size = keyArray.length
        node = document.createElement(OrderData::ORDER)
        (0...size).each do |i|
            name = keyArray[i]
            value = hashMap.get(name)
            value = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().getNonNull(value)
            node.appendChild(::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createNameValueNodes(document, name, value))
        end
        return node
    end
    java_overload :toXmlNode, 1
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontData, "org/allbinary/business/context/modules/storefront/StoreFrontData" unless const_defined?(:StoreFrontData, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontInterface, "org/allbinary/business/context/modules/storefront/StoreFrontInterface" unless const_defined?(:StoreFrontInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module Entry; autoload :EntryData, "org/allbinary/business/entry/EntryData" unless const_defined?(:EntryData, false); end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Basket; autoload :BasketInterface, "org/allbinary/business/user/commerce/inventory/basket/BasketInterface" unless const_defined?(:BasketInterface, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Payment; autoload :PaymentData, "org/allbinary/business/user/commerce/money/payment/PaymentData" unless const_defined?(:PaymentData, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Shipping; autoload :ShippingMethodData, "org/allbinary/business/user/commerce/shipping/ShippingMethodData" unless const_defined?(:ShippingMethodData, false); end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :ModDomHelper, "org/allbinary/data/tree/dom/ModDomHelper" unless const_defined?(:ModDomHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringValidationUtil, "org/allbinary/logic/string/StringValidationUtil" unless const_defined?(:StringValidationUtil, false); end; end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
autoload :OrderData, "org/allbinary/business/user/commerce/inventory/order/OrderData" unless const_defined?(:OrderData, false)
autoload :OrderHistoryData, "org/allbinary/business/user/commerce/inventory/order/OrderHistoryData" unless const_defined?(:OrderHistoryData, false)

end; end; end; end; end; end; end

