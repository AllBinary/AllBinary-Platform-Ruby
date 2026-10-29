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

class RectangleAnimation < Animation
    include ColorCompositeInterface
    attr_accessor :width, :height

    def initialize_fields
        @width = nil
        @height = nil
    end
    

    def initialize(width, height, basicColor)
        super()
        initialize_fields
        @width = width
        @height = height
        self.setBasicColorP(basicColor)
    end
    

    def nextFrame()
    end
    

    def paintXY(graphics, x, y)
        @basicSetColorUtil.setBasicColorP3(graphics, self.getBasicColorP(), self.getColor())
        graphics.drawRect(x, y, @width, @height)
    end
    

    def setWidth(width)
        @width = width
    end
    

    def setHeight(height)
        @height = height
    end
end

require "org/allbinary/graphics/color/BasicColor"

