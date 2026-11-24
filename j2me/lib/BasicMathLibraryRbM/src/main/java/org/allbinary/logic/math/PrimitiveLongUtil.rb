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


module ::Org; module Allbinary; module Logic; module MathPackage

class PrimitiveLongUtil
    attr_accessor :logUtil, :powerOfTen, :maxValue, :maxDigits, :charArray, :currentTotalDigits, :primitiveLongSingleton

    def jfields_org_allbinary_logic_math_PrimitiveLongUtil
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @powerOfTen = nil unless instance_variable_defined?(:@powerOfTen)
        @maxValue = nil unless instance_variable_defined?(:@maxValue)
        @maxDigits = nil unless instance_variable_defined?(:@maxDigits)
        @charArray = nil unless instance_variable_defined?(:@charArray)
        @currentTotalDigits = 0 unless instance_variable_defined?(:@currentTotalDigits)
        @primitiveLongSingleton = PrimitiveLongSingleton.getInstance()
    end
    

    def self.createPowerOfTen(powerOfTen)
        primitiveLongUtil = PrimitiveLongUtil.new(powerOfTen, ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT)
        if powerOfTen % 10 != 0
            logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            logUtil.put(commonStrings.EXCEPTION, primitiveLongUtil, commonStrings.CONSTRUCTOR, StandardError.new("Max must be power of 10"))
        end
        return primitiveLongUtil
    end
    

    def initialize(powerOfTen, unused)
        jfields_org_allbinary_logic_math_PrimitiveLongUtil
        @maxDigits = MathUtil.getInstance().getTotalDigits(powerOfTen)
        @powerOfTen = powerOfTen
        @maxValue = (powerOfTen * 10) - 1
        @charArray = (Array.new(@maxDigits, "\0")).tap { |java_array| java_array.instance_variable_set(:@java_component, :C) }
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

module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :MathUtil, "org/allbinary/logic/math/MathUtil" unless const_defined?(:MathUtil, false)
autoload :PrimitiveLongSingleton, "org/allbinary/logic/math/PrimitiveLongSingleton" unless const_defined?(:PrimitiveLongSingleton, false)

end; end; end; end

