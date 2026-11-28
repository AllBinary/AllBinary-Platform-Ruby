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
# package org.allbinary.business.user.commerce.money.payment.gateway.transaction

require "java/lang/JavaClass"
# require "javax/servlet/http/HttpServletRequest"
# require "javax/servlet/jsp/PageContext"

module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Payment; module Gateway; module Transaction

class PaymentTransactionInterfaceRequestFactory
    attr_accessor :logUtil, :commonStrings

    def jfields_org_allbinary_business_user_commerce_money_payment_gateway_transaction_PaymentTransactionInterfaceRequestFactory
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def initialize()
        jfields_org_allbinary_business_user_commerce_money_payment_gateway_transaction_PaymentTransactionInterfaceRequestFactory
    end
    

    # throws Exception
    def getInstance(transformInfoInterface)
        begin
            httpTransformInfoInterface = transformInfoInterface
            pageContext = httpTransformInfoInterface.getPageContext()
            httpServletRequest = pageContext.getRequest()
            command = httpServletRequest.getParameter(::Org::Allbinary::Globals::GLOBALS2::ADMINCOMMAND)
            if command != nil && (command <=> ::Org::Allbinary::Globals::GLOBALS2::AUTHORIZEFORMEVALBODYONERROR) == 0
                return self.generateFromTestData(transformInfoInterface)
            else
                propertiesHashMap = httpTransformInfoInterface.getPropertiesHashMap()
                weblisketSession = ::Org::Allbinary::Logic::Communication::Http::Request::Session::WeblisketSession.new(propertiesHashMap, pageContext)
                storeFrontInterface = ::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontFactory.getInstance(weblisketSession.getStoreName())
                order = weblisketSession.getOrder()
                orderId = order.getId()
                orderHistoryEntityInterface = ::Org::Allbinary::DataPackage::Tables::User::Commerce::Inventory::Order::OrderHistoryEntityFactory.getInstance()
                orderReview = orderHistoryEntityInterface.getOrder(orderId)
                orderPaymentInfo = orderReview.getPaymentInfo()
                orderPaymentInfo.setTransactionType(::Org::Allbinary::Business::User::Commerce::Money::Payment::Types::TransactionTypeFactory.getInstance().SALE.to_s)
                orderPaymentInfo.setTenderType(::Org::Allbinary::Business::User::Commerce::Money::Payment::Types::TenderTypeFactory.getInstance().CREDITCARD.to_s)
                orderReview.setPaymentInfo(orderPaymentInfo)
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().PAYMENT)
                    @logUtil.putF(orderReview.getId(), self, "getPaymentTransactionInterface()")
                end
                paymentTransactionInterface = PaymentTransactionInterfaceFactory.getInstance().getInstance(orderReview)
                return paymentTransactionInterface
            end
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().PAYMENTERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "getPaymentTransactionInterface()", e)
            end
            raise e
        end
    end
    

    # throws Exception
    def generateFromTestData(transformInfoInterface)
        begin
            httpTransformInfoInterface = transformInfoInterface
            propertiesHashMap = httpTransformInfoInterface.getPropertiesHashMap()
            pageContext = httpTransformInfoInterface.getPageContext()
            weblisketSession = ::Org::Allbinary::Logic::Communication::Http::Request::Session::WeblisketSession.new(propertiesHashMap, pageContext)
            storeFrontInterface = ::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontFactory.getInstance(weblisketSession.getStoreName())
            httpServletRequest = pageContext.getRequest()
            gatewayName = weblisketSession.getPaymentMethod()
            if ::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance().isEmpty(gatewayName)
                gatewayName = httpServletRequest.getParameter(::Org::Allbinary::Business::User::Commerce::Money::Payment::Gateway::PaymentGatewayData::NAME.to_s)
            end
            transactionType = httpServletRequest.getParameter(::Org::Allbinary::Business::User::Commerce::Money::Payment::PaymentData::TRANSACTIONTYPE)
            tenderType = httpServletRequest.getParameter(::Org::Allbinary::Business::User::Commerce::Money::Payment::PaymentData::TENDERTYPE)
            payment = ::Org::Allbinary::Business::User::Commerce::Money::Payment::Payment.new()
            payment.setTransactionType(transactionType)
            payment.setTenderType(tenderType)
            orderReview = ::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistory.new(::Org::Allbinary::Business::User::Commerce::Inventory::Basket::Basket.new())
            orderReview.setStoreName(storeFrontInterface.getName())
            orderReview.setPaymentMethod(gatewayName)
            orderReview.setUserName("testing")
            orderId = httpServletRequest.getParameter("orderNumber")
            if orderId == nil || (orderId <=> ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING) == 0
                orderId = ::Org::Allbinary::DataPackage::Generator::OrderIdGenerator.new().getNext()
                orderReview.setId(orderId)
                account = httpServletRequest.getParameter("account")
                expirationDate = httpServletRequest.getParameter("expirationDate")
                checkNumber = httpServletRequest.getParameter("checkNumber")
                driversLicense = httpServletRequest.getParameter("driversLicense")
                magneticInkCheckReader = httpServletRequest.getParameter("magneticInkCheckReader")
                aba = httpServletRequest.getParameter("aba")
                accountType = httpServletRequest.getParameter("accountType")
                name = httpServletRequest.getParameter("name")
                payment.setName(name)
                payment.setNumber(account)
                payment.setExpiration(expirationDate)
                payment.setCheckNumber(checkNumber)
                payment.setDriversLicense(driversLicense)
                payment.setMagneticInkCheckReader(magneticInkCheckReader)
                payment.setAba(aba)
                payment.setAccountType(accountType)
                street = httpServletRequest.getParameter("street")
                city = httpServletRequest.getParameter("city")
                state = httpServletRequest.getParameter("state")
                zip = httpServletRequest.getParameter("zip")
                streetAddress = ::Org::Allbinary::Business::User::Address::StreetAddress.new()
                streetAddress.setName(name)
                streetAddress.setStreet(street)
                streetAddress.setCity(city)
                streetAddress.setState(state)
                streetAddress.setCode(zip)
                email = httpServletRequest.getParameter("email")
                amount = httpServletRequest.getParameter("amount")
                orderReview.setTotal(::Org::Allbinary::Business::User::Commerce::Money::Money.new(amount))
                orderReview.setBillingAddress(streetAddress)
            else
                orderReview.setId(orderId)
            end
            orderReview.setPaymentInfo(payment)
            paymentTransactionInterface = PaymentTransactionInterfaceFactory.getInstance().getInstance(orderReview)
            return paymentTransactionInterface
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().PAYMENTERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "generatePaymentTransactionInterfaceFromTestData()", e)
            end
            raise e
        end
    end

    def self.instance()
        PaymentTransactionInterfaceRequestFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        PaymentTransactionInterfaceRequestFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = PaymentTransactionInterfaceRequestFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "PaymentTransactionInterfaceRequestFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontFactory, "org/allbinary/business/context/modules/storefront/StoreFrontFactory" unless const_defined?(:StoreFrontFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontInterface, "org/allbinary/business/context/modules/storefront/StoreFrontInterface" unless const_defined?(:StoreFrontInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Address; autoload :StreetAddress, "org/allbinary/business/user/address/StreetAddress" unless const_defined?(:StreetAddress, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Basket; autoload :Basket, "org/allbinary/business/user/commerce/inventory/basket/Basket" unless const_defined?(:Basket, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Order; autoload :OrderHistory, "org/allbinary/business/user/commerce/inventory/order/OrderHistory" unless const_defined?(:OrderHistory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Order; autoload :OrderInterface, "org/allbinary/business/user/commerce/inventory/order/OrderInterface" unless const_defined?(:OrderInterface, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; autoload :Money, "org/allbinary/business/user/commerce/money/Money" unless const_defined?(:Money, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Payment; autoload :Payment, "org/allbinary/business/user/commerce/money/payment/Payment" unless const_defined?(:Payment, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Payment; autoload :PaymentData, "org/allbinary/business/user/commerce/money/payment/PaymentData" unless const_defined?(:PaymentData, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Payment; module Gateway; autoload :PaymentGatewayData, "org/allbinary/business/user/commerce/money/payment/gateway/PaymentGatewayData" unless const_defined?(:PaymentGatewayData, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Payment; module Types; autoload :TenderTypeFactory, "org/allbinary/business/user/commerce/money/payment/types/TenderTypeFactory" unless const_defined?(:TenderTypeFactory, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Payment; module Types; autoload :TransactionTypeFactory, "org/allbinary/business/user/commerce/money/payment/types/TransactionTypeFactory" unless const_defined?(:TransactionTypeFactory, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Generator; autoload :OrderIdGenerator, "org/allbinary/data/generator/OrderIdGenerator" unless const_defined?(:OrderIdGenerator, false); end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module User; module Commerce; module Inventory; module Order; autoload :OrderHistoryEntityFactory, "org/allbinary/data/tables/user/commerce/inventory/order/OrderHistoryEntityFactory" unless const_defined?(:OrderHistoryEntityFactory, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module User; module Commerce; module Inventory; module Order; autoload :OrderHistoryEntityInterface, "org/allbinary/data/tables/user/commerce/inventory/order/OrderHistoryEntityInterface" unless const_defined?(:OrderHistoryEntityInterface, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Http; module Request; module Session; autoload :WeblisketSession, "org/allbinary/logic/communication/http/request/session/WeblisketSession" unless const_defined?(:WeblisketSession, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringValidationUtil, "org/allbinary/logic/string/StringValidationUtil" unless const_defined?(:StringValidationUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoHttpInterface, "org/allbinary/logic/visual/transform/info/TransformInfoHttpInterface" unless const_defined?(:TransformInfoHttpInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface" unless const_defined?(:TransformInfoInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Globals; autoload :GLOBALS2, "org/allbinary/globals/GLOBALS2" unless const_defined?(:GLOBALS2, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end
autoload :PaymentTransactionInterface, "org/allbinary/business/user/commerce/money/payment/gateway/transaction/PaymentTransactionInterface" unless const_defined?(:PaymentTransactionInterface, false)
autoload :PaymentTransactionInterfaceFactory, "org/allbinary/business/user/commerce/money/payment/gateway/transaction/PaymentTransactionInterfaceFactory" unless const_defined?(:PaymentTransactionInterfaceFactory, false)

begin
    PaymentTransactionInterfaceRequestFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end; end; end; end

