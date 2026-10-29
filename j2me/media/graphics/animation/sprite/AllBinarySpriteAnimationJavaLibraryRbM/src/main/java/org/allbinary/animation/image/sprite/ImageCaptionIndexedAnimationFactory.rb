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
# require "javax/microedition/media/Player"
require "org/allbinary/animation/AnimationInterfaceFactoryInterface"

class ImageCaptionIndexedAnimationFactory
    include AnimationInterfaceFactoryInterface
    attr_accessor :animationFactoryImageScaleUtil, :animationFactorySpriteScaleUtil, :captionImage, :spriteMovieImage, :frameWidth, :frameHeight, :captionDx, :captionDy, :dx, :dy, :time, :soundInterface, :scaleProperties, :animationBehaviorFactory

    def initialize_fields
        @animationFactoryImageScaleUtil = AnimationFactoryImageScaleUtil.getInstance()
        @animationFactorySpriteScaleUtil = AnimationFactorySpriteScaleUtil.getInstance()
        @captionImage = nil
        @spriteMovieImage = nil
        @frameWidth = nil
        @frameHeight = nil
        @captionDx = nil
        @captionDy = nil
        @dx = nil
        @dy = nil
        @time = nil
        @soundInterface = nil
        @scaleProperties = ScaleProperties.instance
        @animationBehaviorFactory = nil
    end
    

    def initialize(captionImage, spriteMovieImage, soundInterface, frameWidth, frameHeight, captionDx, captionDy, dx, dy, time, animationBehaviorFactory)
        initialize_fields
        if animationBehaviorFactory == AnimationBehaviorFactory.getInstance()
            ForcedLogUtil.log("Using default AnimationBehaviorFactory with IndexedAnimationFactory", self)
        end
        @captionImage = captionImage
        @spriteMovieImage = spriteMovieImage
        @frameWidth = frameWidth
        @frameHeight = frameHeight
        @captionDx = captionDx
        @captionDy = captionDy
        @dx = dx
        @dy = dy
        @time = time
        @soundInterface = soundInterface
        @animationBehaviorFactory = animationBehaviorFactory
    end
    

    # throws Exception
    def getInstance(instanceId)
        scaledImage = @animationFactoryImageScaleUtil.createImage(@captionImage, @captionImage.getWidth(), @captionImage.getHeight(), @scaleProperties.scaleWidth, @scaleProperties.scaleHeight)
        animationInterface = ImageAnimation.new(scaledImage, @animationBehaviorFactory.getOrCreateInstance())
        sprite = @animationFactorySpriteScaleUtil.createImage(@spriteMovieImage, @frameWidth, @frameHeight, @scaleProperties.scaleWidth, @scaleProperties.scaleHeight)
        movieIndexedAnimationInterface = SpriteIndexedAnimation.new(sprite, @spriteMovieImage, BasicColorUtil.getInstance().ZERO_ARRAY, @animationBehaviorFactory.getOrCreateInstance())
        player = @soundInterface.getPlayerP()
        if player == nil
            raise StandardError.new("Sound Was not Initialized")
        end
        return CaptionIndexedAnimation.new(animationInterface, movieIndexedAnimationInterface, player, @captionDx, @captionDy, @dx, @dy, @time, @animationBehaviorFactory.getOrCreateInstance())
    end
    

    def setInitialScale(scaleProperties)
        @scaleProperties = scaleProperties
    end
end

require "org/allbinary/animation/Animation"
require "org/allbinary/animation/AnimationBehaviorFactory"
require "org/allbinary/animation/IndexedAnimation"
require "org/allbinary/animation/caption/CaptionIndexedAnimation"
require "org/allbinary/animation/image/ImageAnimation"
require "org/allbinary/graphics/color/BasicColorUtil"
require "org/allbinary/image/AnimationFactoryImageScaleUtil"
require "org/allbinary/image/sprite/AnimationFactorySpriteScaleUtil"
require "org/allbinary/logic/communication/log/ForcedLogUtil"
require "org/allbinary/media/ScaleProperties"
require "org/allbinary/media/audio/Sound"
require "org/allbinary/animation/image/sprite/SpriteIndexedAnimation"

