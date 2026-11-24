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

require "java/lang/JavaOverload"
# require "javax/servlet/http/HttpServletRequest"
require "org/allbinary/logic/visual/transform/info/TransformInfoHttpComposite"

module ::Views; module Admin; module Payment; module Gateway

class PaymentGatewayViewAbstract < ::Org::Allbinary::Logic::Visual::Transform::Info::TransformInfoHttpComposite
    attr_accessor :paymentGatewayPrimaryKey

    def jfields_views_admin_payment_gateway_PaymentGatewayViewAbstract
        @paymentGatewayPrimaryKey = nil unless instance_variable_defined?(:@paymentGatewayPrimaryKey)
    end
    

    def initialize(transformInfoInterface)
        super(transformInfoInterface)
        jfields_views_admin_payment_gateway_PaymentGatewayViewAbstract
        self.getFormData(self.getPageContext().getRequest())
    end
    

    def getFormData(request)
        storeName = self.getWeblisketSession().getStoreName()
        gatewayName = request.getParameter(::Org::Allbinary::Business::User::Commerce::Money::Payment::Gateway::PaymentGatewayData::NAME.to_s)
        self.setPaymentGatewayPrimaryKey(::Org::Allbinary::Business::User::Commerce::Money::Payment::Gateway::PaymentGatewayPrimaryKey.new(storeName, gatewayName))
    end
    java_overload :getFormData, 1
    

    def getPaymentGatewayPrimaryKey()
        return @paymentGatewayPrimaryKey
    end
    java_overload :getPaymentGatewayPrimaryKey, 0
    

    def setPaymentGatewayPrimaryKey(paymentGatewayPrimaryKey)
        @paymentGatewayPrimaryKey = paymentGatewayPrimaryKey
    end
    java_overload :setPaymentGatewayPrimaryKey, 1
end

module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Payment; module Gateway; autoload :PaymentGatewayData, "org/allbinary/business/user/commerce/money/payment/gateway/PaymentGatewayData" unless const_defined?(:PaymentGatewayData, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Payment; module Gateway; autoload :PaymentGatewayPrimaryKey, "org/allbinary/business/user/commerce/money/payment/gateway/PaymentGatewayPrimaryKey" unless const_defined?(:PaymentGatewayPrimaryKey, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface" unless const_defined?(:TransformInfoInterface, false); end; end; end; end; end; end

end; end; end; end

