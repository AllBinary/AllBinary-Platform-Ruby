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
# package org.allbinary.animation.image.sprite

# require "javax/microedition/lcdui/Image"
# require "javax/microedition/lcdui/game/Sprite"
require "org/allbinary/animation/image/sprite/HackRotationSpriteIndexedAnimation"

class AllBinarySpriteRotationAnimation < HackRotationSpriteIndexedAnimation
    

    def initialize(sprite, image, animationBehavior)
        super(sprite, image, AngleInfo.getInstance(((((AngleFactory.getInstance().TOTAL_ANGLE / sprite.getRawFrameCount())).to_i + 32768) % 65536 - 32768)), animationBehavior)
        @angleInfo.adjustAngle(@sprite.getFrame())
    end
    

    def nextRotation()
        @sprite.nextFrame()
        @angleInfo.adjustAngle(@sprite.getFrame())
    end
    

    def previousRotation()
        @sprite.prevFrame()
        @angleInfo.adjustAngle(@sprite.getFrame())
    end
    

    def setFrameByDirection(direction)
        angle = @directionUtil.getFrameAngle(direction)
        self.adjustFrameToAngle(angle)
    end
    

    def setFrameToAngle(angle)
        self.adjustFrameToAngle(angle)
    end
    

    def setFrame(index)
        @sprite.setFrame(index)
        @angleInfo.adjustAngle(self.getFrame())
    end
    

    def adjustFrameToAngle(angle)
        self.adjustFrame(angle.getValue())
    end
    

    def adjustFrame(angle)
        self.setFrame(@frameUtil.getFrameForAngle(angle, (@angleInfo.getAngleIncrementInfo().getAngleIncrement()).to_i))
    end
end

require "org/allbinary/animation/AnimationBehavior"
require "org/allbinary/direction/Direction"
require "org/allbinary/math/Angle"
require "org/allbinary/math/AngleFactory"
require "org/allbinary/math/AngleInfo"

