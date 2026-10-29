# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.logic.math

# require "jsinterop/annotations/JsType"

class MathUtil
    attr_accessor :ACCURACY

    def initialize_fields
        @ACCURACY = 100
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return MathUtil.instance
    end
    

    def getTotalDigits(digits)
        total = 0
        while digits > 0
            digits = digits / 10
            total += 1
        end
        return total
    end
    

    def sqrt(value)
        if value <= 1
            return value
        end
        accumulated = value >> 1
        result = (accumulated + (value / accumulated)) >> 1
        loop do
            accumulated = result
            result = (accumulated + (value / accumulated)) >> 1
            break unless accumulated > result
        end
        return accumulated
    end
    

    def sqrtd(x)
        if x == 0
            return 0.0
        end
        if x < 0
            return -1.0
        end
        result = (x).to_f
        (0...@ACCURACY).each do |index|
            result = (result + ((x).to_f / result)) / 2.0
        end
        return result
    end
    

    def abs(value)
        return ((value < 0) ? -value : value)
    end
    

    def abslong(value)
        return ((value < 0) ? -value : value)
    end
    

    def min(value, value2)
        return ((value <= value2) ? value : value2)
    end
    

    def max(value, value2)
        return ((value >= value2) ? value : value2)
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

class MathUtil
    @@instance = MathUtil.new()
end

