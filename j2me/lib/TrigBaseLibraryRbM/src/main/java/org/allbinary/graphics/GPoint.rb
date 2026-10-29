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

class GPoint
    attr_accessor :x, :y, :z

    def initialize_fields
        @x = nil
        @y = nil
        @z = nil
    end
    

    def self.getInstance(point)
        return GPoint.new(point.getX(), point.getY(), point.getZ())
    end
    

    def initialize(x, y, z)
        initialize_fields
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
        stringBuffer = StringMaker.new()
        positionStrings = PositionStrings.getInstance()
        stringBuffer.append(GPoint::POINT_LABEL)
        stringBuffer.append(positionStrings.X_LABEL)
        stringBuffer.appendint(x)
        stringBuffer.append(CommonSeps.getInstance().SPACE)
        stringBuffer.append(positionStrings.Y_LABEL)
        stringBuffer.appendint(y)
        stringBuffer.append(CommonSeps.getInstance().SPACE)
        stringBuffer.append(positionStrings.Z_LABEL)
        stringBuffer.appendint(z)
        return stringBuffer.to_s
    end
end

require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/math/PositionStrings"
require "org/allbinary/string/CommonSeps"

class GPoint
    POINT_LABEL = "Point: "
end

