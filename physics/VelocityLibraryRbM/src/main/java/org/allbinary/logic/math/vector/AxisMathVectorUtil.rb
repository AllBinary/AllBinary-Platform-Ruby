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
# package org.allbinary.logic.math.vector


class AxisMathVectorUtil
    attr_accessor :noDecimalTrigTable

    def initialize_fields
        @noDecimalTrigTable = NoDecimalTrigTable.getInstance()
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return AxisMathVectorUtil.instance
    end
    

    def calculateX(magnitude, angle)
        return magnitude * @noDecimalTrigTable.cos(angle) / 10
    end
    

    def calculateY(magnitude, angle)
        return magnitude * @noDecimalTrigTable.sin(angle) / 10
    end
    

    def calculateZ(magnitude, otherAngle)
        return magnitude * @noDecimalTrigTable.sin(otherAngle) / 10
    end

    def self.instance()
        AxisMathVectorUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        AxisMathVectorUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = AxisMathVectorUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "AxisMathVectorUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :NoDecimalTrigTable, "org/allbinary/math/NoDecimalTrigTable"

begin
    AxisMathVectorUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

