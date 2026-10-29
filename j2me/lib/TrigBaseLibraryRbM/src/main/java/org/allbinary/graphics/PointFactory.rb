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
# package org.allbinary.graphics

# require "jsinterop/annotations/JsType"
# require "jsinterop/annotations/JsMethod"
# require "jsinterop/annotations/JsConstructor"
# require "jsinterop/annotations/JsProperty"

class PointFactory
    attr_accessor :ZERO_ZERO

    def initialize_fields
        @ZERO_ZERO = self.createXYZ(0, 0, 0)
    end
    

    def self.getInstance()
        return PointFactory.instance
    end
    

    def init()
    end
    

    def initialize()
        initialize_fields
    end
    

    def createXY(x, y)
        return GPoint.new(x, y, 0)
    end
    

    def createXYZ(x, y, z)
        return GPoint.new(x, y, z)
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/graphics/GPoint"

class PointFactory
    @@instance = PointFactory.new()
end

