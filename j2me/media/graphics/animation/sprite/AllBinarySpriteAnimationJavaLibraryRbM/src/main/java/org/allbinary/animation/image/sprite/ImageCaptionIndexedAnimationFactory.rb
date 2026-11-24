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

require "java/lang/JavaOverload"
require "org/allbinary/animation/AnimationInterfaceFactoryInterface"

module ::Org; module Allbinary; module Animation; module Image; module Sprite

class ImageCaptionIndexedAnimationFactory
    include ::Org::Allbinary::Animation::AnimationInterfaceFactoryInterface
    attr_accessor :animationFactoryImageScaleUtil, :animationFactorySpriteScaleUtil, :captionImage, :spriteMovieImage, :frameWidth, :frameHeight, :captionDx, :captionDy, :dx, :dy, :time, :soundInterface, :scaleProperties, :animationBehaviorFactory

    def jfields_org_allbinary_animation_image_sprite_ImageCaptionIndexedAnimationFactory
        @animationFactoryImageScaleUtil = ::Org::Allbinary::Image::AnimationFactoryImageScaleUtil.getInstance()
        @animationFactorySpriteScaleUtil = ::Org::Allbinary::Image::Sprite::AnimationFactorySpriteScaleUtil.getInstance()
        @captionImage = nil unless instance_variable_defined?(:@captionImage)
        @spriteMovieImage = nil unless instance_variable_defined?(:@spriteMovieImage)
        @frameWidth = nil unless instance_variable_defined?(:@frameWidth)
        @frameHeight = nil unless instance_variable_defined?(:@frameHeight)
        @captionDx = nil unless instance_variable_defined?(:@captionDx)
        @captionDy = nil unless instance_variable_defined?(:@captionDy)
        @dx = nil unless instance_variable_defined?(:@dx)
        @dy = nil unless instance_variable_defined?(:@dy)
        @time = nil unless instance_variable_defined?(:@time)
        @soundInterface = nil unless instance_variable_defined?(:@soundInterface)
        @scaleProperties = ::Org::Allbinary::Media::ScaleProperties.instance
        @animationBehaviorFactory = nil unless instance_variable_defined?(:@animationBehaviorFactory)
    end
    

    def initialize(captionImage, spriteMovieImage, soundInterface, frameWidth, frameHeight, captionDx, captionDy, dx, dy, time, animationBehaviorFactory)
        jfields_org_allbinary_animation_image_sprite_ImageCaptionIndexedAnimationFactory
        if animationBehaviorFactory == ::Org::Allbinary::Animation::AnimationBehaviorFactory.getInstance()
            ::Org::Allbinary::Logic::Communication::Log::ForcedLogUtil.log("Using default AnimationBehaviorFactory with IndexedAnimationFactory", self)
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
        animationInterface = ::Org::Allbinary::Animation::Image::ImageAnimation.new(scaledImage, @animationBehaviorFactory.getOrCreateInstance())
        sprite = @animationFactorySpriteScaleUtil.createImage(@spriteMovieImage, @frameWidth, @frameHeight, @scaleProperties.scaleWidth, @scaleProperties.scaleHeight)
        movieIndexedAnimationInterface = SpriteIndexedAnimation.new(sprite, @spriteMovieImage, ::Org::Allbinary::Graphics::Color::BasicColorUtil.getInstance().ZERO_ARRAY, @animationBehaviorFactory.getOrCreateInstance())
        player = @soundInterface.getPlayerP()
        if player == nil
            raise StandardError.new("Sound Was not Initialized")
        end
        return ::Org::Allbinary::Animation::Caption::CaptionIndexedAnimation.new(animationInterface, movieIndexedAnimationInterface, player, @captionDx, @captionDy, @dx, @dy, @time, @animationBehaviorFactory.getOrCreateInstance())
    end
    java_overload :getInstance, 1
    

    def setInitialScale(scaleProperties)
        @scaleProperties = scaleProperties
    end
    java_overload :setInitialScale, 1
end

module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end
module ::Javax; module Microedition; module Lcdui; module Game; autoload :Sprite, "javax/microedition/lcdui/game/Sprite" unless const_defined?(:Sprite, false); end; end; end; end
module ::Javax; module Microedition; module Media; autoload :Player, "javax/microedition/media/Player" unless const_defined?(:Player, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :Animation, "org/allbinary/animation/Animation" unless const_defined?(:Animation, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :AnimationBehaviorFactory, "org/allbinary/animation/AnimationBehaviorFactory" unless const_defined?(:AnimationBehaviorFactory, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :IndexedAnimation, "org/allbinary/animation/IndexedAnimation" unless const_defined?(:IndexedAnimation, false); end; end; end
module ::Org; module Allbinary; module Animation; module Caption; autoload :CaptionIndexedAnimation, "org/allbinary/animation/caption/CaptionIndexedAnimation" unless const_defined?(:CaptionIndexedAnimation, false); end; end; end; end
module ::Org; module Allbinary; module Animation; module Image; autoload :ImageAnimation, "org/allbinary/animation/image/ImageAnimation" unless const_defined?(:ImageAnimation, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorUtil, "org/allbinary/graphics/color/BasicColorUtil" unless const_defined?(:BasicColorUtil, false); end; end; end; end
module ::Org; module Allbinary; module Image; autoload :AnimationFactoryImageScaleUtil, "org/allbinary/image/AnimationFactoryImageScaleUtil" unless const_defined?(:AnimationFactoryImageScaleUtil, false); end; end; end
module ::Org; module Allbinary; module Image; module Sprite; autoload :AnimationFactorySpriteScaleUtil, "org/allbinary/image/sprite/AnimationFactorySpriteScaleUtil" unless const_defined?(:AnimationFactorySpriteScaleUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :ForcedLogUtil, "org/allbinary/logic/communication/log/ForcedLogUtil" unless const_defined?(:ForcedLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Media; autoload :ScaleProperties, "org/allbinary/media/ScaleProperties" unless const_defined?(:ScaleProperties, false); end; end; end
module ::Org; module Allbinary; module Media; module Audio; autoload :Sound, "org/allbinary/media/audio/Sound" unless const_defined?(:Sound, false); end; end; end; end
autoload :SpriteIndexedAnimation, "org/allbinary/animation/image/sprite/SpriteIndexedAnimation" unless const_defined?(:SpriteIndexedAnimation, false)

end; end; end; end; end

