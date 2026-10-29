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
require "org/allbinary/animation/image/BaseImageAnimationFactory"

class AllBinaryScreenRelationalImageAnimationInterfaceFactory < BaseImageAnimationFactory
    attr_accessor :lastImage

    def initialize_fields
        @lastImage = NullImage::NULL_IMAGE
    end
    

    def initialize(image, animationBehaviorFactory)
        super(image, PrimitiveIntUtil.getArrayInstance(), 0, 0, 0, 0, animationBehaviorFactory)
        initialize_fields
        if @lastImage != NullImage::NULL_IMAGE
            androidImageInterface = @lastImage
            androidImageInterface.getBitmap().recycle()
        end
        scale = ScreenRelationalUtil.getInstance().getScaleImage(image)
        @lastImage = ImageScaleUtil.getInstance().createImage(GameFeatureImageCacheFactory.getInstance(), self.getImage(), scale, scale, false)
    end
    

    # throws Exception
    def getInstance(instanceId)
        return ImageAnimation.new(@lastImage, @animationBehaviorFactory.getOrCreateInstance())
    end
end

require "org/allbinary/image/GameFeatureImageCacheFactory"
require "org/allbinary/animation/Animation"
require "org/allbinary/animation/AnimationBehaviorFactory"
require "org/allbinary/graphics/displayable/ScreenRelationalUtil"
require "org/allbinary/logic/math/PrimitiveIntUtil"
require "org/allbinary/media/image/ImageScaleUtil"
require "org/microemu/android/device/AndroidImageInterface"
require "org/allbinary/animation/image/ImageAnimation"

