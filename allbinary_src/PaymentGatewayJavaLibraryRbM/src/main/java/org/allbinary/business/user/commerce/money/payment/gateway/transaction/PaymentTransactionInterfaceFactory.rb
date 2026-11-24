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


module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Payment; module Gateway; module Transaction

class PaymentTransactionInterfaceFactory
    attr_accessor :logUtil

    def jfields_org_allbinary_business_user_commerce_money_payment_gateway_transaction_PaymentTransactionInterfaceFactory
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end
    

    def self.getInstance()
        return PaymentTransactionInterfaceFactory.instance
    end
    

    def initialize()
        jfields_org_allbinary_business_user_commerce_money_payment_gateway_transaction_PaymentTransactionInterfaceFactory
    end
    

    # throws Exception
    def getInstance(orderReview)
        begin
            gatewayName = orderReview.getPaymentMethod()
            if gatewayName != nil
                paymentType = ::Org::Allbinary::Business::User::Commerce::Money::Payment::Types::PaymentTypeUtil.getInstance().get(gatewayName)
                paymentTransactionInterfaceFactoryInterface = paymentType.getPaymentTransactionInterfaceFactoryInterface()
                paymentTransactionInterface = paymentTransactionInterfaceFactoryInterface.getInstance(orderReview)
                return paymentTransactionInterface
            end
            raise StandardError.new("Failed to create PaymentTransactionInterface: " + "GatewayName is: " + gatewayName)
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().PAYMENTERROR)
                commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
                @logUtil.put("Failed to generate test data", self, commonStrings.GET_INSTANCE, e)
            end
            raise e
        end
    end

    def self.instance()
        PaymentTransactionInterfaceFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        PaymentTransactionInterfaceFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = PaymentTransactionInterfaceFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "PaymentTransactionInterfaceFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Order; autoload :OrderHistory, "org/allbinary/business/user/commerce/inventory/order/OrderHistory" unless const_defined?(:OrderHistory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Payment; module Types; autoload :PaymentType, "org/allbinary/business/user/commerce/money/payment/types/PaymentType" unless const_defined?(:PaymentType, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Payment; module Types; autoload :PaymentTypeUtil, "org/allbinary/business/user/commerce/money/payment/types/PaymentTypeUtil" unless const_defined?(:PaymentTypeUtil, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end
autoload :PaymentTransactionInterface, "org/allbinary/business/user/commerce/money/payment/gateway/transaction/PaymentTransactionInterface" unless const_defined?(:PaymentTransactionInterface, false)
autoload :PaymentTransactionInterfaceFactoryInterface, "org/allbinary/business/user/commerce/money/payment/gateway/transaction/PaymentTransactionInterfaceFactoryInterface" unless const_defined?(:PaymentTransactionInterfaceFactoryInterface, false)

begin
    PaymentTransactionInterfaceFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end; end; end; end

