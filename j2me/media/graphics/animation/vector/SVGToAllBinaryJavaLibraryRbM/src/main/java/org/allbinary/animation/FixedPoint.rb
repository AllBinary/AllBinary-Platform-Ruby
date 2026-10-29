# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.animation


class FixedPoint
    attr_accessor :ONE

    def initialize_fields
        @ONE = 1 << 16
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return FixedPoint.instance
    end
    

    def toFixed(val)
        return ((val * 65536.0)).to_i
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def toFixed(val)
        return ((val * 65536.0)).to_i
    end
    

    def mul(a, b)
        return ((a * b) >> 16)
    end
    

    def div(a, b)
        return (((a) << 16) / b)
    end
    

    def toInt(fixed)
        return fixed >> 16
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

class FixedPoint
    @@instance = FixedPoint.new()
end

