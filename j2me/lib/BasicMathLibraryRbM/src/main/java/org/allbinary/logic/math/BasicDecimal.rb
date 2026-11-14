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


class BasicDecimal
    attr_accessor :units, :scaled, :factor, :factorValue

    def initialize_fields
        @units = nil
        @scaled = 0
        @factor = ScaleFactorFactory.getInstance().DEFAULT_SCALE_FACTOR
        @factorValue = ScaleFactorFactory.getInstance().DEFAULT_SCALE_VALUE
    end
    

    def self.createBigDecimal(bigDecimal)
        return BasicDecimal.new(bigDecimal.getUnscaled())
    end
    

    def initialize(units)
        initialize_fields
        @units = units
        self.updateScaled()
    end
    

    def setint(value)
        @units = value
        self.updateScaled()
    end
    

    def setlong(value)
        @units = value
        self.updateScaled()
    end
    

    def set(bigDecimal)
        @units = bigDecimal.getUnscaled()
        self.updateScaled()
    end
    

    def addint(value)
        @units = @units + value
        self.updateScaled()
    end
    

    def addlong(value)
        @units = @units + value
        self.updateScaled()
    end
    

    def add(bigDecimal)
        @units = @units + bigDecimal.getUnscaled()
        self.updateScaled()
    end
    

    def subtractint(value)
        @units = @units - value
        self.updateScaled()
    end
    

    def subtractlong(value)
        @units = @units - value
        self.updateScaled()
    end
    

    def subtract(bigDecimal)
        @units = @units - bigDecimal.getUnscaled()
        self.updateScaled()
    end
    

    def multiplyint(value)
        @units = @units * value
        self.updateScaled()
    end
    

    def multiplylong(value)
        @units = @units * value
        self.updateScaled()
    end
    

    def multiply(bigDecimal)
        @units = @units * bigDecimal.getUnscaled()
        self.updateScaled()
    end
    

    def divideint(value)
        @units = @units / value
        self.updateScaled()
    end
    

    def dividelong(value)
        @units = @units / value
        self.updateScaled()
    end
    

    def divide(bigDecimal)
        @units = @units / bigDecimal.getUnscaled()
        self.updateScaled()
    end
    

    def getUnscaled()
        return @units
    end
    

    def updateScaled()
        @scaled = (@units / @factorValue)
    end
    

    def getScaled()
        return @scaled
    end
    

    def toString()
        return (@units).to_s
    end
    alias_method :to_s, :toString
    

    def getScaledFactor()
        return @factor
    end
    

    def getScaledFactorValue()
        return @factorValue
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:ZERO_BIGDECIMAL, BasicDecimal.new(0))
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "BasicDecimal"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:ZERO_BIGDECIMAL].include?(name)
        end
        super
    end
end

autoload :ScaleFactorFactory, "org/allbinary/logic/math/ScaleFactorFactory"

begin
    BasicDecimal.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

