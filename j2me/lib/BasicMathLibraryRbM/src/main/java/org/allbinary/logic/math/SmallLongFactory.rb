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


class SmallLongFactory
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
        return SmallLongFactory.instance
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
        if @INTEGER_ARRAY[0] == nil
            if @lastMin < @POSITIVE_MAX || @lastNegativeMin < @NEGATIVE_MAX
                (@POSITIVE_MAX - 1).step(@lastMin, -(1)) do |index|
                    @INTEGER_ARRAY[index + @NEGATIVE_MAX] = index
                end
                (@NEGATIVE_MAX - 1).step(@lastNegativeMin, -(1)) do |index|
                    @INTEGER_ARRAY[index] = -index
                end
                @lastMin = @POSITIVE_MAX
                @lastNegativeMin = @NEGATIVE_MAX
            end
        end
    end
    

    def initialize()
        initialize_fields
    end
    

    def getInstanceNoThrow(index)
        if index + @NEGATIVE_MAX > @INTEGER_ARRAY.length - 1
            return @INTEGER_ARRAY[-1 + @NEGATIVE_MAX]
        end
        return @INTEGER_ARRAY[(index) + @NEGATIVE_MAX]
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

class SmallLongFactory
    @@instance = SmallLongFactory.new()
end

