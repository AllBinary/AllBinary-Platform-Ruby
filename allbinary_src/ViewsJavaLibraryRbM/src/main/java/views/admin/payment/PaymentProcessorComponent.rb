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
# package views.admin.payment

require "java/lang/JavaOverload"
require "views/business/context/modules/storefront/HttpStoreComponentView"

module ::Views; module Admin; module Payment

class PaymentProcessorComponent < ::Views::Business::Context::Modules::Storefront::HttpStoreComponentView
    attr_accessor :logUtil

    def jfields_views_admin_payment_PaymentProcessorComponent
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end
    

    def initialize(transformInfoInterface)
        super(transformInfoInterface)
        jfields_views_admin_payment_PaymentProcessorComponent
    end
    

    # throws Exception
    def addDomNodeInterfaces()
        paymentProcessorInterface = ::Org::Allbinary::Business::User::Commerce::Money::Payment::Gateway::Processor::PaymentProcessorInterfaceFactory.getInstance().getInstance(self.getTransformInfoInterface())
        paymentProcessorInterface.process()
        httpTransformInfoInterface = self.getTransformInfoInterface()
        httpTransformInfoInterface.getWeblisketSession().removeBasket()
        self.addDomNodeInterface(paymentProcessorInterface)
    end
    java_overload :addDomNodeInterfaces, 0
    

    # throws Exception
    def view()
        begin
            self.addDomNodeInterfaces()
            return PaymentProcessorComponent.superclass.java_super_method(:view, 0).bind(self).call()
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEWERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "view()", e)
            end
            raise e
        end
    end
    java_overload :view, 0
end

module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Payment; module Gateway; module Processor; autoload :PaymentProcessorInterface, "org/allbinary/business/user/commerce/money/payment/gateway/processor/PaymentProcessorInterface" unless const_defined?(:PaymentProcessorInterface, false); end; end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Payment; module Gateway; module Processor; autoload :PaymentProcessorInterfaceFactory, "org/allbinary/business/user/commerce/money/payment/gateway/processor/PaymentProcessorInterfaceFactory" unless const_defined?(:PaymentProcessorInterfaceFactory, false); end; end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :DomNodeInterface, "org/allbinary/data/tree/dom/DomNodeInterface" unless const_defined?(:DomNodeInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoHttpInterface, "org/allbinary/logic/visual/transform/info/TransformInfoHttpInterface" unless const_defined?(:TransformInfoHttpInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface" unless const_defined?(:TransformInfoInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end; end

