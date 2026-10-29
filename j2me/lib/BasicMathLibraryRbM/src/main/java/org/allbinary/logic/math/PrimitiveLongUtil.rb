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
# package org.allbinary.logic.math


class PrimitiveLongUtil
    attr_accessor :logUtil, :powerOfTen, :maxValue, :maxDigits, :charArray, :currentTotalDigits, :primitiveLongSingleton

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @powerOfTen = nil
        @maxValue = nil
        @maxDigits = nil
        @charArray = nil
        @currentTotalDigits = 0
        @primitiveLongSingleton = PrimitiveLongSingleton.getInstance()
    end
    

    def self.createPowerOfTen(powerOfTen)
        primitiveLongUtil = PrimitiveLongUtil.new(powerOfTen, NullUtil.getInstance().NULL_OBJECT)
        if powerOfTen % 10 != 0
            logUtil = LogUtil.getInstance()
            commonStrings = CommonStrings.getInstance()
            logUtil.put(commonStrings.EXCEPTION, primitiveLongUtil, commonStrings.CONSTRUCTOR, StandardError.new("Max must be power of 10"))
        end
        return primitiveLongUtil
    end
    

    def initialize(powerOfTen, unused)
        initialize_fields
        @maxDigits = MathUtil.getInstance().getTotalDigits(powerOfTen)
        @powerOfTen = powerOfTen
        @maxValue = (powerOfTen * 10) - 1
        @charArray = Array.new(@maxDigits, "\0")
    end
    

    def getCharArray(value)
        if value < 10
            self.setCurrentTotalDigits(1)
            return @primitiveLongSingleton.NUMBER_CHAR_ARRAYS[value]
        end
        if value > @maxValue
            self.setCurrentTotalDigits(3)
            return @primitiveLongSingleton.UNK
        end
        index = 0
        div = @powerOfTen
        lastValue = 0
        while div >= 1
            digit = (value - lastValue) / div
            if digit >= 0 && digit < 10
                if digit == 0 && index == 0
                else
                    @charArray[((index += 1) - 1)] = @primitiveLongSingleton.NUMBER_CHAR_ARRAY[digit]
                end
                lastValue += digit * div
            end
            div = div / 10
        end
        self.setCurrentTotalDigits(index)
        return @charArray
    end
    

    def setCurrentTotalDigits(currentTotalDigits)
        @currentTotalDigits = currentTotalDigits
    end
    

    def getCurrentTotalDigits()
        return @currentTotalDigits
    end
    

    def getMaxDigits()
        return @maxDigits
    end
end

require "org/allbinary/logic/NullUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/logic/math/MathUtil"
require "org/allbinary/logic/math/PrimitiveLongSingleton"

