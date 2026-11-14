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


class PaymentTransactionInterfaceFactory
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end
    

    def self.getInstance()
        return PaymentTransactionInterfaceFactory.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def getInstance(orderReview)
        begin
            gatewayName = orderReview.getPaymentMethod()
            if gatewayName != nil
                paymentType = PaymentTypeUtil.getInstance().get(gatewayName)
                paymentTransactionInterfaceFactoryInterface = paymentType.getPaymentTransactionInterfaceFactoryInterface()
                paymentTransactionInterface = paymentTransactionInterfaceFactoryInterface.getInstance(orderReview)
                return paymentTransactionInterface
            end
            raise StandardError.new("Failed to create PaymentTransactionInterface: " + "GatewayName is: " + gatewayName)
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().PAYMENTERROR)
                commonStrings = CommonStrings.getInstance()
                @logUtil.put("Failed to generate test data", self, commonStrings.GET_INSTANCE, e)
            end
            raise e
        end
    end

    def self.instance()
        PaymentTransactionInterfaceFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        PaymentTransactionInterfaceFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = PaymentTransactionInterfaceFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "PaymentTransactionInterfaceFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :OrderHistory, "org/allbinary/business/user/commerce/inventory/order/OrderHistory"
autoload :PaymentType, "org/allbinary/business/user/commerce/money/payment/types/PaymentType"
autoload :PaymentTypeUtil, "org/allbinary/business/user/commerce/money/payment/types/PaymentTypeUtil"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :PaymentTransactionInterface, "org/allbinary/business/user/commerce/money/payment/gateway/transaction/PaymentTransactionInterface"
autoload :PaymentTransactionInterfaceFactoryInterface, "org/allbinary/business/user/commerce/money/payment/gateway/transaction/PaymentTransactionInterfaceFactoryInterface"

begin
    PaymentTransactionInterfaceFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

