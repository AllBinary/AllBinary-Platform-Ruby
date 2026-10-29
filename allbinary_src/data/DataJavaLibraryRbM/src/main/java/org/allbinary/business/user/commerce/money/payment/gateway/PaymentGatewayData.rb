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


class PaymentGatewayData
    attr_accessor :key

    def initialize_fields
        @key = nil
    end
    

    def initialize(value)
        initialize_fields
        @key = value
    end
    

    def toString()
        return @key
    end
    alias_method :to_s, :toString
end

class PaymentGatewayData
    CRYPTNUM = 5
    ID = PaymentGatewayData.new("PAYMENTGATEWAY_ID")
    NAME = PaymentGatewayData.new("PAYMENTGATEWAY_NAME")
    VALUE = PaymentGatewayData.new("PAYMENTGATEWAY_VALUE")
    PAYMENTTRANSACTIONINTERFACEFACTORYINTERFACE = PaymentGatewayData.new("PAYMENTGATEWAY_PAYMENTTRANSACTIONINTERFACEFACTORYINTERFACE")
    PAYMENTPROCESSORINTERFACEFACTORYINTERFACE = PaymentGatewayData.new("PAYMENTGATEWAY_PAYMENTPROCESSORINTERFACEFACTORYINTERFACE")
    MODE = PaymentGatewayData.new("MODE")
    SERVERPROTOCOL = PaymentGatewayData.new("SERVERPROTOCOL")
    SERVER = PaymentGatewayData.new("SERVER")
    SERVERPORT = PaymentGatewayData.new("SERVERPORT")
    SERVERPATH = PaymentGatewayData.new("SERVERPATH")
    TESTPROTOCOL = PaymentGatewayData.new("TESTSERVERPROTOCOL")
    TESTSERVER = PaymentGatewayData.new("TESTSERVER")
    TESTPORT = PaymentGatewayData.new("TESTPORT")
    TESTPATH = PaymentGatewayData.new("TESTSERVERPATH")
    TIMEOUT = PaymentGatewayData.new("TIMEOUT")
    PROXYPROTOCOL = PaymentGatewayData.new("PROXYPROTOCOL")
    PROXYSERVER = PaymentGatewayData.new("PROXYSERVER")
    PROXYPATH = PaymentGatewayData.new("PROXYPATH")
    PROXYUSERNAME = PaymentGatewayData.new("PROXYUSERNAME")
    PROXYPASSWORD = PaymentGatewayData.new("PROXYPASSWORD")
    PROXYPORT = PaymentGatewayData.new("PROXYPORT")
    PROXYTIMEOUT = PaymentGatewayData.new("PROXYTIMEOUT")
    SPECIAL1 = PaymentGatewayData.new("SPECIAL1")
    SPECIAL2 = PaymentGatewayData.new("SPECIAL2")
    SPECIAL3 = PaymentGatewayData.new("SPECIAL3")
    SPECIAL4 = PaymentGatewayData.new("SPECIAL4")
    SPECIAL5 = PaymentGatewayData.new("SPECIAL5")
    SPECIAL6 = PaymentGatewayData.new("SPECIAL6")
    SPECIAL7 = PaymentGatewayData.new("SPECIAL7")
    SPECIAL8 = PaymentGatewayData.new("SPECIAL8")
    SPECIAL9 = PaymentGatewayData.new("SPECIAL9")
end

