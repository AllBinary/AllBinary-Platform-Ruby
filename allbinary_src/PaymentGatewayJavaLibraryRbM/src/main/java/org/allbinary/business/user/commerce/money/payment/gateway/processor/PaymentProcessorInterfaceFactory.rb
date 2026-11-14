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
# package org.allbinary.business.user.commerce.money.payment.gateway.processor

require "java/lang/Object"

class PaymentProcessorInterfaceFactory
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end
    

    def self.getInstance()
        return PaymentProcessorInterfaceFactory.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def getInstance(transformInfoInterface)
        java_monitor.synchronize do
        begin
            paymentTransactionInterface = PaymentTransactionInterfaceRequestFactory.getInstance().getInstance(transformInfoInterface)
            gatewayName = paymentTransactionInterface.getOrderHistory().getPaymentMethod()
            if !StringValidationUtil.getInstance().isEmpty(gatewayName)
                paymentType = PaymentTypeUtil.getInstance().get(gatewayName)
                paymentProcessorInterfaceFactoryInterface = paymentType.getPaymentProcessorInterfaceFactoryInterface()
                return paymentProcessorInterfaceFactoryInterface.getInstance(transformInfoInterface, paymentTransactionInterface)
            end
            raise StandardError.new("Error Getting PaymentProcessorInterface")
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().PAYMENTERROR)
                commonStrings = CommonStrings.getInstance()
                @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.GET_INSTANCE, e)
            end
            raise e
        end
        end
    end

    def self.instance()
        PaymentProcessorInterfaceFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        PaymentProcessorInterfaceFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = PaymentProcessorInterfaceFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "PaymentProcessorInterfaceFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :PaymentTransactionInterface, "org/allbinary/business/user/commerce/money/payment/gateway/transaction/PaymentTransactionInterface"
autoload :PaymentTransactionInterfaceRequestFactory, "org/allbinary/business/user/commerce/money/payment/gateway/transaction/PaymentTransactionInterfaceRequestFactory"
autoload :PaymentType, "org/allbinary/business/user/commerce/money/payment/types/PaymentType"
autoload :PaymentTypeUtil, "org/allbinary/business/user/commerce/money/payment/types/PaymentTypeUtil"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :StringValidationUtil, "org/allbinary/logic/string/StringValidationUtil"
autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :PaymentProcessorInterface, "org/allbinary/business/user/commerce/money/payment/gateway/processor/PaymentProcessorInterface"
autoload :PaymentProcessorInterfaceFactoryInterface, "org/allbinary/business/user/commerce/money/payment/gateway/processor/PaymentProcessorInterfaceFactoryInterface"

begin
    PaymentProcessorInterfaceFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

