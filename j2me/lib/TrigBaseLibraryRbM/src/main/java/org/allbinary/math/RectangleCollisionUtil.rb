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
# package org.allbinary.math

# require "jsinterop/annotations/JsType"
# require "jsinterop/annotations/JsMethod"
# require "jsinterop/annotations/JsConstructor"

class RectangleCollisionUtil
    

    def self.getInstance()
        return RectangleCollisionUtil.instance
    end
    

    def initialize()
    end
    

    def isCollision(rectX1, rectY1, rectX2, rectY2, rect2X1, rect2Y1, rect2X2, rect2Y2)
        if rect2X1 >= rectX2 || rect2Y1 >= rectY2 || rect2X2 <= rectX1 || rect2Y2 <= rectY1
            return false
        else
            return true
        end
    end
    

    def isInside(rectX1, rectY1, rectX2, rectY2, x, y)
        if x >= rectX2 || y >= rectY2 || x <= rectX1 || y <= rectY1
            return false
        else
            return true
        end
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

class RectangleCollisionUtil
    @@instance = RectangleCollisionUtil.new()
end

