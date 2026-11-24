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

module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Payment; module Gateway; module Processor

class PaymentProcessorInterfaceFactory
    attr_accessor :logUtil

    def jfields_org_allbinary_business_user_commerce_money_payment_gateway_processor_PaymentProcessorInterfaceFactory
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end
    

    def self.getInstance()
        return PaymentProcessorInterfaceFactory.instance
    end
    

    def initialize()
        jfields_org_allbinary_business_user_commerce_money_payment_gateway_processor_PaymentProcessorInterfaceFactory
    end
    

    # throws Exception
    def getInstance(transformInfoInterface)
        java_monitor.synchronize do
        begin
            paymentTransactionInterface = ::Org::Allbinary::Business::User::Commerce::Money::Payment::Gateway::Transaction::PaymentTransactionInterfaceRequestFactory.getInstance().getInstance(transformInfoInterface)
            gatewayName = paymentTransactionInterface.getOrderHistory().getPaymentMethod()
            if !::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance().isEmpty(gatewayName)
                paymentType = ::Org::Allbinary::Business::User::Commerce::Money::Payment::Types::PaymentTypeUtil.getInstance().get(gatewayName)
                paymentProcessorInterfaceFactoryInterface = paymentType.getPaymentProcessorInterfaceFactoryInterface()
                return paymentProcessorInterfaceFactoryInterface.getInstance(transformInfoInterface, paymentTransactionInterface)
            end
            raise StandardError.new("Error Getting PaymentProcessorInterface")
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().PAYMENTERROR)
                commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
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

module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Payment; module Gateway; module Transaction; autoload :PaymentTransactionInterface, "org/allbinary/business/user/commerce/money/payment/gateway/transaction/PaymentTransactionInterface" unless const_defined?(:PaymentTransactionInterface, false); end; end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Payment; module Gateway; module Transaction; autoload :PaymentTransactionInterfaceRequestFactory, "org/allbinary/business/user/commerce/money/payment/gateway/transaction/PaymentTransactionInterfaceRequestFactory" unless const_defined?(:PaymentTransactionInterfaceRequestFactory, false); end; end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Payment; module Types; autoload :PaymentType, "org/allbinary/business/user/commerce/money/payment/types/PaymentType" unless const_defined?(:PaymentType, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Payment; module Types; autoload :PaymentTypeUtil, "org/allbinary/business/user/commerce/money/payment/types/PaymentTypeUtil" unless const_defined?(:PaymentTypeUtil, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringValidationUtil, "org/allbinary/logic/string/StringValidationUtil" unless const_defined?(:StringValidationUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface" unless const_defined?(:TransformInfoInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end
autoload :PaymentProcessorInterface, "org/allbinary/business/user/commerce/money/payment/gateway/processor/PaymentProcessorInterface" unless const_defined?(:PaymentProcessorInterface, false)
autoload :PaymentProcessorInterfaceFactoryInterface, "org/allbinary/business/user/commerce/money/payment/gateway/processor/PaymentProcessorInterfaceFactoryInterface" unless const_defined?(:PaymentProcessorInterfaceFactoryInterface, false)

begin
    PaymentProcessorInterfaceFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end; end; end; end

