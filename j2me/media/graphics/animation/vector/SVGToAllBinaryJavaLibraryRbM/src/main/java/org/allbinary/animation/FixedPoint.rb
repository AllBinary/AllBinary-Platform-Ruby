# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.animation


module ::Org; module Allbinary; module Animation

class FixedPoint
    attr_accessor :ONE

    def jfields_org_allbinary_animation_FixedPoint
        @ONE = 1 << 16
    end

    def initialize
        jfields_org_allbinary_animation_FixedPoint
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def toFixed_j1_1(val)
        return ((val * 65536.0)).to_i
    end
    

    def toFixed_j1_2(val)
        return ((val * 65536.0)).to_i
    end

    def toFixed(*java_overload_args)
        return toFixed_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method toFixed takes #{java_overload_args.length} arguments"
    end

    def toFixed_j1(*java_overload_args)
        return toFixed_j1_1(*java_overload_args) if true && java_overload_args[0].is_a?(::Numeric)
        return toFixed_j1_2(*java_overload_args)
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
        FixedPoint.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        FixedPoint.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = FixedPoint.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "FixedPoint"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

begin
    FixedPoint.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end

