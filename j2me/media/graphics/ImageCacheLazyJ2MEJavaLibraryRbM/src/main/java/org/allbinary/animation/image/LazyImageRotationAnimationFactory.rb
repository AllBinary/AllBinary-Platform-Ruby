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
# package org.allbinary.animation.image

require "org/allbinary/animation/AnimationInterfaceFactoryInterface"

class LazyImageRotationAnimationFactory
    include AnimationInterfaceFactoryInterface
    attr_accessor :layoutIndex, :animationInterfaceFactoryInterface, :scaleProperties

    def initialize_fields
        @layoutIndex = nil
        @animationInterfaceFactoryInterface = nil
        @scaleProperties = ScaleProperties.instance
    end
    

    def initialize(layoutIndex, associatedLazyAnimationId, animationInterfaceFactoryInterface)
        initialize_fields
        @layoutIndex = layoutIndex
        @animationInterfaceFactoryInterface = animationInterfaceFactoryInterface
        ImageCacheFactory.getInstance().hasAnyLazyAnimationFactories = true
        if @animationInterfaceFactoryInterface.animationBehaviorFactory == AnimationBehaviorFactory.getInstance()
            ForcedLogUtil.log("Using default AnimationBehaviorFactory with IndexedAnimationFactory", self)
        end
    end
    

    # throws Exception
    def getInstance(instanceId)
        if @animationInterfaceFactoryInterface.getImage().isReady()
            @animationInterfaceFactoryInterface.setInitialScale(@scaleProperties)
            return @animationInterfaceFactoryInterface.getInstance(instanceId)
        else
            return LazyImageRotationAnimation.new(@layoutIndex, instanceId, @scaleProperties, @animationInterfaceFactoryInterface, @animationInterfaceFactoryInterface.animationBehaviorFactory.getOrCreateInstance())
        end
    end
    

    def setInitialScale(scaleProperties)
        @scaleProperties = scaleProperties
    end
end

require "org/allbinary/animation/Animation"
require "org/allbinary/animation/AnimationBehaviorFactory"
require "org/allbinary/image/ImageCacheFactory"
require "org/allbinary/logic/communication/log/ForcedLogUtil"
require "org/allbinary/media/ScaleProperties"
require "org/allbinary/animation/image/BaseImageAnimationFactory"
require "org/allbinary/animation/image/LazyImageRotationAnimation"

