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


class Money
    attr_accessor :units, :DEFAULT_CURRENCY

    def initialize_fields
        @units = nil
        @DEFAULT_CURRENCY = "USD"
    end

    def initialize(*args)
        case args.length
        when 1 then constructor1(*args)
        when 0 then constructor0(*args)
        when 1 then constructor1(*args)
        when 1 then constructor1(*args)
        end
    end
    

    def constructor1(money)
        initialize_fields
        @units = money.getUnits()
    end
    

    def constructor0()
        initialize_fields
        @units = 0
    end
    

    def constructor1(usDollarStr)
        initialize_fields
        if usDollarStr != nil && StringValidationUtil.getInstance().isNumber(usDollarStr)
            @units = convertUsdToUnits(usDollarStr)
        end
    end
    

    def constructor1(units)
        initialize_fields
        @units = units
    end
    

    def isValid()
        if @units != nil && @units.to_i > 0 && @units.to_i < 9223372036854775807
            return true
        else
            return false
        end
    end
    

    def add(moreMoney)
        self.add(moreMoney.to_s)
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def add(usDollarStr)
        @units = @units.to_i + convertUsdToUnits(usDollarStr)
    end
    

    def subtract(usDollarStr)
        @units = @units.to_i - convertUsdToUnits(usDollarStr)
    end
    

    def multiply(multiplier)
        @units = @units.to_i * multiplier.to_f.to_i
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def multiply(multiplier)
        @units = @units.to_i * multiplier
    end
    

    def convertUnitsTo(currency)
        stringBuffer = StringMaker.new()
        if (currency <=> @DEFAULT_CURRENCY) == 0
            dollar = @units.to_i / 100
            cents = @units.to_i - (dollar * 100)
            stringBuffer.append(dollar.to_s)
            stringBuffer.append(AbPathData.getInstance().EXTENSION_SEP)
            if cents < 10
                stringBuffer.append(CommonPhoneStrings.getInstance().ZERO)
            end
            stringBuffer.append(cents.to_s)
        end
        return stringBuffer.to_s
    end
    

    def convertUsdToUnits(usDollarStr)
        localUnit = 0
        index = (usDollarStr.index(AbPathData.getInstance().EXTENSION_SEP) || -1)
        stringUtil = StringUtil.getInstance()
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

require "org/allbinary/logic/io/path/AbPathData"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/logic/string/StringValidationUtil"
require "org/allbinary/string/CommonPhoneStrings"

