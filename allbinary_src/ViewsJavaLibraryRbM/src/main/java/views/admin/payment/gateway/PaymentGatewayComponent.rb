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
require "views/business/context/modules/storefront/HttpStoreComponentView"

module ::Views; module Admin; module Payment; module Gateway

class PaymentGatewayComponent < ::Views::Business::Context::Modules::Storefront::HttpStoreComponentView
    attr_accessor :logUtil, :paymentGatewayInterface

    def jfields_views_admin_payment_gateway_PaymentGatewayComponent
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @paymentGatewayInterface = nil unless instance_variable_defined?(:@paymentGatewayInterface)
    end
    

    def initialize(transformInfoInterface, paymentGatewayInterface)
        super(transformInfoInterface)
        jfields_views_admin_payment_gateway_PaymentGatewayComponent
        @paymentGatewayInterface = paymentGatewayInterface
    end
    

    # throws Exception
    def addDomNodeInterfaces()
        paymentType = ::Org::Allbinary::Business::User::Commerce::Money::Payment::Types::BasicPaymentTypeUtil.getInstance().get(@paymentGatewayInterface.getName())
        paymentGatewayDomNodeFactoryInterface = paymentType.getPaymentGatewayDomNodeFactoryInterface()
        domNodeInterface = paymentGatewayDomNodeFactoryInterface.getInstance(@paymentGatewayInterface)
        self.addDomNodeInterface(domNodeInterface)
    end
    java_overload :addDomNodeInterfaces, 0
    

    def view()
        begin
            self.addDomNodeInterfaces()
            return PaymentGatewayComponent.superclass.java_super_method(:view, 0).bind(self).call()
        rescue StandardError => e
            error = "Failed to view payment gateway"
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().TAGHELPERERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "view()", e)
            end
            return error
        end
    end
    java_overload :view, 0
end

module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Payment; module Gateway; autoload :PaymentGatewayInterface, "org/allbinary/business/user/commerce/money/payment/gateway/PaymentGatewayInterface" unless const_defined?(:PaymentGatewayInterface, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Payment; module Gateway; module Modules; module Gateway; autoload :PaymentGatewayDomNodeFactoryInterface, "org/allbinary/business/user/commerce/money/payment/gateway/modules/gateway/PaymentGatewayDomNodeFactoryInterface" unless const_defined?(:PaymentGatewayDomNodeFactoryInterface, false); end; end; end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Payment; module Types; autoload :BasicPaymentType, "org/allbinary/business/user/commerce/money/payment/types/BasicPaymentType" unless const_defined?(:BasicPaymentType, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Payment; module Types; autoload :BasicPaymentTypeUtil, "org/allbinary/business/user/commerce/money/payment/types/BasicPaymentTypeUtil" unless const_defined?(:BasicPaymentTypeUtil, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :DomNodeInterface, "org/allbinary/data/tree/dom/DomNodeInterface" unless const_defined?(:DomNodeInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface" unless const_defined?(:TransformInfoInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end; end; end

