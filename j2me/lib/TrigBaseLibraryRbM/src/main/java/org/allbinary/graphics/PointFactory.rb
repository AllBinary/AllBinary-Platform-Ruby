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
        PointFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        PointFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = PointFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "PointFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :GPoint, "org/allbinary/graphics/GPoint"

begin
    PointFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

