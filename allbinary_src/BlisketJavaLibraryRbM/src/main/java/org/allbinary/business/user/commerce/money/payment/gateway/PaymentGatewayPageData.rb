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
end

require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"

class PaymentGatewayPageData
    EXTENSION = ".jsp"
    NAME = StringUtil.getInstance().EMPTY_STRING
    FORWARDMAKEPAYMENT = "MakePayment.jsp"
    PAYMENTOPTIONS = "PaymentOptions" + (PaymentGatewayPageData::EXTENSION).to_s
    STARTCHECKOUT = "StartCheckout" + (PaymentGatewayPageData::EXTENSION).to_s
end

