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

require "java/lang/JavaOverload"
require "org/allbinary/graphics/GPoint"

module ::Org; module Allbinary; module Graphics

class CustomGPoint < GPoint
    attr_accessor :cx, :cy, :cz

    def jfields_org_allbinary_graphics_CustomGPoint
        @cx = 0 unless instance_variable_defined?(:@cx)
        @cy = 0 unless instance_variable_defined?(:@cy)
        @cz = 0 unless instance_variable_defined?(:@cz)
    end
    

    def self.getInstance(point)
        return CustomGPoint.new(point.getX(), point.getY(), point.getZ())
    end
    

    def self.getInstance3(x, y)
        return CustomGPoint.new(x, y, 3)
    end
    

    def initialize(x, y, z)
        super(x, y, z)
        jfields_org_allbinary_graphics_CustomGPoint
    end
    

    def setX(x)
        @cx = x
    end
    java_overload :setX, 1
    

    def getX()
        return @cx
    end
    java_overload :getX, 0
    

    def setY(y)
        @cy = y
    end
    java_overload :setY, 1
    

    def getY()
        return @cy
    end
    java_overload :getY, 0
    

    def setZ(z)
        @cz = z
    end
    java_overload :setZ, 1
    

    def getZ()
        return @cz
    end
    java_overload :getZ, 0

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

end; end; end

