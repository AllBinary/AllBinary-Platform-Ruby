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
# package views.admin.payment.gateway

# require "javax/servlet/http/HttpServletRequest"
require "org/allbinary/logic/visual/transform/info/TransformInfoHttpComposite"

class PaymentGatewayViewAbstract < TransformInfoHttpComposite
    attr_accessor :paymentGatewayPrimaryKey

    def initialize_fields
        @paymentGatewayPrimaryKey = nil
    end
    

    def initialize(transformInfoInterface)
        super(transformInfoInterface)
        initialize_fields
        self.getFormData(self.getPageContext().getRequest())
    end
    

    def getFormData(request)
        storeName = self.getWeblisketSession().getStoreName()
        gatewayName = request.getParameter(PaymentGatewayData::NAME.to_s)
        self.setPaymentGatewayPrimaryKey(PaymentGatewayPrimaryKey.new(storeName, gatewayName))
    end
    

    def getPaymentGatewayPrimaryKey()
        return @paymentGatewayPrimaryKey
    end
    

    def setPaymentGatewayPrimaryKey(paymentGatewayPrimaryKey)
        @paymentGatewayPrimaryKey = paymentGatewayPrimaryKey
    end
end

require "org/allbinary/business/user/commerce/money/payment/gateway/PaymentGatewayData"
require "org/allbinary/business/user/commerce/money/payment/gateway/PaymentGatewayPrimaryKey"
require "org/allbinary/logic/visual/transform/info/TransformInfoInterface"

