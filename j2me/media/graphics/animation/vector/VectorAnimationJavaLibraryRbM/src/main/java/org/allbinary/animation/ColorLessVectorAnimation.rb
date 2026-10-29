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
# package org.allbinary.animation

# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/animation/VectorAnimation"

class ColorLessVectorAnimation < VectorAnimation
    

    def initialize(currentPoints, animationBehavior)
        super(currentPoints, BasicColorFactory.getInstance().WHITE, animationBehavior)
    end
    

    def paintXY(graphics, x, y)
        self.paintVectors(graphics, x, y)
    end
end

require "org/allbinary/graphics/color/BasicColorFactory"
require "org/allbinary/animation/AnimationBehavior"

