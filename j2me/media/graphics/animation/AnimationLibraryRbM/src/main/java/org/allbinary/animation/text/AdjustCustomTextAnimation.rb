# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.animation.text

# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/animation/text/CustomTextAnimation"

class AdjustCustomTextAnimation < CustomTextAnimation
    attr_accessor :dx, :dy

    def initialize_fields
        @dx = nil
        @dy = nil
    end
    

    def initialize(text, fontSize, dx, dy, animationBehavior)
        super(text, fontSize, animationBehavior)
        initialize_fields
        @dx = dx
        @dy = dy
    end
    

    def getDx()
        return @dx
    end
    

    def setDx(dx)
        @dx = dx
    end
    

    def getDy()
        return @dy
    end
    

    def setDy(dy)
        @dy = dy
    end
    

    def paintXY(graphics, x, y)
        super(graphics, x + @dx, y + @dy)
    end
end

require "org/allbinary/animation/AnimationBehavior"

