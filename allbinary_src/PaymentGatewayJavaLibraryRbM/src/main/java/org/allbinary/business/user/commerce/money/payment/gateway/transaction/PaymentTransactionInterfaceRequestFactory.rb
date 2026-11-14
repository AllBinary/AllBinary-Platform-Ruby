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

# require "javax/servlet/http/HttpServletRequest"
# require "javax/servlet/jsp/PageContext"

class PaymentTransactionInterfaceRequestFactory
    attr_accessor :logUtil, :commonStrings

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
    end
    

    def self.getInstance()
        return PaymentTransactionInterfaceRequestFactory.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def getInstance(transformInfoInterface)
        begin
            httpTransformInfoInterface = transformInfoInterface
            pageContext = httpTransformInfoInterface.getPageContext()
            httpServletRequest = pageContext.getRequest()
            command = httpServletRequest.getParameter(org.allbinary.globals.GLOBALS2.ADMINCOMMAND)
            if command != nil && (command <=> org.allbinary.globals.GLOBALS2.AUTHORIZEFORMEVALBODYONERROR) == 0
                return self.generateFromTestData(transformInfoInterface)
            else
                propertiesHashMap = httpTransformInfoInterface.getPropertiesHashMap()
                weblisketSession = WeblisketSession.new(propertiesHashMap, pageContext)
                storeFrontInterface = StoreFrontFactory.getInstance(weblisketSession.getStoreName())
                order = weblisketSession.getOrder()
                orderId = order.getId()
                orderHistoryEntityInterface = OrderHistoryEntityFactory.getInstance()
                orderReview = orderHistoryEntityInterface.getOrder(orderId)
                orderPaymentInfo = orderReview.getPaymentInfo()
                orderPaymentInfo.setTransactionType(TransactionTypeFactory.getInstance().SALE.to_s)
                orderPaymentInfo.setTenderType(TenderTypeFactory.getInstance().CREDITCARD.to_s)
                orderReview.setPaymentInfo(orderPaymentInfo)
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().PAYMENT)
                    @logUtil.putF(orderReview.getId(), self, "getPaymentTransactionInterface()")
                end
                paymentTransactionInterface = PaymentTransactionInterfaceFactory.getInstance().getInstance(orderReview)
                return paymentTransactionInterface
            end
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().PAYMENTERROR)
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
            weblisketSession = WeblisketSession.new(propertiesHashMap, pageContext)
            storeFrontInterface = StoreFrontFactory.getInstance(weblisketSession.getStoreName())
            httpServletRequest = pageContext.getRequest()
            gatewayName = weblisketSession.getPaymentMethod()
            if StringValidationUtil.getInstance().isEmpty(gatewayName)
                gatewayName = httpServletRequest.getParameter(PaymentGatewayData::NAME.to_s)
            end
            transactionType = httpServletRequest.getParameter(PaymentData::TRANSACTIONTYPE)
            tenderType = httpServletRequest.getParameter(PaymentData::TENDERTYPE)
            payment = Payment.new()
            payment.setTransactionType(transactionType)
            payment.setTenderType(tenderType)
            orderReview = OrderHistory.new(Basket.new())
            orderReview.setStoreName(storeFrontInterface.getName())
            orderReview.setPaymentMethod(gatewayName)
            orderReview.setUserName("testing")
            orderId = httpServletRequest.getParameter("orderNumber")
            if orderId == nil || (orderId <=> StringUtil.getInstance().EMPTY_STRING) == 0
                orderId = OrderIdGenerator.new().getNext()
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
                streetAddress = StreetAddress.new()
                streetAddress.setName(name)
                streetAddress.setStreet(street)
                streetAddress.setCity(city)
                streetAddress.setState(state)
                streetAddress.setCode(zip)
                email = httpServletRequest.getParameter("email")
                amount = httpServletRequest.getParameter("amount")
                orderReview.setTotal(Money.new(amount))
                orderReview.setBillingAddress(streetAddress)
            else
                orderReview.setId(orderId)
            end
            orderReview.setPaymentInfo(payment)
            paymentTransactionInterface = PaymentTransactionInterfaceFactory.getInstance().getInstance(orderReview)
            return paymentTransactionInterface
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().PAYMENTERROR)
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

autoload :HashMap, "java/util/HashMap"
autoload :StoreFrontFactory, "org/allbinary/business/context/modules/storefront/StoreFrontFactory"
autoload :StoreFrontInterface, "org/allbinary/business/context/modules/storefront/StoreFrontInterface"
autoload :StreetAddress, "org/allbinary/business/user/address/StreetAddress"
autoload :Basket, "org/allbinary/business/user/commerce/inventory/basket/Basket"
autoload :OrderHistory, "org/allbinary/business/user/commerce/inventory/order/OrderHistory"
autoload :OrderInterface, "org/allbinary/business/user/commerce/inventory/order/OrderInterface"
autoload :Money, "org/allbinary/business/user/commerce/money/Money"
autoload :Payment, "org/allbinary/business/user/commerce/money/payment/Payment"
autoload :PaymentData, "org/allbinary/business/user/commerce/money/payment/PaymentData"
autoload :PaymentGatewayData, "org/allbinary/business/user/commerce/money/payment/gateway/PaymentGatewayData"
autoload :TenderTypeFactory, "org/allbinary/business/user/commerce/money/payment/types/TenderTypeFactory"
autoload :TransactionTypeFactory, "org/allbinary/business/user/commerce/money/payment/types/TransactionTypeFactory"
autoload :OrderIdGenerator, "org/allbinary/data/generator/OrderIdGenerator"
autoload :OrderHistoryEntityFactory, "org/allbinary/data/tables/user/commerce/inventory/order/OrderHistoryEntityFactory"
autoload :OrderHistoryEntityInterface, "org/allbinary/data/tables/user/commerce/inventory/order/OrderHistoryEntityInterface"
autoload :WeblisketSession, "org/allbinary/logic/communication/http/request/session/WeblisketSession"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :StringUtil, "org/allbinary/logic/string/StringUtil"
autoload :StringValidationUtil, "org/allbinary/logic/string/StringValidationUtil"
autoload :TransformInfoHttpInterface, "org/allbinary/logic/visual/transform/info/TransformInfoHttpInterface"
autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :PaymentTransactionInterface, "org/allbinary/business/user/commerce/money/payment/gateway/transaction/PaymentTransactionInterface"
autoload :PaymentTransactionInterfaceFactory, "org/allbinary/business/user/commerce/money/payment/gateway/transaction/PaymentTransactionInterfaceFactory"

begin
    PaymentTransactionInterfaceRequestFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

