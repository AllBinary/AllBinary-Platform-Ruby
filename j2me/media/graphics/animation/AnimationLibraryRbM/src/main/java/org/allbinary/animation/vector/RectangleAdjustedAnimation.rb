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
# package org.allbinary.animation.vector

# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/animation/Animation"
require "org/allbinary/graphics/color/ColorCompositeInterface"

class RectangleAdjustedAnimation < Animation
    include ColorCompositeInterface
    attr_accessor :width, :height, :offsetX, :offsetY

    def initialize_fields
        @width = nil
        @height = nil
        @offsetX = nil
        @offsetY = nil
    end
    

    def initialize(width, height, offsetX, offsetY, basicColor)
        super()
        initialize_fields
        @width = width
        @height = height
        @offsetX = offsetX
        @offsetY = offsetY
        self.setBasicColorP(basicColor)
    end
    

    def nextFrame()
    end
    

    def paintXY(graphics, x, y)
        @basicSetColorUtil.setBasicColorP3(graphics, self.getBasicColorP(), self.getColor())
        graphics.drawRect(x + @offsetX, y + @offsetY, @width, @height)
    end
    

    def setWidth(width)
        @width = width
    end
    

    def setHeight(height)
        @height = height
    end
    

    def setOffsetX(offsetX)
        @offsetX = offsetX
    end
    

    def setOffsetY(offsetY)
        @offsetY = offsetY
    end
end

require "org/allbinary/graphics/color/BasicColor"

