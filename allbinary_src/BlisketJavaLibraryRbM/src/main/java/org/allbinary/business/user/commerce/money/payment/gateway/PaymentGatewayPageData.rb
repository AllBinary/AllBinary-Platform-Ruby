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


class PaymentGatewayPageData
    attr_accessor :MAKEPAYMENT, :CHECKOUT, :SHIPPING, :SHIPPINGADDRESS, :SHIPPINGADDRESSACTION, :BILLINGADDRESS, :PAYMENT, :AUTHORIZE, :FINISH

    def initialize_fields
        @MAKEPAYMENT = nil
        @CHECKOUT = nil
        @SHIPPING = nil
        @SHIPPINGADDRESS = nil
        @SHIPPINGADDRESSACTION = nil
        @BILLINGADDRESS = nil
        @PAYMENT = nil
        @AUTHORIZE = nil
        @FINISH = nil
    end
    

    def initialize(location, paymentMethod)
        initialize_fields
        paymentMethodString = (PaymentGatewayPageData::NAME).to_s + paymentMethod
        stringBuffer = StringMaker.new()
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
            const_set(:NAME, StringUtil.getInstance().EMPTY_STRING)
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

autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :StringUtil, "org/allbinary/logic/string/StringUtil"

begin
    PaymentGatewayPageData.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

