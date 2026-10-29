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
# package org.allbinary.animation.image

# require "javax/microedition/lcdui/Graphics"
# require "javax/microedition/lcdui/Image"
require "org/allbinary/animation/image/AllBinaryHTMLImageRotationAnimation"

class AllBinaryAdjustedHTMLImageRotationAnimation < AllBinaryHTMLImageRotationAnimation
    attr_accessor :dx, :dy

    def initialize_fields
        @dx = 0
        @dy = 0
    end
    

    def initialize(originalImage, image, angleInfo, totalAngle, dx, dy, animationBehavior)
        super(originalImage, image, angleInfo, totalAngle, animationBehavior)
        initialize_fields
        self.init(dx, dy)
    end
    

    # throws Exception
    def init(dx, dy)
        @dx = dx
        @dy = dy
    end
    

    def setDx(dx)
        @dx = dx
    end
    

    def getDx()
        return @dx
    end
    

    def setDy(dy)
        @dy = dy
    end
    

    def getDy()
        return @dy
    end
    

    def paintXY(graphics, x, y)
        super(graphics, x + @dx, y + @dy)
    end
end

require "org/allbinary/animation/AnimationBehavior"
require "org/allbinary/math/AngleInfo"

