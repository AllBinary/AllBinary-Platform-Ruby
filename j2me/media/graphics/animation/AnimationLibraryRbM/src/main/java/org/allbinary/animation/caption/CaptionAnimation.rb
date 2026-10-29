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
# package org.allbinary.animation.caption

# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/animation/Animation"

class CaptionAnimation < Animation
    attr_accessor :animationInterface, :overlayAnimationInterface, :captionDx, :captionDy, :dx, :dy

    def initialize_fields
        @animationInterface = nil
        @overlayAnimationInterface = nil
        @captionDx = nil
        @captionDy = nil
        @dx = nil
        @dy = nil
    end
    

    def initialize(animationInterface, overlayAnimationInterface, captionDx, captionDy, dx, dy)
        super()
        initialize_fields
        @animationInterface = animationInterface
        @overlayAnimationInterface = overlayAnimationInterface
        @captionDx = captionDx
        @captionDy = captionDy
        @dx = dx
        @dy = dy
    end
    

    # throws Exception
    def nextFrame()
    end
    

    def paintXY(graphics, x, y)
        @animationInterface.paintXY(graphics, x + @captionDx, y + @captionDy)
        @overlayAnimationInterface.paintXY(graphics, x + @captionDx + @dx, y + @captionDy + @dy)
    end
    

    def paintThreedXYZ(graphics, x, y, z)
        @animationInterface.paintThreedXYZ(graphics, x + @captionDx, y + @captionDy, z)
        @overlayAnimationInterface.paintThreedXYZ(graphics, x + @captionDx + @dx, y + @captionDy + @dy, z)
    end
end

