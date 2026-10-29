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

class CircleAnimation < Animation
    include ColorCompositeInterface
    attr_accessor :TOTAL_ANGLE, :width, :height

    def initialize_fields
        @TOTAL_ANGLE = (AngleFactory.getInstance().TOTAL_ANGLE).to_i
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
        graphics.drawArc(x, y, @width, @height, 0, @TOTAL_ANGLE)
    end
end

require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/math/AngleFactory"

