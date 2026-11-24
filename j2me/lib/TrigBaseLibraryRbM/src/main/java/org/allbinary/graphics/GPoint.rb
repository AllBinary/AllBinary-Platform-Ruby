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

module ::Org; module Allbinary; module Graphics

class GPoint
    attr_accessor :x, :y, :z

    def jfields_org_allbinary_graphics_GPoint
        @x = nil unless instance_variable_defined?(:@x)
        @y = nil unless instance_variable_defined?(:@y)
        @z = nil unless instance_variable_defined?(:@z)
    end
    

    def self.getInstance(point)
        return GPoint.new(point.getX(), point.getY(), point.getZ())
    end
    

    def initialize(x, y, z)
        jfields_org_allbinary_graphics_GPoint
        @x = x
        @y = y
        @z = z
    end
    

    def getX()
        return @x
    end
    

    def getY()
        return @y
    end
    

    def getZ()
        return @z
    end
    

    def getRawX()
        return @x
    end
    

    def getRawY()
        return @y
    end
    

    def getRawZ()
        return @z
    end
    

    def toString()
        return GPoint.toStringStatic(self.getX(), self.getY(), self.getZ())
    end
    alias_method :to_s, :toString
    

    def self.toStringStatic(x, y, z)
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        positionStrings = ::Org::Allbinary::MathPackage::PositionStrings.getInstance()
        stringBuffer.append(GPoint::POINT_LABEL)
        stringBuffer.append(positionStrings.X_LABEL)
        stringBuffer.appendint(x)
        stringBuffer.append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().SPACE)
        stringBuffer.append(positionStrings.Y_LABEL)
        stringBuffer.appendint(y)
        stringBuffer.append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().SPACE)
        stringBuffer.append(positionStrings.Z_LABEL)
        stringBuffer.appendint(z)
        return stringBuffer.to_s
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:POINT_LABEL, "Point: ")
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "GPoint"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:POINT_LABEL].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :PositionStrings, "org/allbinary/math/PositionStrings" unless const_defined?(:PositionStrings, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end

begin
    GPoint.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end

