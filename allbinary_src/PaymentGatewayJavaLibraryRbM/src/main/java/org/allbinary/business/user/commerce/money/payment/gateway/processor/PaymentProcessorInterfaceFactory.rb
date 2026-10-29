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
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/business/user/commerce/money/payment/gateway/transaction/PaymentTransactionInterface"
require "org/allbinary/business/user/commerce/money/payment/gateway/transaction/PaymentTransactionInterfaceRequestFactory"
require "org/allbinary/business/user/commerce/money/payment/types/PaymentType"
require "org/allbinary/business/user/commerce/money/payment/types/PaymentTypeUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringValidationUtil"
require "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/business/user/commerce/money/payment/gateway/processor/PaymentProcessorInterface"
require "org/allbinary/business/user/commerce/money/payment/gateway/processor/PaymentProcessorInterfaceFactoryInterface"

class PaymentProcessorInterfaceFactory
    @@instance = PaymentProcessorInterfaceFactory.new()
end

