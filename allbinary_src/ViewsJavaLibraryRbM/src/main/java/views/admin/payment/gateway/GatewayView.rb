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
require "java/lang/JavaClass"
# require "javax/servlet/http/HttpServletRequest"
require "views/admin/payment/gateway/PaymentGatewayViewAbstract"

module ::Views; module Admin; module Payment; module Gateway

class GatewayView < PaymentGatewayViewAbstract
    attr_accessor :logUtil

    def jfields_views_admin_payment_gateway_GatewayView
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end
    

    def initialize(transformInfoInterface)
        super(transformInfoInterface)
        jfields_views_admin_payment_gateway_GatewayView
    end
    

    def getFormData(request)
        GatewayView.superclass.java_super_method(:getFormData, 1).bind(self).call(request)
        if ::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance().isEmpty(self.getPaymentGatewayPrimaryKey().getName())
            self.getPaymentGatewayPrimaryKey().setName(self.getWeblisketSession().getPaymentMethod())
        end
    end
    java_overload :getFormData, 1
    

    # throws Exception
    def view()
        begin
            paymentGatewayInterface = ::Org::Allbinary::DataPackage::Tables::User::Commerce::Money::Payment::Gateway::PaymentGatewayEntityFactory.getInstance().getPaymentGatewayInterface(self.getPaymentGatewayPrimaryKey().getStoreName(), ::Org::Allbinary::Business::User::Commerce::Money::Payment::Types::BasicPaymentTypeUtil.getInstance().get(self.getPaymentGatewayPrimaryKey().getName()))
            return PaymentGatewayComponent.new(self.getTransformInfoInterface(), paymentGatewayInterface).view()
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEWERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "edit()", e)
            end
            raise e
        end
    end
    java_overload :view, 0
end

module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Payment; module Gateway; autoload :PaymentGatewayInterface, "org/allbinary/business/user/commerce/money/payment/gateway/PaymentGatewayInterface" unless const_defined?(:PaymentGatewayInterface, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Payment; module Types; autoload :BasicPaymentTypeUtil, "org/allbinary/business/user/commerce/money/payment/types/BasicPaymentTypeUtil" unless const_defined?(:BasicPaymentTypeUtil, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module User; module Commerce; module Money; module Payment; module Gateway; autoload :PaymentGatewayEntityFactory, "org/allbinary/data/tables/user/commerce/money/payment/gateway/PaymentGatewayEntityFactory" unless const_defined?(:PaymentGatewayEntityFactory, false); end; end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringValidationUtil, "org/allbinary/logic/string/StringValidationUtil" unless const_defined?(:StringValidationUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface" unless const_defined?(:TransformInfoInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end
autoload :PaymentGatewayComponent, "views/admin/payment/gateway/PaymentGatewayComponent" unless const_defined?(:PaymentGatewayComponent, false)

end; end; end; end

