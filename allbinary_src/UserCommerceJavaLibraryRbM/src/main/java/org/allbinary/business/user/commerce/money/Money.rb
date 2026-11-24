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
# package org.allbinary.business.user.commerce.money


module ::Org; module Allbinary; module Business; module User; module Commerce; module Money

class Money
    attr_accessor :units, :DEFAULT_CURRENCY

    def jfields_org_allbinary_business_user_commerce_money_Money
        @units = nil unless instance_variable_defined?(:@units)
        @DEFAULT_CURRENCY = "USD"
    end

    def initialize(*args)
        case args.length
        when 1 then jnew_org_allbinary_business_user_commerce_money_Money_1(*args)
        when 0 then jnew_org_allbinary_business_user_commerce_money_Money_0(*args)
        else raise ArgumentError, "No constructor of Money takes #{args.length} arguments"
        end
    end

    def jnew_org_allbinary_business_user_commerce_money_Money_1(*java_overload_args)
        return jnew_org_allbinary_business_user_commerce_money_Money_1_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(Money))
        return jnew_org_allbinary_business_user_commerce_money_Money_1_2(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::String))
        return jnew_org_allbinary_business_user_commerce_money_Money_1_3(*java_overload_args)
    end
    

    def jnew_org_allbinary_business_user_commerce_money_Money_1_1(money)
        jfields_org_allbinary_business_user_commerce_money_Money
        @units = money.getUnits()
    end
    

    def jnew_org_allbinary_business_user_commerce_money_Money_0()
        jfields_org_allbinary_business_user_commerce_money_Money
        @units = 0
    end
    

    def jnew_org_allbinary_business_user_commerce_money_Money_1_2(usDollarStr)
        jfields_org_allbinary_business_user_commerce_money_Money
        if usDollarStr != nil && ::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance().isNumber(usDollarStr)
            @units = convertUsdToUnits(usDollarStr)
        end
    end
    

    def jnew_org_allbinary_business_user_commerce_money_Money_1_3(units)
        jfields_org_allbinary_business_user_commerce_money_Money
        @units = units
    end
    

    def isValid()
        if @units != nil && @units.to_i > 0 && @units.to_i < 9223372036854775807
            return true
        else
            return false
        end
    end
    

    def add_j1_1(moreMoney)
        self.add(moreMoney.to_s)
    end
    

    def add_j1_2(usDollarStr)
        @units = @units.to_i + convertUsdToUnits(usDollarStr)
    end

    def add(*java_overload_args)
        return add_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method add takes #{java_overload_args.length} arguments"
    end

    def add_j1(*java_overload_args)
        return add_j1_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(Money))
        return add_j1_2(*java_overload_args)
    end
    

    def subtract(usDollarStr)
        @units = @units.to_i - convertUsdToUnits(usDollarStr)
    end
    

    def multiply_j1_1(multiplier)
        @units = @units.to_i * multiplier.to_f.to_i
    end
    

    def multiply_j1_2(multiplier)
        @units = @units.to_i * multiplier
    end

    def multiply(*java_overload_args)
        return multiply_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method multiply takes #{java_overload_args.length} arguments"
    end

    def multiply_j1(*java_overload_args)
        return multiply_j1_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::Numeric))
        return multiply_j1_2(*java_overload_args)
    end
    

    def convertUnitsTo(currency)
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        if (currency <=> @DEFAULT_CURRENCY) == 0
            dollar = @units.to_i / 100
            cents = @units.to_i - (dollar * 100)
            stringBuffer.append(dollar.to_s)
            stringBuffer.append(::Org::Allbinary::Logic::Io::Path::AbPathData.getInstance().EXTENSION_SEP)
            if cents < 10
                stringBuffer.append(::Org::Allbinary::StringPackage::CommonPhoneStrings.getInstance().ZERO)
            end
            stringBuffer.append(cents.to_s)
        end
        return stringBuffer.to_s
    end
    

    def convertUsdToUnits(usDollarStr)
        localUnit = 0
        index = (usDollarStr.index(::Org::Allbinary::Logic::Io::Path::AbPathData.getInstance().EXTENSION_SEP) || -1)
        stringUtil = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance()
        dollarStr = stringUtil.EMPTY_STRING
        centsStr = stringUtil.EMPTY_STRING
        if index < 1
            dollarStr = String.new(usDollarStr)
            centsStr = "00"
        else
            dollarStr = String.new(usDollarStr[0...index])
            centsStr = String.new(usDollarStr[index + 1..])
        end
        localUnit = dollarStr.to_i * 100.to_i
        localUnit += centsStr.to_i
        return localUnit
    end
    

    def getUnits()
        return @units.to_i
    end
    

    def getUnitsLong()
        return @units
    end
    

    def toString()
        return String.new(convertUnitsTo(@DEFAULT_CURRENCY))
    end
    alias_method :to_s, :toString
end

module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPathData, "org/allbinary/logic/io/path/AbPathData" unless const_defined?(:AbPathData, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringValidationUtil, "org/allbinary/logic/string/StringValidationUtil" unless const_defined?(:StringValidationUtil, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonPhoneStrings, "org/allbinary/string/CommonPhoneStrings" unless const_defined?(:CommonPhoneStrings, false); end; end; end

end; end; end; end; end; end

