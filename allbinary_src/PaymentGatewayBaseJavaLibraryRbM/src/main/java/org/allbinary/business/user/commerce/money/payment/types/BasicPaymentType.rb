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
# package org.allbinary.business.user.commerce.money.payment.types


class BasicPaymentType
    attr_accessor :name, :value, :paymentGatewayInterfaceFactoryInterface, :paymentGatewayDomNodeFactoryInterface

    def initialize_fields
        @name = nil
        @value = nil
        @paymentGatewayInterfaceFactoryInterface = nil
        @paymentGatewayDomNodeFactoryInterface = nil
    end

    def initialize(*args)
        case args.length
        when 1 then constructor1(*args)
        when 3 then constructor3(*args)
        end
    end
    

    def constructor1(paymentMethod)
        initialize_fields
        self.init(paymentMethod)
    end
    

    def constructor3(paymentMethod, paymentGatewayInterfaceFactoryInterface, paymentGatewayDomNodeFactoryInterface)
        initialize_fields
        self.init(paymentMethod)
        @paymentGatewayInterfaceFactoryInterface = paymentGatewayInterfaceFactoryInterface
        @paymentGatewayDomNodeFactoryInterface = paymentGatewayDomNodeFactoryInterface
    end
    

    def init(paymentMethod)
        hashMap = StdUtil.getInstance().createHashMap()
        _UNDERSCORE = "_"
        hashMap.put(CommonSeps.getInstance().SPACE, _UNDERSCORE)
        hashMap.put(AbPathData.getInstance().EXTENSION_SEP, _UNDERSCORE)
        hashMap.put("-", _UNDERSCORE)
        replace = Replace.new(hashMap)
        @name = replace.all(paymentMethod)
        @value = paymentMethod
        BasicPaymentTypeUtil.getInstance().add(self)
    end
    

    def getName()
        return @name
    end
    

    def getValue()
        return @value
    end
    

    # throws Exception
    def getPaymentGatewayInterfaceFactoryInterface()
        if @paymentGatewayInterfaceFactoryInterface == nil
            raise StandardError.new("PaymentGatewayInterfaceFactoryInterface is Null")
        end
        return @paymentGatewayInterfaceFactoryInterface
    end
    

    # throws Exception
    def getPaymentGatewayDomNodeFactoryInterface()
        if @paymentGatewayDomNodeFactoryInterface == nil
            raise StandardError.new("PaymentGatewayDomNodeFactoryInterface is Null")
        end
        return @paymentGatewayDomNodeFactoryInterface
    end
    

    def getKey()
        return self.getName()
    end
    

    def toVector()
        vector = BasicArrayListD.new()
        vector.add(@name)
        vector.add(@value)
        return vector
    end
    

    def toHashMap()
        hashMap = StdUtil.getInstance().createHashMap()
        hashMap.put(PaymentGatewayData::NAME.to_s, @name)
        hashMap.put(PaymentGatewayData::VALUE.to_s, @value)
        return hashMap
    end
    

    def toString()
        return @name
    end
    alias_method :to_s, :toString
end

require "java/util/HashMap"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/business/user/commerce/money/payment/gateway/PaymentGatewayData"
require "org/allbinary/business/user/commerce/money/payment/gateway/PaymentGatewayInterfaceFactoryInterface"
require "org/allbinary/business/user/commerce/money/payment/gateway/modules/gateway/PaymentGatewayDomNodeFactoryInterface"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/io/path/AbPathData"
require "org/allbinary/logic/string/regex/replace/Replace"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/business/user/commerce/money/payment/types/BasicPaymentTypeUtil"

