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

require "java/io/Serializable"
# require "java/util/Set"
require "org/allbinary/business/user/commerce/inventory/order/OrderInterface"

class Order
    include OrderInterface
    include Serializable
    attr_accessor :basket, :paymentMethod, :shippingType, :storeName, :special, :id, :userComment, :userCancelComment, :storeComment, :storeCancelComment

    def initialize_fields
        @basket = nil
        @paymentMethod = nil
        @shippingType = nil
        @storeName = nil
        @special = nil
        @id = nil
        @userComment = nil
        @userCancelComment = nil
        @storeComment = nil
        @storeCancelComment = nil
    end

    def initialize(*args)
        case args.length
        when 1 then constructor1(*args)
        when 6 then constructor6(*args)
        end
    end
    

    def constructor1(basket)
        initialize_fields
        @basket = basket
        @id = nil
        @shippingType = StringUtil.getInstance().EMPTY_STRING
    end
    

    def constructor6(storeName, basket, id, shippingType, special, paymentMethod)
        initialize_fields
        @storeName = storeName
        @basket = basket
        @id = id
        @shippingType = shippingType
        @special = special
        @paymentMethod = paymentMethod
    end
    

    def isIdValid()
        if self.getId() == nil || self.getId().compareTo(StringUtil.getInstance().EMPTY_STRING) == 0 || self.getId().length() > OrderHistoryData::MAXIDLEN || !StringValidationUtil.getInstance().isNumber(self.getId())
            return false
        end
        return true
    end
    

    def isValid()
        return true
    end
    

    def getIdValidationInfo()
        _EMPTY_STRING = StringUtil.getInstance().EMPTY_STRING
        if self.getId() == nil || self.getId().compareTo(_EMPTY_STRING) == 0 || self.getId().length() > OrderHistoryData::MAXIDLEN || !StringValidationUtil.getInstance().isNumber(self.getId())
            return "Please enter a valid order Id < " + (OrderHistoryData::MAXIDLEN).to_s + " digits in length.<br>"
        end
        return _EMPTY_STRING
    end
    

    def setShippingMethod(shippingType)
        @shippingType = shippingType
    end
    

    def setPaymentMethod(value)
        @paymentMethod = value
    end
    

    def setSpecial(special)
        @special = special
    end
    

    def setId(value)
        @id = value
    end
    

    def setStoreName(value)
        @storeName = value
    end
    

    def setUserComments(value)
        @userComment = value
    end
    

    def setUserCancelComments(value)
        @userCancelComment = value
    end
    

    def setStoreComments(value)
        @storeComment = value
    end
    

    def setStoreCancelComments(value)
        @storeCancelComment = value
    end
    

    def getBasket()
        return @basket
    end
    

    def getShippingMethod()
        return @shippingType
    end
    

    def getPaymentMethod()
        return @paymentMethod
    end
    

    def getSpecial()
        return @special
    end
    

    def getId()
        return @id
    end
    

    def getStoreName()
        return @storeName
    end
    

    def getUserComments()
        return @userComment
    end
    

    def getUserCancelComments()
        return @userCancelComment
    end
    

    def getStoreComments()
        return @storeComment
    end
    

    def getStoreCancelComments()
        return @storeCancelComment
    end
    

    def reviewOrder(paymentMethod)
        return "Create your own Order.reviewOrder"
    end
    

    def viewOrder(paymentMethod)
        return "Create your own Order.viewOrder"
    end
    

    def emailOrder(userName, paymentMethod, storeFrontInterface)
        return "Create your own Order.emailOrder"
    end
    

    def toHashMapOrder()
        hashMap = StdUtil.getInstance().createHashMap()
        hashMap.put(PaymentData::METHOD, @paymentMethod)
        hashMap.put(ShippingMethodData::NAME, @shippingType)
        hashMap.put(StoreFrontData.getInstance().NAME, @storeName)
        hashMap.put(EntryData.getInstance().SPECIAL, @special)
        hashMap.put(OrderData::ID, @id)
        hashMap.put(OrderData::CUSTOMERCOMMENT, @userComment)
        hashMap.put(OrderData::CUSTOMERCANCELCOMMENT, @userCancelComment)
        hashMap.put(OrderData::STORECOMMENT, @storeComment)
        hashMap.put(OrderData::STORECANCELCOMMENT, @storeCancelComment)
        return hashMap
    end
    

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
            value = StringUtil.getInstance().getNonNull(value)
            node.appendChild(ModDomHelper.createNameValueNodes(document, name, value))
        end
        return node
    end
end

require "java/util/HashMap"
require "org/allbinary/business/context/modules/storefront/StoreFrontData"
require "org/allbinary/business/context/modules/storefront/StoreFrontInterface"
require "org/allbinary/business/entry/EntryData"
require "org/allbinary/business/user/commerce/inventory/basket/BasketInterface"
require "org/allbinary/business/user/commerce/money/payment/PaymentData"
require "org/allbinary/business/user/commerce/shipping/ShippingMethodData"
require "org/allbinary/data/tree/dom/ModDomHelper"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/logic/string/StringValidationUtil"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"
require "org/allbinary/business/user/commerce/inventory/order/OrderData"
require "org/allbinary/business/user/commerce/inventory/order/OrderHistoryData"

