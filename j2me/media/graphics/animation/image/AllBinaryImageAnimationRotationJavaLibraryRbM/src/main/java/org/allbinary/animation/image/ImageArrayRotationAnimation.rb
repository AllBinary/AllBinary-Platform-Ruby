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

# require "javax/microedition/lcdui/Image"
require "org/allbinary/animation/image/ImageArrayBaseRotationAnimation"

class ImageArrayRotationAnimation < ImageArrayBaseRotationAnimation
    attr_accessor :expectedTotalFrames

    def initialize_fields
        @expectedTotalFrames = 0
    end
    

    # throws Exception
    def self.createAnimation(anyType, animationBehavior)
        imageRotationAnimationInfo = anyType
        return ImageArrayRotationAnimation.new(imageRotationAnimationInfo.getImageArray(), imageRotationAnimationInfo.getAngleInfoP(), imageRotationAnimationInfo.getTotalAngle(), animationBehavior)
    end
    

    def initialize(imageArray, angleInfo, totalAngle, animationBehavior)
        super(imageArray, angleInfo, animationBehavior)
        initialize_fields
        self.init(imageArray, angleInfo, totalAngle)
    end
    

    # throws Exception
    def init(imageArray, angleInfo, totalAngle)
        @expectedTotalFrames = totalAngle / @angleInfo.getAngleIncrementInfo().getAngleIncrement()
        @angleInfo.adjustAngle(0)
        if @expectedTotalFrames != self.getSize()
            raise StandardError.new("Wrong Number of Frames")
        end
    end
    

    def setImageArray(imageArray)
        super(imageArray)
        @angleInfo.adjustAngle(0)
    end
end

require "org/allbinary/animation/AnimationBehavior"
require "org/allbinary/math/AngleInfo"
require "org/allbinary/animation/image/ImageArrayRotationAnimationInfo"

