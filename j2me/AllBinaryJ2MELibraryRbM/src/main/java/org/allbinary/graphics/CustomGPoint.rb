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

require "org/allbinary/graphics/GPoint"

class CustomGPoint < GPoint
    attr_accessor :cx, :cy, :cz

    def initialize_fields
        @cx = 0
        @cy = 0
        @cz = 0
    end
    

    def self.getInstance(point)
        return CustomGPoint.new(point.getX(), point.getY(), point.getZ())
    end
    

    def self.getInstance3(x, y)
        return CustomGPoint.new(x, y, 3)
    end
    

    def initialize(x, y, z)
        super(x, y, z)
        initialize_fields
    end
    

    def setX(x)
        @cx = x
    end
    

    def getX()
        return @cx
    end
    

    def setY(y)
        @cy = y
    end
    

    def getY()
        return @cy
    end
    

    def setZ(z)
        @cz = z
    end
    

    def getZ()
        return @cz
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_CUSTOM_POINT, CustomGPoint.new(0, 0, 0))
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "CustomGPoint"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_CUSTOM_POINT].include?(name)
        end
        super
    end
end

begin
    CustomGPoint.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

