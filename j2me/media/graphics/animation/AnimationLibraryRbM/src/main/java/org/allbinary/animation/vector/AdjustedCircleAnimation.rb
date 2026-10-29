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
require "org/allbinary/animation/vector/CircleAnimation"

class AdjustedCircleAnimation < CircleAnimation
    attr_accessor :xAdjustment, :yAdjustment

    def initialize_fields
        @xAdjustment = 0
        @yAdjustment = 0
    end
    

    def self.createAnimation(width, height, xAdjustment, yAdjustment, basicColor)
        adjustedCircleAnimation = AdjustedCircleAnimation.new(width, height, basicColor)
        adjustedCircleAnimation.initXY(xAdjustment, yAdjustment)
        return adjustedCircleAnimation
    end
    

    def self.createW(width, height, innerWidth, basicColor)
        adjustedCircleAnimation = AdjustedCircleAnimation.new(width, height, basicColor)
        adjustedCircleAnimation.init(innerWidth)
        return adjustedCircleAnimation
    end
    

    def initialize(width, height, basicColor)
        super(width, height, basicColor)
        initialize_fields
    end
    

    def initXY(xAdjustment, yAdjustment)
        @xAdjustment = xAdjustment
        @yAdjustment = yAdjustment
    end
    

    def init(innerWidth)
        if AndroidUtil.isAndroid()
            widthPortion = (((innerWidth / 3) * 10) / 7)
            @xAdjustment = -((@width >> 1) - widthPortion)
            @yAdjustment = @xAdjustment
        else
            @xAdjustment = -((@width >> 1) - innerWidth)
            @yAdjustment = @xAdjustment
        end
    end
    

    def paintXY(graphics, x, y)
        @basicSetColorUtil.setBasicColorP3(graphics, self.getBasicColorP(), self.getColor())
        graphics.drawArc(x + @xAdjustment, y + @yAdjustment, @width, @height, 0, @TOTAL_ANGLE)
    end
end

require "org/allbinary/AndroidUtil"
require "org/allbinary/graphics/color/BasicColor"

