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

class PaymentGatewayData
    attr_accessor :key

    def jfields_org_allbinary_business_user_commerce_money_payment_gateway_PaymentGatewayData
        @key = nil unless instance_variable_defined?(:@key)
    end
    

    def initialize(value)
        jfields_org_allbinary_business_user_commerce_money_payment_gateway_PaymentGatewayData
        @key = value
    end
    

    def toString()
        return @key
    end
    alias_method :to_s, :toString

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:CRYPTNUM, 5)
        begin
            const_set(:ID, PaymentGatewayData.new("PAYMENTGATEWAY_ID"))
            const_set(:NAME, PaymentGatewayData.new("PAYMENTGATEWAY_NAME"))
            const_set(:VALUE, PaymentGatewayData.new("PAYMENTGATEWAY_VALUE"))
            const_set(:PAYMENTTRANSACTIONINTERFACEFACTORYINTERFACE, PaymentGatewayData.new("PAYMENTGATEWAY_PAYMENTTRANSACTIONINTERFACEFACTORYINTERFACE"))
            const_set(:PAYMENTPROCESSORINTERFACEFACTORYINTERFACE, PaymentGatewayData.new("PAYMENTGATEWAY_PAYMENTPROCESSORINTERFACEFACTORYINTERFACE"))
            const_set(:MODE, PaymentGatewayData.new("MODE"))
            const_set(:SERVERPROTOCOL, PaymentGatewayData.new("SERVERPROTOCOL"))
            const_set(:SERVER, PaymentGatewayData.new("SERVER"))
            const_set(:SERVERPORT, PaymentGatewayData.new("SERVERPORT"))
            const_set(:SERVERPATH, PaymentGatewayData.new("SERVERPATH"))
            const_set(:TESTPROTOCOL, PaymentGatewayData.new("TESTSERVERPROTOCOL"))
            const_set(:TESTSERVER, PaymentGatewayData.new("TESTSERVER"))
            const_set(:TESTPORT, PaymentGatewayData.new("TESTPORT"))
            const_set(:TESTPATH, PaymentGatewayData.new("TESTSERVERPATH"))
            const_set(:TIMEOUT, PaymentGatewayData.new("TIMEOUT"))
            const_set(:PROXYPROTOCOL, PaymentGatewayData.new("PROXYPROTOCOL"))
            const_set(:PROXYSERVER, PaymentGatewayData.new("PROXYSERVER"))
            const_set(:PROXYPATH, PaymentGatewayData.new("PROXYPATH"))
            const_set(:PROXYUSERNAME, PaymentGatewayData.new("PROXYUSERNAME"))
            const_set(:PROXYPASSWORD, PaymentGatewayData.new("PROXYPASSWORD"))
            const_set(:PROXYPORT, PaymentGatewayData.new("PROXYPORT"))
            const_set(:PROXYTIMEOUT, PaymentGatewayData.new("PROXYTIMEOUT"))
            const_set(:SPECIAL1, PaymentGatewayData.new("SPECIAL1"))
            const_set(:SPECIAL2, PaymentGatewayData.new("SPECIAL2"))
            const_set(:SPECIAL3, PaymentGatewayData.new("SPECIAL3"))
            const_set(:SPECIAL4, PaymentGatewayData.new("SPECIAL4"))
            const_set(:SPECIAL5, PaymentGatewayData.new("SPECIAL5"))
            const_set(:SPECIAL6, PaymentGatewayData.new("SPECIAL6"))
            const_set(:SPECIAL7, PaymentGatewayData.new("SPECIAL7"))
            const_set(:SPECIAL8, PaymentGatewayData.new("SPECIAL8"))
            const_set(:SPECIAL9, PaymentGatewayData.new("SPECIAL9"))
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "PaymentGatewayData"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:CRYPTNUM, :ID, :NAME, :VALUE, :PAYMENTTRANSACTIONINTERFACEFACTORYINTERFACE, :PAYMENTPROCESSORINTERFACEFACTORYINTERFACE, :MODE, :SERVERPROTOCOL, :SERVER, :SERVERPORT, :SERVERPATH, :TESTPROTOCOL, :TESTSERVER, :TESTPORT, :TESTPATH, :TIMEOUT, :PROXYPROTOCOL, :PROXYSERVER, :PROXYPATH, :PROXYUSERNAME, :PROXYPASSWORD, :PROXYPORT, :PROXYTIMEOUT, :SPECIAL1, :SPECIAL2, :SPECIAL3, :SPECIAL4, :SPECIAL5, :SPECIAL6, :SPECIAL7, :SPECIAL8, :SPECIAL9].include?(name)
        end
        super
    end
end

begin
    PaymentGatewayData.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end; end; end

