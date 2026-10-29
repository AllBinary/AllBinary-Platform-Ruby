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

class AdjustedVectorAnimation < VectorAnimation
    attr_accessor :dx, :dy

    def initialize_fields
        @dx = nil
        @dy = nil
    end
    

    def initialize(currentPoints, basicColor, dx, dy, animationBehavior)
        super(currentPoints, basicColor, animationBehavior)
        initialize_fields
        @dx = dx
        @dy = dy
    end
    

    def paintXY(graphics, x, y)
        super(graphics, x + @dx, y + @dy)
    end
end

require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/animation/AnimationBehavior"

