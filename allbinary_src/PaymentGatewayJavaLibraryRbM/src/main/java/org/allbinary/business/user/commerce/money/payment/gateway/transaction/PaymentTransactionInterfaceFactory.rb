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
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/business/user/commerce/inventory/order/OrderHistory"
require "org/allbinary/business/user/commerce/money/payment/types/PaymentType"
require "org/allbinary/business/user/commerce/money/payment/types/PaymentTypeUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/business/user/commerce/money/payment/gateway/transaction/PaymentTransactionInterface"
require "org/allbinary/business/user/commerce/money/payment/gateway/transaction/PaymentTransactionInterfaceFactoryInterface"

class PaymentTransactionInterfaceFactory
    @@instance = PaymentTransactionInterfaceFactory.new()
end

