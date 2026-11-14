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

autoload :Image, "javax/microedition/lcdui/Image"
autoload :Sprite, "javax/microedition/lcdui/game/Sprite"
autoload :Player, "javax/microedition/media/Player"
autoload :Animation, "org/allbinary/animation/Animation"
autoload :AnimationBehaviorFactory, "org/allbinary/animation/AnimationBehaviorFactory"
autoload :IndexedAnimation, "org/allbinary/animation/IndexedAnimation"
autoload :CaptionIndexedAnimation, "org/allbinary/animation/caption/CaptionIndexedAnimation"
autoload :ImageAnimation, "org/allbinary/animation/image/ImageAnimation"
autoload :BasicColorUtil, "org/allbinary/graphics/color/BasicColorUtil"
autoload :AnimationFactoryImageScaleUtil, "org/allbinary/image/AnimationFactoryImageScaleUtil"
autoload :AnimationFactorySpriteScaleUtil, "org/allbinary/image/sprite/AnimationFactorySpriteScaleUtil"
autoload :ForcedLogUtil, "org/allbinary/logic/communication/log/ForcedLogUtil"
autoload :ScaleProperties, "org/allbinary/media/ScaleProperties"
autoload :Sound, "org/allbinary/media/audio/Sound"
autoload :SpriteIndexedAnimation, "org/allbinary/animation/image/sprite/SpriteIndexedAnimation"

