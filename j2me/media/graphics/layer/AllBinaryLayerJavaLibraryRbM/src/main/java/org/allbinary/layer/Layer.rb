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
# package org.allbinary.layer

# require "javax/microedition/lcdui/Graphics"

class Layer
    attr_accessor :logUtil, :x, :y, :z, :width, :height, :visible

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @x = 0
        @y = 0
        @z = 3
        @width = 0
        @height = 0
        @visible = true
    end
    

    def initialize(width, height)
        initialize_fields
        self.setLayerWidth(width)
        self.setLayerHeight(height)
    end
    

    def setPosition(x, y, z)
        @x = x
        @y = y
        @z = z
    end
    

    def moveDXY(dx, dy)
        @x += dx
        @y += dy
    end
    

    def moveDXYZ(dx, dy, dz)
        @x += dx
        @y += dy
        @z += dz
    end
    

    def getXP()
        return @x
    end
    

    def getYP()
        return @y
    end
    

    def getZP()
        return @z
    end
    

    def getWidth()
        return @width
    end
    

    def getHeight()
        return @height
    end
    

    def getDepth()
        return 0
    end
    

    def setVisible(visible)
        @visible = visible
    end
    

    def isVisible()
        return @visible
    end
    

    def paint(graphics)
        commonStrings = CommonStrings.getInstance()
        canvasStrings = CanvasStrings.getInstance()
        @logUtil.putF(commonStrings.NOT_IMPLEMENTED, self, canvasStrings.PAINT)
    end
    

    def setLayerWidth(width)
        if width < 0
            raise ArgumentError.new()
        end
        @width = width
    end
    

    def setLayerHeight(height)
        if height < 0
            raise ArgumentError.new()
        end
        @height = height
    end
    

    def toStringAppend(stringBuffer)
    end
end

require "org/allbinary/graphics/displayable/CanvasStrings"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/math/SmallIntegerSingletonFactory"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/string/CommonStrings"

class Layer
    ID = SmallIntegerSingletonFactory.getInstance().getAt(0)
end

