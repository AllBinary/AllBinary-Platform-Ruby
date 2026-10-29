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
require "org/allbinary/graphics/color/ColorCompositeInterface"
require "org/allbinary/animation/vector/RectangleFilledAnimation"

class RectangleFilledAdjustedAnimation < RectangleFilledAnimation
    include ColorCompositeInterface
    attr_accessor :offsetX, :offsetY

    def initialize_fields
        @offsetX = nil
        @offsetY = nil
    end
    

    def initialize(width, height, offsetX, offsetY, basicColor)
        super(width, height, basicColor)
        initialize_fields
        @offsetX = offsetX
        @offsetY = offsetY
        self.setBasicColorP(basicColor)
    end
    

    def nextFrame()
    end
    

    def paintXY(graphics, x, y)
        @basicSetColorUtil.setBasicColorP3(graphics, self.getBasicColorP(), self.getColor())
        super(graphics, x + @offsetX, y + @offsetY)
    end
    

    def setOffsetX(offsetX)
        @offsetX = offsetX
    end
    

    def setOffsetY(offsetY)
        @offsetY = offsetY
    end
end

require "org/allbinary/graphics/color/BasicColor"

