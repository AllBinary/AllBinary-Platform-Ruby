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
# package org.allbinary.business.user.commerce.money.payment.gateway

# require "javax/servlet/http/HttpServletRequest"
require "org/allbinary/business/user/commerce/money/payment/gateway/PaymentGatewayInterfaceFactoryInterface"

class PaymentGatewayInterfaceFactory
    include PaymentGatewayInterfaceFactoryInterface
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end
    

    def initialize()
        initialize_fields
    end
    

    # throws Exception
    def getInstance(httpServletRequest)
        commonStrings = CommonStrings.getInstance()
        begin
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().PAYMENT)
                @logUtil.putF("Getting", self, commonStrings.GET_INSTANCE)
            end
            return self.getInstance(RequestParams.new(httpServletRequest).toHashMap())
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().PAYMENTERROR)
                @logUtil.put(commonStrings.EXCEPTION, self, "getInstance(HttpServletRequest)", e)
            end
            raise e
        end
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def getInstance(paymentType)
        hashMap = StdUtil.getInstance().createHashMap()
        hashMap.put(PaymentGatewayData::NAME.to_s, paymentType.getName())
        return self.getInstance(hashMap)
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def getInstance(hashMap)
        commonStrings = CommonStrings.getInstance()
        begin
            gatewayName = hashMap.get(PaymentGatewayData::NAME.to_s)
            paymentType = BasicPaymentTypeUtil.getInstance().get(gatewayName)
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().PAYMENT)
                @logUtil.putF("Getting PaymentGatewayInterface for PaymentType: " + paymentType.getName() + " with: " + (hashMap).to_s, self, commonStrings.GET_INSTANCE)
            end
            paymentGatewayInterfaceFactoryInterface = paymentType.getPaymentGatewayInterfaceFactoryInterface()
            return paymentGatewayInterfaceFactoryInterface.getInstance(hashMap)
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().PAYMENTERROR)
                @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.GET_INSTANCE, e)
            end
            raise e
        end
    end
end

require "java/util/HashMap"
require "org/allbinary/business/user/commerce/money/payment/types/BasicPaymentType"
require "org/allbinary/business/user/commerce/money/payment/types/BasicPaymentTypeUtil"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/http/request/RequestParams"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/business/user/commerce/money/payment/gateway/PaymentGatewayData"
require "org/allbinary/business/user/commerce/money/payment/gateway/PaymentGatewayInterface"

