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

# require "javax/microedition/lcdui/Graphics"
# require "javax/microedition/lcdui/Image"
# require "javax/microedition/lcdui/game/Sprite"
require "org/allbinary/animation/RotationAnimation"

class HackRotationSpriteIndexedAnimation < RotationAnimation
    attr_accessor :sprite, :image

    def initialize_fields
        @sprite = nil
        @image = nil
    end
    

    def initialize(sprite, image, angleInfo, animationBehavior)
        super(angleInfo, CircularIndexUtil.createInstance(360 / angleInfo.getAngleIncrementInfo().getAngleIncrement()), animationBehavior)
        initialize_fields
        @sprite = sprite
        @image = image
    end
    

    # throws Exception
    def getAnimationSize()
        return self.getSize()
    end
    

    def paintFrame(g, frame, x, y)
        self.setFrame(frame)
        self.paintXY(g, x, y)
    end
    

    def paintXY(g, x, y)
        @sprite.setPosition(x, y)
        self.paint(g)
    end
    

    def paint(g)
        @sprite.paint(g)
    end
    

    def nextRotation()
        @sprite.nextFrame()
    end
    

    def previousRotation()
        @sprite.prevFrame()
    end
    

    def getSize()
        return @sprite.getRawFrameCount()
    end
    

    def setFrame(frame)
        @sprite.setFrame(frame)
    end
    

    def getFrame()
        return @sprite.getFrame()
    end
    

    def setSequence(sequence)
    end
    

    def getSequence()
        return PrimitiveIntUtil.getArrayInstance()
    end
end

require "org/allbinary/animation/AnimationBehavior"
require "org/allbinary/logic/math/PrimitiveIntUtil"
require "org/allbinary/math/AngleInfo"
require "org/allbinary/util/CircularIndexUtil"

