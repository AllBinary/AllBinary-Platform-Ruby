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

require "org/allbinary/animation/VectorBaseRotationAnimation"

class VectorRotationAnimation < VectorBaseRotationAnimation
    

    def initialize(currentPoints, basicColor, animationBehavior)
        super(AngleInfo.getInstance(((((AngleFactory.getInstance().TOTAL_ANGLE / currentPoints.length)).to_i + 32768) % 65536 - 32768)), currentPoints, basicColor, animationBehavior)
        @angleInfo.adjustAngle(self.getFrame())
    end
    

    def setFrameByDirection(direction)
        angle = @directionUtil.getFrameAngle(direction)
        self.adjustFrameToAngle(angle)
    end
    

    def setFrameToAngle(angle)
        self.adjustFrameToAngle(angle)
    end
    

    def setFrame(index)
        super(index)
        @angleInfo.adjustAngle(self.getFrame())
    end
    

    def adjustFrame(newAngle)
        self.setFrame(@frameUtil.getFrameForAngle(newAngle, (@angleInfo.getAngleIncrementInfo().getAngleIncrement()).to_i))
    end
    

    def adjustFrameToAngle(newAngle)
        self.adjustFrame(newAngle.getValue())
    end
end

require "org/allbinary/direction/Direction"
require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/math/Angle"
require "org/allbinary/math/AngleFactory"
require "org/allbinary/math/AngleInfo"
require "org/allbinary/animation/AnimationBehavior"

