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

class ImageArrayAnimationFactory
    include AnimationInterfaceFactoryInterface
    attr_accessor :dx, :dy, :imageArray, :animationBehaviorFactory

    def initialize_fields
        @dx = 0
        @dy = 0
        @imageArray = nil
        @animationBehaviorFactory = nil
    end
    

    def initialize(imageArray, dx, dy, animationBehaviorFactory)
        initialize_fields
        @imageArray = imageArray
        @animationBehaviorFactory = animationBehaviorFactory
        @dx = dx
        @dy = dy
    end
    

    # throws Exception
    def getInstance(instanceId)
        if @dx != 0 || @dy != 0
            return AdjustedImageArrayAnimation.new(@imageArray, @dx, @dy, @animationBehaviorFactory.getOrCreateInstance())
        else
            return ImageArrayAnimation.new(@imageArray, AnimationBehavior.getInstance())
        end
    end
    

    def setInitialScale(scaleProperties)
    end
end

require "org/allbinary/animation/Animation"
require "org/allbinary/animation/AnimationBehavior"
require "org/allbinary/animation/AnimationBehaviorFactory"
require "org/allbinary/logic/communication/log/ForcedLogUtil"
require "org/allbinary/media/ScaleProperties"
require "org/allbinary/animation/image/AdjustedImageArrayAnimation"
require "org/allbinary/animation/image/ImageArrayAnimation"

