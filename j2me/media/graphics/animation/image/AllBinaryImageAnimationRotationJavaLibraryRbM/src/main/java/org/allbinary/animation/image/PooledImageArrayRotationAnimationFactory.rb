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
require "org/allbinary/animation/AnimationInterfaceFactoryInterface"

#TWB - Adjustments should be done in the resource creation and not at the animation level
class PooledImageArrayRotationAnimationFactory
    include AnimationInterfaceFactoryInterface
    attr_accessor :allBinaryImageRotationAnimationInfo, :animationBehaviorFactory

    def initialize_fields
        @allBinaryImageRotationAnimationInfo = NullUtil.getInstance().NULL_OBJECT
        @animationBehaviorFactory = nil
    end
    

    # throws Exception
    def self.createFactory(image, animationBehaviorFactory)
        totalAngle = (AngleFactory.getInstance().TOTAL_ANGLE).to_i
        angleIncrement = (totalAngle / GameConfigurationCentral.getInstance().getGameControlFidelity())
        return PooledImageArrayRotationAnimationFactory.new(image, image.getWidth(), image.getHeight(), -(image.getWidth() >> 2), -(image.getHeight() >> 2), angleIncrement, animationBehaviorFactory)
    end
    

    # throws Exception
    def self.createDXY(image, dx, dy, animationBehaviorFactory)
        totalAngle = (AngleFactory.getInstance().TOTAL_ANGLE).to_i
        angleIncrement = (totalAngle / GameConfigurationCentral.getInstance().getGameControlFidelity())
        return PooledImageArrayRotationAnimationFactory.new(image, image.getWidth(), image.getHeight(), dx, dy, angleIncrement, animationBehaviorFactory)
    end
    

    def initialize(image, width, height, dx, dy, angleIncrement, animationBehaviorFactory)
        initialize_fields
        @animationBehaviorFactory = animationBehaviorFactory
        totalAngle = (AngleFactory.getInstance().TOTAL_ANGLE).to_i
        imageArray = ImageToRotationImageArrayUtil.getInstance().generate(image, angleIncrement, totalAngle)
        @allBinaryImageRotationAnimationInfo = ImageArrayRotationAnimationInfo.new(imageArray, angleIncrement, totalAngle, dx, dy)
    end
    

    # throws Exception
    def getInstance(instanceId)
        return AdjustedImageArrayRotationAnimation.createAdjustedImageArrayRotationAnimationInfo(@allBinaryImageRotationAnimationInfo, @animationBehaviorFactory.getOrCreateInstance())
    end
    

    def setInitialScale(scaleProperties)
    end
end

require "org/allbinary/animation/Animation"
require "org/allbinary/animation/AnimationBehaviorFactory"
require "org/allbinary/game/configuration/GameConfigurationCentral"
require "org/allbinary/logic/NullUtil"
require "org/allbinary/math/AngleFactory"
require "org/allbinary/media/ScaleProperties"
require "org/allbinary/media/image/ImageToRotationImageArrayUtil"
require "org/allbinary/animation/image/AdjustedImageArrayRotationAnimation"
require "org/allbinary/animation/image/ImageArrayRotationAnimationInfo"

