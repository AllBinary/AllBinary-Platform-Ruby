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


class SmallIntegerSingletonFactory
    attr_accessor :NEGATIVE_MAX, :POSITIVE_MAX, :INTEGER_ARRAY, :STRING_ARRAY, :MIN, :lastMin, :lastNegativeMin

    def initialize_fields
        @NEGATIVE_MAX = 500
        @POSITIVE_MAX = 0x2D1
        @INTEGER_ARRAY = Array.new(@NEGATIVE_MAX + @POSITIVE_MAX, nil)
        @STRING_ARRAY = Array.new(@NEGATIVE_MAX + @POSITIVE_MAX, nil)
        @MIN = 0
        @lastMin = 0
        @lastNegativeMin = 0
    end
    

    def self.getInstance()
        return SmallIntegerSingletonFactory.instance
    end
    

    def getMin()
        minAllowed = self.getMinAllowed()
        if @MIN <= minAllowed
            if J2MEUtil.isJ2ME()
            elsif AndroidUtil.isAndroid()
                logUtil = LogUtil.getInstance()
                logUtil.putF(StringMaker.new().append("Android InputFactory was initialized before GameMidlet: ").appendint(@MIN).to_s, self, "getMin")
                self.initWithRange(0x291, 6)
            else
                logUtil = LogUtil.getInstance()
                logUtil.putF(StringMaker.new().append("InputFactory was initialized before GameMidlet or KeyFactoryInitializer - Currently this is occurs on JS build by TouchMotionGestureFactory constructor: ").appendint(@MIN).to_s, self, "getMin")
                self.initWithRange(0x2D0, 6)
            end
        end
        if @MIN <= minAllowed
            logUtil = LogUtil.getInstance()
            logUtil.put("This means you loaded the InputFactory before determining the platform input size requirements.", self, "getMin", StandardError.new())
        end
        return @MIN
    end
    

    def getMinAllowed()
        if J2MEUtil.isJ2ME()
            return 0
        else
            if AndroidUtil.isAndroid()
                return 0x101
            else
                return 23
            end
        end
    end
    

    def initWithRange(value, negativeValue)
        (value - 1).step(@lastMin, -(1)) do |index|
            @INTEGER_ARRAY[index + @NEGATIVE_MAX] = index
        end
        (negativeValue - 1).step(@lastNegativeMin, -(1)) do |index|
            @INTEGER_ARRAY[index] = -index
        end
        if @lastMin < value
            @lastMin = value
            @MIN = value
        end
        if @lastNegativeMin < negativeValue
            @lastNegativeMin = negativeValue
        end
    end
    

    def init()
        if @lastMin < @POSITIVE_MAX || @lastNegativeMin < @NEGATIVE_MAX
            (@POSITIVE_MAX - 1).step(@lastMin, -(1)) do |index|
                @INTEGER_ARRAY[index + @NEGATIVE_MAX] = index
            end
            (@NEGATIVE_MAX - 1).step(@lastNegativeMin, -(1)) do |index|
                @INTEGER_ARRAY[index] = -index
            end
            @lastMin = @POSITIVE_MAX
            @MIN = @lastMin
            @lastNegativeMin = @NEGATIVE_MAX
        end
    end
    

    def initialize()
        initialize_fields
        self.initWithRange(23, 0)
    end
    

    def getAt(index)
        return @INTEGER_ARRAY[index + @NEGATIVE_MAX]
    end
    

    def getAtNoThrow(index)
        if index + @NEGATIVE_MAX > @INTEGER_ARRAY.length - 1
            return @INTEGER_ARRAY[-1 + @NEGATIVE_MAX]
        end
        return @INTEGER_ARRAY[index + @NEGATIVE_MAX]
    end
    

    def createInstance(index)
        integer = self.getAt(index)
        if integer == nil
            integer = index
        end
        return integer
    end
    

    def getString(index)
        i = index + @NEGATIVE_MAX
        if @STRING_ARRAY[i] == nil
            @STRING_ARRAY[i] = @INTEGER_ARRAY[i].to_s
        end
        return @STRING_ARRAY[i]
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/AndroidUtil"
require "org/allbinary/J2MEUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"

class SmallIntegerSingletonFactory
    @@instance = SmallIntegerSingletonFactory.new()
end

