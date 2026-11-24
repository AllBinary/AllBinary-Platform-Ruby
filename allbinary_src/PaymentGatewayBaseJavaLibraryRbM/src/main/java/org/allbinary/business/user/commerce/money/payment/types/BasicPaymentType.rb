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

require "java/lang/JavaClass"

module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Payment; module Types

class BasicPaymentType
    attr_accessor :name, :value, :paymentGatewayInterfaceFactoryInterface, :paymentGatewayDomNodeFactoryInterface

    def jfields_org_allbinary_business_user_commerce_money_payment_types_BasicPaymentType
        @name = nil unless instance_variable_defined?(:@name)
        @value = nil unless instance_variable_defined?(:@value)
        @paymentGatewayInterfaceFactoryInterface = nil unless instance_variable_defined?(:@paymentGatewayInterfaceFactoryInterface)
        @paymentGatewayDomNodeFactoryInterface = nil unless instance_variable_defined?(:@paymentGatewayDomNodeFactoryInterface)
    end

    def initialize(*args)
        case args.length
        when 1 then jnew_org_allbinary_business_user_commerce_money_payment_types_BasicPaymentType_1(*args)
        when 3 then jnew_org_allbinary_business_user_commerce_money_payment_types_BasicPaymentType_3(*args)
        else raise ArgumentError, "No constructor of BasicPaymentType takes #{args.length} arguments"
        end
    end
    

    def jnew_org_allbinary_business_user_commerce_money_payment_types_BasicPaymentType_1(paymentMethod)
        jfields_org_allbinary_business_user_commerce_money_payment_types_BasicPaymentType
        self.init(paymentMethod)
    end
    

    def jnew_org_allbinary_business_user_commerce_money_payment_types_BasicPaymentType_3(paymentMethod, paymentGatewayInterfaceFactoryInterface, paymentGatewayDomNodeFactoryInterface)
        jfields_org_allbinary_business_user_commerce_money_payment_types_BasicPaymentType
        self.init(paymentMethod)
        @paymentGatewayInterfaceFactoryInterface = paymentGatewayInterfaceFactoryInterface
        @paymentGatewayDomNodeFactoryInterface = paymentGatewayDomNodeFactoryInterface
    end
    

    def init(paymentMethod)
        hashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
        _UNDERSCORE = "_"
        hashMap.put(::Org::Allbinary::StringPackage::CommonSeps.getInstance().SPACE, _UNDERSCORE)
        hashMap.put(::Org::Allbinary::Logic::Io::Path::AbPathData.getInstance().EXTENSION_SEP, _UNDERSCORE)
        hashMap.put("-", _UNDERSCORE)
        replace = ::Org::Allbinary::Logic::StringPackage::Regex::Replace::Replace.new(hashMap)
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
        vector = ::Org::Allbinary::Util::BasicArrayListD.new()
        vector.add(@name)
        vector.add(@value)
        return vector
    end
    

    def toHashMap()
        hashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
        hashMap.put(::Org::Allbinary::Business::User::Commerce::Money::Payment::Gateway::PaymentGatewayData::NAME.to_s, @name)
        hashMap.put(::Org::Allbinary::Business::User::Commerce::Money::Payment::Gateway::PaymentGatewayData::VALUE.to_s, @value)
        return hashMap
    end
    

    def toString()
        return @name
    end
    alias_method :to_s, :toString
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Payment; module Gateway; autoload :PaymentGatewayData, "org/allbinary/business/user/commerce/money/payment/gateway/PaymentGatewayData" unless const_defined?(:PaymentGatewayData, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Payment; module Gateway; autoload :PaymentGatewayInterfaceFactoryInterface, "org/allbinary/business/user/commerce/money/payment/gateway/PaymentGatewayInterfaceFactoryInterface" unless const_defined?(:PaymentGatewayInterfaceFactoryInterface, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Payment; module Gateway; module Modules; module Gateway; autoload :PaymentGatewayDomNodeFactoryInterface, "org/allbinary/business/user/commerce/money/payment/gateway/modules/gateway/PaymentGatewayDomNodeFactoryInterface" unless const_defined?(:PaymentGatewayDomNodeFactoryInterface, false); end; end; end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPathData, "org/allbinary/logic/io/path/AbPathData" unless const_defined?(:AbPathData, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; module Regex; module Replace; autoload :Replace, "org/allbinary/logic/string/regex/replace/Replace" unless const_defined?(:Replace, false); end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
autoload :BasicPaymentTypeUtil, "org/allbinary/business/user/commerce/money/payment/types/BasicPaymentTypeUtil" unless const_defined?(:BasicPaymentTypeUtil, false)

end; end; end; end; end; end; end; end

