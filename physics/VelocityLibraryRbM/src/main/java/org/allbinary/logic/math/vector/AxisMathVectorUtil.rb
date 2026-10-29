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
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/math/NoDecimalTrigTable"

class AxisMathVectorUtil
    @@instance = AxisMathVectorUtil.new()
end

