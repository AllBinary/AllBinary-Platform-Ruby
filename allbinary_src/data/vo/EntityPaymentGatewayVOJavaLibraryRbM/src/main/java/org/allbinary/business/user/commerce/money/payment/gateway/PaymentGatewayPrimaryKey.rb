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

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
require "java/io/Serializable"

module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Payment; module Gateway

class PaymentGatewayPrimaryKey
    include ::Java::Io::Serializable
    attr_accessor :storeName, :name

    def jfields_org_allbinary_business_user_commerce_money_payment_gateway_PaymentGatewayPrimaryKey
        @storeName = nil unless instance_variable_defined?(:@storeName)
        @name = nil unless instance_variable_defined?(:@name)
    end
    

    def initialize(storeName, gatewayName)
        jfields_org_allbinary_business_user_commerce_money_payment_gateway_PaymentGatewayPrimaryKey
        self.setStoreName(storeName)
        self.setName(gatewayName)
    end
    

    def getStoreName()
        return @storeName
    end
    java_overload :getStoreName, 0
    

    def setStoreName(storeName)
        @storeName = storeName
    end
    java_overload :setStoreName, 1
    

    def getName()
        return @name
    end
    java_overload :getName, 0
    

    def setName(name)
        @name = name
    end
    java_overload :setName, 1
    

    def toString()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(PaymentGatewayPrimaryKey.java_name)
        stringBuffer.append(::Org::Allbinary::Business::Context::Modules::Storefront::StoreFront.java_name)
        stringBuffer.append(" =")
        stringBuffer.append(self.getStoreName())
        stringBuffer.append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().SPACE)
        stringBuffer.append(PaymentGateway.java_name)
        stringBuffer.append("=")
        stringBuffer.append(self.getName())
        return stringBuffer.to_s
    end
    java_overload :toString, 0
    alias_method :to_s, :toString
end

module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFront, "org/allbinary/business/context/modules/storefront/StoreFront" unless const_defined?(:StoreFront, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
autoload :PaymentGateway, "org/allbinary/business/user/commerce/money/payment/gateway/PaymentGateway" unless const_defined?(:PaymentGateway, false)

end; end; end; end; end; end; end; end

