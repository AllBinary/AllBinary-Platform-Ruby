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
# require "javax/microedition/lcdui/NullImage"
require "org/allbinary/animation/AnimationInterfaceFactoryInterface"

class AllBinaryFlickerAndroidImageRotationAnimationFactory
    include AnimationInterfaceFactoryInterface
    attr_accessor :image, :angleIncrement, :animationBehaviorFactory

    def initialize_fields
        @image = NullImage::NULL_IMAGE
        @angleIncrement = nil
        @animationBehaviorFactory = nil
    end
    

    def initialize(image, width, height, angleIncrement, animationBehaviorFactory)
        initialize_fields
        self.setImage(image)
        @angleIncrement = angleIncrement
        @animationBehaviorFactory = animationBehaviorFactory
    end
    

    # throws Exception
    def getInstance(instanceId)
        image = ImageCopyUtil.getInstance().createImage(self.getImage())
        return AllBinaryFlickerAndroidImageRotationAnimation.new(self.getImage(), image, AngleInfo.getInstance(@angleIncrement), AngleFactory.getInstance().TOTAL_ANGLE, @animationBehaviorFactory.getOrCreateInstance())
    end
    

    def getAngleIncrement()
        return @angleIncrement
    end
    

    def setImage(image)
        @image = image
    end
    

    def getImage()
        return @image
    end
    

    def setInitialScale(scaleProperties)
    end
end

require "org/allbinary/animation/Animation"
require "org/allbinary/animation/AnimationBehaviorFactory"
require "org/allbinary/logic/communication/log/ForcedLogUtil"
require "org/allbinary/media/image/ImageCopyUtil"
require "org/allbinary/math/AngleFactory"
require "org/allbinary/math/AngleInfo"
require "org/allbinary/media/ScaleProperties"
require "org/allbinary/animation/image/AllBinaryFlickerAndroidImageRotationAnimation"

