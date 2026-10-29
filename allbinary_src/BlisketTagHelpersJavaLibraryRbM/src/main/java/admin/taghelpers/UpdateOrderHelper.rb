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
# package admin.taghelpers

# require "javax/servlet/http/HttpServletRequest"
# require "javax/servlet/jsp/PageContext"
require "admin/taghelpers/TagHelper"

class UpdateOrderHelper < TagHelper
    attr_accessor :logUtil, :request, :entryId, :orderId, :userName, :storeName, :shipDate, :orderDate, :transDate, :cancelDate, :status, :paymentMethod, :name, :type, :expiration, :number, :encryption, :billingName, :billingStreet, :billingCity, :billingState, :billingCode, :billingCountry, :shippingName, :shippingStreet, :shippingCity, :shippingState, :shippingCode, :shippingCountry, :shippingMethodName, :subTotal, :shippingCost, :tax, :total, :special, :userComment, :userCancelComment, :storeComment, :storeCancelComment

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @request = nil
        @entryId = nil
        @orderId = nil
        @userName = nil
        @storeName = nil
        @shipDate = nil
        @orderDate = nil
        @transDate = nil
        @cancelDate = nil
        @status = nil
        @paymentMethod = nil
        @name = nil
        @type = nil
        @expiration = nil
        @number = nil
        @encryption = nil
        @billingName = nil
        @billingStreet = nil
        @billingCity = nil
        @billingState = nil
        @billingCode = nil
        @billingCountry = nil
        @shippingName = nil
        @shippingStreet = nil
        @shippingCity = nil
        @shippingState = nil
        @shippingCode = nil
        @shippingCountry = nil
        @shippingMethodName = nil
        @subTotal = nil
        @shippingCost = nil
        @tax = nil
        @total = nil
        @special = nil
        @userComment = nil
        @userCancelComment = nil
        @storeComment = nil
        @storeCancelComment = nil
    end
    

    def initialize(hashMap, pageContext)
        super()
        initialize_fields
        @request = pageContext.getRequest()
        self.getFormData()
    end
    

    def getFormData()
        @entryId = @request.getParameter(EntryData.getInstance().ID)
        @orderId = @request.getParameter(OrderData::ID)
        @userName = @request.getParameter(UserData::USERNAME)
        @storeName = @request.getParameter(StoreFrontData.getInstance().NAME)
        @shipDate = @request.getParameter(OrderHistoryData::SHIPPEDDATE)
        @orderDate = @request.getParameter(OrderHistoryData::ORDERDATE)
        @transDate = @request.getParameter(OrderHistoryData::TRANSDATE)
        @cancelDate = @request.getParameter(OrderHistoryData::CANCELDATE)
        @status = @request.getParameter(OrderHistoryData::STATUS)
        @paymentMethod = @request.getParameter(PaymentData::METHOD)
        @name = @request.getParameter(PaymentData::NAME)
        @type = @request.getParameter(PaymentData::TYPE)
        @expiration = @request.getParameter(PaymentData::EXPIRATION)
        @number = @request.getParameter(PaymentData::NUMBER)
        @encryption = @request.getParameter(EntryData.getInstance().ENCRYPTION)
        @billingName = @request.getParameter(BillingAddressData::NAME)
        @billingStreet = @request.getParameter(BillingAddressData::STREET)
        @billingCity = @request.getParameter(BillingAddressData::CITY)
        @billingState = @request.getParameter(BillingAddressData::STATE)
        @billingCode = @request.getParameter(BillingAddressData::CODE)
        @billingCountry = @request.getParameter(BillingAddressData::COUNTRY)
        @shippingName = @request.getParameter(ShippingAddressData::NAME)
        @shippingStreet = @request.getParameter(ShippingAddressData::STREET)
        @shippingCity = @request.getParameter(ShippingAddressData::CITY)
        @shippingState = @request.getParameter(ShippingAddressData::STATE)
        @shippingCode = @request.getParameter(ShippingAddressData::CODE)
        @shippingCountry = @request.getParameter(ShippingAddressData::COUNTRY)
        @shippingMethodName = @request.getParameter(ShippingMethodData::NAME)
        @subTotal = @request.getParameter(OrderHistoryData::SUBTOTAL)
        @shippingCost = @request.getParameter(OrderHistoryData::SHIPPINGCOST)
        @tax = @request.getParameter(OrderHistoryData::TAX)
        @total = @request.getParameter(OrderHistoryData::TOTAL)
        @special = @request.getParameter(EntryData.getInstance().SPECIAL)
        @userComment = @request.getParameter(OrderData::CUSTOMERCOMMENT)
        @userCancelComment = @request.getParameter(OrderData::CUSTOMERCANCELCOMMENT)
        @storeComment = @request.getParameter(OrderData::STORECOMMENT)
        @storeCancelComment = @request.getParameter(OrderData::STORECANCELCOMMENT)
    end
    

    def update()
        begin
            success = "Successful update"
            orderHashMap = StdUtil.getInstance().createHashMap()
            whereHashMap = StdUtil.getInstance().createHashMap()
            orderHashMap.put(EntryData.getInstance().ID, @entryId)
            orderHashMap.put(OrderData::ID, @orderId)
            orderHashMap.put(UserData::USERNAME, @userName)
            orderHashMap.put(StoreFrontData.getInstance().NAME, @storeName)
            orderHashMap.put(OrderHistoryData::SHIPPEDDATE, @shipDate)
            orderHashMap.put(OrderHistoryData::ORDERDATE, @orderDate)
            orderHashMap.put(OrderHistoryData::TRANSDATE, @transDate)
            orderHashMap.put(OrderHistoryData::CANCELDATE, @cancelDate)
            orderHashMap.put(OrderHistoryData::STATUS, @status)
            orderHashMap.put(PaymentData::METHOD, @paymentMethod)
            orderHashMap.put(PaymentData::NAME, @name)
            orderHashMap.put(PaymentData::TYPE, @type)
            orderHashMap.put(PaymentData::EXPIRATION, @expiration)
            orderHashMap.put(BillingAddressData::NAME, @billingName)
            orderHashMap.put(BillingAddressData::STREET, @billingStreet)
            orderHashMap.put(BillingAddressData::CITY, @billingCity)
            orderHashMap.put(BillingAddressData::STATE, @billingState)
            orderHashMap.put(BillingAddressData::CODE, @billingCode)
            orderHashMap.put(BillingAddressData::COUNTRY, @billingCountry)
            orderHashMap.put(ShippingAddressData::NAME, @shippingName)
            orderHashMap.put(ShippingAddressData::STREET, @shippingStreet)
            orderHashMap.put(ShippingAddressData::CITY, @shippingCity)
            orderHashMap.put(ShippingAddressData::STATE, @shippingState)
            orderHashMap.put(ShippingAddressData::CODE, @shippingCode)
            orderHashMap.put(ShippingAddressData::COUNTRY, @shippingCountry)
            orderHashMap.put(ShippingMethodData::NAME, @shippingMethodName)
            orderHashMap.put(OrderHistoryData::SUBTOTAL, @subTotal)
            orderHashMap.put(OrderHistoryData::SHIPPINGCOST, @shippingCost)
            orderHashMap.put(OrderHistoryData::TAX, @tax)
            orderHashMap.put(OrderHistoryData::TOTAL, @total)
            orderHashMap.put(EntryData.getInstance().SPECIAL, @special)
            orderHashMap.put(OrderData::CUSTOMERCOMMENT, @userComment)
            orderHashMap.put(OrderData::CUSTOMERCANCELCOMMENT, @userCancelComment)
            orderHashMap.put(OrderData::STORECOMMENT, @storeComment)
            orderHashMap.put(OrderData::STORECANCELCOMMENT, @storeCancelComment)
            whereHashMap.put(OrderData::ID, @orderId)
            OrderHistoryEntityFactory.getInstance().update(whereHashMap, orderHashMap)
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, "update()")
            end
            return success
        rescue StandardError => e
            error = "Failed to update order table"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "update()", e)
            end
            return error
        end
    end
end

require "java/util/HashMap"
require "org/allbinary/business/context/modules/storefront/StoreFrontData"
require "org/allbinary/business/entry/EntryData"
require "org/allbinary/business/user/UserData"
require "org/allbinary/business/user/address/BillingAddressData"
require "org/allbinary/business/user/address/ShippingAddressData"
require "org/allbinary/business/user/commerce/inventory/order/OrderData"
require "org/allbinary/business/user/commerce/inventory/order/OrderHistoryData"
require "org/allbinary/business/user/commerce/money/payment/PaymentData"
require "org/allbinary/business/user/commerce/shipping/ShippingMethodData"
require "org/allbinary/data/tables/user/commerce/inventory/order/OrderHistoryEntityFactory"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogUtil"

