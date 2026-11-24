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


module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Payment; module Gateway

class PaymentGatewayPageData
    attr_accessor :MAKEPAYMENT, :CHECKOUT, :SHIPPING, :SHIPPINGADDRESS, :SHIPPINGADDRESSACTION, :BILLINGADDRESS, :PAYMENT, :AUTHORIZE, :FINISH

    def jfields_org_allbinary_business_user_commerce_money_payment_gateway_PaymentGatewayPageData
        @MAKEPAYMENT = nil unless instance_variable_defined?(:@MAKEPAYMENT)
        @CHECKOUT = nil unless instance_variable_defined?(:@CHECKOUT)
        @SHIPPING = nil unless instance_variable_defined?(:@SHIPPING)
        @SHIPPINGADDRESS = nil unless instance_variable_defined?(:@SHIPPINGADDRESS)
        @SHIPPINGADDRESSACTION = nil unless instance_variable_defined?(:@SHIPPINGADDRESSACTION)
        @BILLINGADDRESS = nil unless instance_variable_defined?(:@BILLINGADDRESS)
        @PAYMENT = nil unless instance_variable_defined?(:@PAYMENT)
        @AUTHORIZE = nil unless instance_variable_defined?(:@AUTHORIZE)
        @FINISH = nil unless instance_variable_defined?(:@FINISH)
    end
    

    def initialize(location, paymentMethod)
        jfields_org_allbinary_business_user_commerce_money_payment_gateway_PaymentGatewayPageData
        paymentMethodString = (PaymentGatewayPageData::NAME).to_s + paymentMethod
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(location)
        stringBuffer.append("MakePayment")
        stringBuffer.append(PaymentGatewayPageData::EXTENSION)
        @MAKEPAYMENT = stringBuffer.to_s
        stringBuffer.delete(0, stringBuffer.length())
        stringBuffer.append(paymentMethodString)
        stringBuffer.append("Checkout")
        stringBuffer.append(PaymentGatewayPageData::EXTENSION)
        @CHECKOUT = stringBuffer.to_s
        stringBuffer.delete(0, stringBuffer.length())
        stringBuffer.append(paymentMethodString)
        stringBuffer.append("Shipping")
        stringBuffer.append(PaymentGatewayPageData::EXTENSION)
        @SHIPPING = stringBuffer.to_s
        stringBuffer.delete(0, stringBuffer.length())
        stringBuffer.append(paymentMethodString)
        stringBuffer.append("ShippingAddress")
        stringBuffer.append(PaymentGatewayPageData::EXTENSION)
        @SHIPPINGADDRESS = stringBuffer.to_s
        stringBuffer.delete(0, stringBuffer.length())
        stringBuffer.append(paymentMethodString)
        stringBuffer.append("ShippingAddressAction")
        stringBuffer.append(PaymentGatewayPageData::EXTENSION)
        @SHIPPINGADDRESSACTION = stringBuffer.to_s
        stringBuffer.delete(0, stringBuffer.length())
        stringBuffer.append(paymentMethodString)
        stringBuffer.append("BillingAddress")
        stringBuffer.append(PaymentGatewayPageData::EXTENSION)
        @BILLINGADDRESS = stringBuffer.to_s
        stringBuffer.delete(0, stringBuffer.length())
        stringBuffer.append(paymentMethodString)
        stringBuffer.append("Payment")
        stringBuffer.append(PaymentGatewayPageData::EXTENSION)
        @PAYMENT = stringBuffer.to_s
        stringBuffer.delete(0, stringBuffer.length())
        stringBuffer.append(paymentMethodString)
        stringBuffer.append("Authorize")
        stringBuffer.append(PaymentGatewayPageData::EXTENSION)
        @AUTHORIZE = stringBuffer.to_s
        stringBuffer.delete(0, stringBuffer.length())
        stringBuffer.append(paymentMethodString)
        stringBuffer.append("PaymentFinish")
        stringBuffer.append(PaymentGatewayPageData::EXTENSION)
        @FINISH = stringBuffer.to_s
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:EXTENSION, ".jsp")
        const_set(:FORWARDMAKEPAYMENT, "MakePayment.jsp")
        begin
            const_set(:NAME, ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING)
            const_set(:PAYMENTOPTIONS, "PaymentOptions" + (PaymentGatewayPageData::EXTENSION).to_s)
            const_set(:STARTCHECKOUT, "StartCheckout" + (PaymentGatewayPageData::EXTENSION).to_s)
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "PaymentGatewayPageData"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:EXTENSION, :NAME, :FORWARDMAKEPAYMENT, :PAYMENTOPTIONS, :STARTCHECKOUT].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end

begin
    PaymentGatewayPageData.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end; end; end

