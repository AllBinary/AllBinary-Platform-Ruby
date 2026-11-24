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

require "java/lang/JavaOverload"
# require "javax/servlet/http/HttpServletRequest"
# require "javax/servlet/jsp/PageContext"
require "admin/taghelpers/TagHelper"

module ::Admin; module Taghelpers

class UpdateOrderHelper < TagHelper
    attr_accessor :logUtil, :request, :entryId, :orderId, :userName, :storeName, :shipDate, :orderDate, :transDate, :cancelDate, :status, :paymentMethod, :name, :type, :expiration, :number, :encryption, :billingName, :billingStreet, :billingCity, :billingState, :billingCode, :billingCountry, :shippingName, :shippingStreet, :shippingCity, :shippingState, :shippingCode, :shippingCountry, :shippingMethodName, :subTotal, :shippingCost, :tax, :total, :special, :userComment, :userCancelComment, :storeComment, :storeCancelComment

    def jfields_admin_taghelpers_UpdateOrderHelper
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @request = nil unless instance_variable_defined?(:@request)
        @entryId = nil unless instance_variable_defined?(:@entryId)
        @orderId = nil unless instance_variable_defined?(:@orderId)
        @userName = nil unless instance_variable_defined?(:@userName)
        @storeName = nil unless instance_variable_defined?(:@storeName)
        @shipDate = nil unless instance_variable_defined?(:@shipDate)
        @orderDate = nil unless instance_variable_defined?(:@orderDate)
        @transDate = nil unless instance_variable_defined?(:@transDate)
        @cancelDate = nil unless instance_variable_defined?(:@cancelDate)
        @status = nil unless instance_variable_defined?(:@status)
        @paymentMethod = nil unless instance_variable_defined?(:@paymentMethod)
        @name = nil unless instance_variable_defined?(:@name)
        @type = nil unless instance_variable_defined?(:@type)
        @expiration = nil unless instance_variable_defined?(:@expiration)
        @number = nil unless instance_variable_defined?(:@number)
        @encryption = nil unless instance_variable_defined?(:@encryption)
        @billingName = nil unless instance_variable_defined?(:@billingName)
        @billingStreet = nil unless instance_variable_defined?(:@billingStreet)
        @billingCity = nil unless instance_variable_defined?(:@billingCity)
        @billingState = nil unless instance_variable_defined?(:@billingState)
        @billingCode = nil unless instance_variable_defined?(:@billingCode)
        @billingCountry = nil unless instance_variable_defined?(:@billingCountry)
        @shippingName = nil unless instance_variable_defined?(:@shippingName)
        @shippingStreet = nil unless instance_variable_defined?(:@shippingStreet)
        @shippingCity = nil unless instance_variable_defined?(:@shippingCity)
        @shippingState = nil unless instance_variable_defined?(:@shippingState)
        @shippingCode = nil unless instance_variable_defined?(:@shippingCode)
        @shippingCountry = nil unless instance_variable_defined?(:@shippingCountry)
        @shippingMethodName = nil unless instance_variable_defined?(:@shippingMethodName)
        @subTotal = nil unless instance_variable_defined?(:@subTotal)
        @shippingCost = nil unless instance_variable_defined?(:@shippingCost)
        @tax = nil unless instance_variable_defined?(:@tax)
        @total = nil unless instance_variable_defined?(:@total)
        @special = nil unless instance_variable_defined?(:@special)
        @userComment = nil unless instance_variable_defined?(:@userComment)
        @userCancelComment = nil unless instance_variable_defined?(:@userCancelComment)
        @storeComment = nil unless instance_variable_defined?(:@storeComment)
        @storeCancelComment = nil unless instance_variable_defined?(:@storeCancelComment)
    end
    

    def initialize(hashMap, pageContext)
        super()
        jfields_admin_taghelpers_UpdateOrderHelper
        @request = pageContext.getRequest()
        self.getFormData()
    end
    

    def getFormData()
        @entryId = @request.getParameter(::Org::Allbinary::Business::Entry::EntryData.getInstance().ID)
        @orderId = @request.getParameter(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderData::ID)
        @userName = @request.getParameter(::Org::Allbinary::Business::User::UserData::USERNAME)
        @storeName = @request.getParameter(::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontData.getInstance().NAME)
        @shipDate = @request.getParameter(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::SHIPPEDDATE)
        @orderDate = @request.getParameter(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::ORDERDATE)
        @transDate = @request.getParameter(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::TRANSDATE)
        @cancelDate = @request.getParameter(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::CANCELDATE)
        @status = @request.getParameter(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::STATUS)
        @paymentMethod = @request.getParameter(::Org::Allbinary::Business::User::Commerce::Money::Payment::PaymentData::METHOD)
        @name = @request.getParameter(::Org::Allbinary::Business::User::Commerce::Money::Payment::PaymentData::NAME)
        @type = @request.getParameter(::Org::Allbinary::Business::User::Commerce::Money::Payment::PaymentData::TYPE)
        @expiration = @request.getParameter(::Org::Allbinary::Business::User::Commerce::Money::Payment::PaymentData::EXPIRATION)
        @number = @request.getParameter(::Org::Allbinary::Business::User::Commerce::Money::Payment::PaymentData::NUMBER)
        @encryption = @request.getParameter(::Org::Allbinary::Business::Entry::EntryData.getInstance().ENCRYPTION)
        @billingName = @request.getParameter(::Org::Allbinary::Business::User::Address::BillingAddressData::NAME)
        @billingStreet = @request.getParameter(::Org::Allbinary::Business::User::Address::BillingAddressData::STREET)
        @billingCity = @request.getParameter(::Org::Allbinary::Business::User::Address::BillingAddressData::CITY)
        @billingState = @request.getParameter(::Org::Allbinary::Business::User::Address::BillingAddressData::STATE)
        @billingCode = @request.getParameter(::Org::Allbinary::Business::User::Address::BillingAddressData::CODE)
        @billingCountry = @request.getParameter(::Org::Allbinary::Business::User::Address::BillingAddressData::COUNTRY)
        @shippingName = @request.getParameter(::Org::Allbinary::Business::User::Address::ShippingAddressData::NAME)
        @shippingStreet = @request.getParameter(::Org::Allbinary::Business::User::Address::ShippingAddressData::STREET)
        @shippingCity = @request.getParameter(::Org::Allbinary::Business::User::Address::ShippingAddressData::CITY)
        @shippingState = @request.getParameter(::Org::Allbinary::Business::User::Address::ShippingAddressData::STATE)
        @shippingCode = @request.getParameter(::Org::Allbinary::Business::User::Address::ShippingAddressData::CODE)
        @shippingCountry = @request.getParameter(::Org::Allbinary::Business::User::Address::ShippingAddressData::COUNTRY)
        @shippingMethodName = @request.getParameter(::Org::Allbinary::Business::User::Commerce::Shipping::ShippingMethodData::NAME)
        @subTotal = @request.getParameter(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::SUBTOTAL)
        @shippingCost = @request.getParameter(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::SHIPPINGCOST)
        @tax = @request.getParameter(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::TAX)
        @total = @request.getParameter(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::TOTAL)
        @special = @request.getParameter(::Org::Allbinary::Business::Entry::EntryData.getInstance().SPECIAL)
        @userComment = @request.getParameter(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderData::CUSTOMERCOMMENT)
        @userCancelComment = @request.getParameter(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderData::CUSTOMERCANCELCOMMENT)
        @storeComment = @request.getParameter(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderData::STORECOMMENT)
        @storeCancelComment = @request.getParameter(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderData::STORECANCELCOMMENT)
    end
    java_overload :getFormData, 0
    

    def update()
        begin
            success = "Successful update"
            orderHashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
            whereHashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
            orderHashMap.put(::Org::Allbinary::Business::Entry::EntryData.getInstance().ID, @entryId)
            orderHashMap.put(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderData::ID, @orderId)
            orderHashMap.put(::Org::Allbinary::Business::User::UserData::USERNAME, @userName)
            orderHashMap.put(::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontData.getInstance().NAME, @storeName)
            orderHashMap.put(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::SHIPPEDDATE, @shipDate)
            orderHashMap.put(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::ORDERDATE, @orderDate)
            orderHashMap.put(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::TRANSDATE, @transDate)
            orderHashMap.put(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::CANCELDATE, @cancelDate)
            orderHashMap.put(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::STATUS, @status)
            orderHashMap.put(::Org::Allbinary::Business::User::Commerce::Money::Payment::PaymentData::METHOD, @paymentMethod)
            orderHashMap.put(::Org::Allbinary::Business::User::Commerce::Money::Payment::PaymentData::NAME, @name)
            orderHashMap.put(::Org::Allbinary::Business::User::Commerce::Money::Payment::PaymentData::TYPE, @type)
            orderHashMap.put(::Org::Allbinary::Business::User::Commerce::Money::Payment::PaymentData::EXPIRATION, @expiration)
            orderHashMap.put(::Org::Allbinary::Business::User::Address::BillingAddressData::NAME, @billingName)
            orderHashMap.put(::Org::Allbinary::Business::User::Address::BillingAddressData::STREET, @billingStreet)
            orderHashMap.put(::Org::Allbinary::Business::User::Address::BillingAddressData::CITY, @billingCity)
            orderHashMap.put(::Org::Allbinary::Business::User::Address::BillingAddressData::STATE, @billingState)
            orderHashMap.put(::Org::Allbinary::Business::User::Address::BillingAddressData::CODE, @billingCode)
            orderHashMap.put(::Org::Allbinary::Business::User::Address::BillingAddressData::COUNTRY, @billingCountry)
            orderHashMap.put(::Org::Allbinary::Business::User::Address::ShippingAddressData::NAME, @shippingName)
            orderHashMap.put(::Org::Allbinary::Business::User::Address::ShippingAddressData::STREET, @shippingStreet)
            orderHashMap.put(::Org::Allbinary::Business::User::Address::ShippingAddressData::CITY, @shippingCity)
            orderHashMap.put(::Org::Allbinary::Business::User::Address::ShippingAddressData::STATE, @shippingState)
            orderHashMap.put(::Org::Allbinary::Business::User::Address::ShippingAddressData::CODE, @shippingCode)
            orderHashMap.put(::Org::Allbinary::Business::User::Address::ShippingAddressData::COUNTRY, @shippingCountry)
            orderHashMap.put(::Org::Allbinary::Business::User::Commerce::Shipping::ShippingMethodData::NAME, @shippingMethodName)
            orderHashMap.put(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::SUBTOTAL, @subTotal)
            orderHashMap.put(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::SHIPPINGCOST, @shippingCost)
            orderHashMap.put(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::TAX, @tax)
            orderHashMap.put(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::TOTAL, @total)
            orderHashMap.put(::Org::Allbinary::Business::Entry::EntryData.getInstance().SPECIAL, @special)
            orderHashMap.put(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderData::CUSTOMERCOMMENT, @userComment)
            orderHashMap.put(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderData::CUSTOMERCANCELCOMMENT, @userCancelComment)
            orderHashMap.put(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderData::STORECOMMENT, @storeComment)
            orderHashMap.put(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderData::STORECANCELCOMMENT, @storeCancelComment)
            whereHashMap.put(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderData::ID, @orderId)
            ::Org::Allbinary::DataPackage::Tables::User::Commerce::Inventory::Order::OrderHistoryEntityFactory.getInstance().update(whereHashMap, orderHashMap)
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, "update()")
            end
            return success
        rescue StandardError => e
            error = "Failed to update order table"
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "update()", e)
            end
            return error
        end
    end
    java_overload :update, 0
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontData, "org/allbinary/business/context/modules/storefront/StoreFrontData" unless const_defined?(:StoreFrontData, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module Entry; autoload :EntryData, "org/allbinary/business/entry/EntryData" unless const_defined?(:EntryData, false); end; end; end; end
module ::Org; module Allbinary; module Business; module User; autoload :UserData, "org/allbinary/business/user/UserData" unless const_defined?(:UserData, false); end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Address; autoload :BillingAddressData, "org/allbinary/business/user/address/BillingAddressData" unless const_defined?(:BillingAddressData, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Address; autoload :ShippingAddressData, "org/allbinary/business/user/address/ShippingAddressData" unless const_defined?(:ShippingAddressData, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Order; autoload :OrderData, "org/allbinary/business/user/commerce/inventory/order/OrderData" unless const_defined?(:OrderData, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Order; autoload :OrderHistoryData, "org/allbinary/business/user/commerce/inventory/order/OrderHistoryData" unless const_defined?(:OrderHistoryData, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Payment; autoload :PaymentData, "org/allbinary/business/user/commerce/money/payment/PaymentData" unless const_defined?(:PaymentData, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Shipping; autoload :ShippingMethodData, "org/allbinary/business/user/commerce/shipping/ShippingMethodData" unless const_defined?(:ShippingMethodData, false); end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module User; module Commerce; module Inventory; module Order; autoload :OrderHistoryEntityFactory, "org/allbinary/data/tables/user/commerce/inventory/order/OrderHistoryEntityFactory" unless const_defined?(:OrderHistoryEntityFactory, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end

