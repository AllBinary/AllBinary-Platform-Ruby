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
end

class CustomGPoint
    NULL_CUSTOM_POINT = CustomGPoint.new(0, 0, 0)
end

