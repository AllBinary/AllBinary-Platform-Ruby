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


class PaymentGatewayPrimaryKey
    include Serializable
    attr_accessor :storeName, :name

    def initialize_fields
        @storeName = nil
        @name = nil
    end
    

    def initialize(storeName, gatewayName)
        initialize_fields
        self.setStoreName(storeName)
        self.setName(gatewayName)
    end
    

    def getStoreName()
        return @storeName
    end
    

    def setStoreName(storeName)
        @storeName = storeName
    end
    

    def getName()
        return @name
    end
    

    def setName(name)
        @name = name
    end
    

    def toString()
        stringBuffer = StringMaker.new()
        stringBuffer.append(PaymentGatewayPrimaryKey.getName())
        stringBuffer.append(StoreFront.getName())
        stringBuffer.append(" =")
        stringBuffer.append(self.getStoreName())
        stringBuffer.append(CommonSeps.getInstance().SPACE)
        stringBuffer.append(PaymentGateway.getName())
        stringBuffer.append("=")
        stringBuffer.append(self.getName())
        return stringBuffer.to_s
    end
    alias_method :to_s, :toString
end

require "org/allbinary/business/context/modules/storefront/StoreFront"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/business/user/commerce/money/payment/gateway/PaymentGateway"

