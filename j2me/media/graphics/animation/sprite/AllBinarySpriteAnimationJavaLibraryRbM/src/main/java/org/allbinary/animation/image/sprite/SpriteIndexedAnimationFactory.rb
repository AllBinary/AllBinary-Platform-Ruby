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
require "org/allbinary/animation/ProceduralAnimationInterfaceFactoryInterface"
require "org/allbinary/animation/image/BaseImageAnimationFactory"

module ::Org; module Allbinary; module Animation; module Image; module Sprite

class SpriteIndexedAnimationFactory < ::Org::Allbinary::Animation::Image::BaseImageAnimationFactory
    include ::Org::Allbinary::Animation::ProceduralAnimationInterfaceFactoryInterface
    attr_accessor :animationFactorySpriteScaleUtil, :basicColorArray

    def jfields_org_allbinary_animation_image_sprite_SpriteIndexedAnimationFactory
        @animationFactorySpriteScaleUtil = ::Org::Allbinary::Image::Sprite::AnimationFactorySpriteScaleUtil.getInstance()
        @basicColorArray = ::Org::Allbinary::Graphics::Color::BasicColorUtil.getInstance().ZERO_ARRAY
    end
    

    # throws Exception
    def self.createCWHDXY(image, basicColorArray, width, height, dx, dy, animationBehaviorFactory)
        return SpriteIndexedAnimationFactory.new(image, basicColorArray, ::Org::Allbinary::Logic::MathPackage::PrimitiveIntUtil.getArrayInstance(), width, height, dx, dy, animationBehaviorFactory)
    end
    

    # throws Exception
    def self.createCWH(image, basicColorArray, width, height, animationBehaviorFactory)
        spriteIndexedAnimationFactory = SpriteIndexedAnimationFactory.new(image, basicColorArray, ::Org::Allbinary::Logic::MathPackage::PrimitiveIntUtil.getArrayInstance(), width, height, 0, 0, animationBehaviorFactory)
        spriteIndexedAnimationFactory.initHWH()
        return spriteIndexedAnimationFactory
    end
    

    # throws Exception
    def self.createWH(image, width, height, animationBehaviorFactory)
        return SpriteIndexedAnimationFactory.new(image, ::Org::Allbinary::Graphics::Color::BasicColorUtil.getInstance().ZERO_ARRAY, ::Org::Allbinary::Logic::MathPackage::PrimitiveIntUtil.getArrayInstance(), width, height, 0, 0, animationBehaviorFactory)
    end
    

    def initialize(image, basicColorArray, sequenceArray, width, height, dx, dy, animationBehaviorFactory)
        super(image, sequenceArray, width, height, dx, dy, animationBehaviorFactory)
        jfields_org_allbinary_animation_image_sprite_SpriteIndexedAnimationFactory
        @basicColorArray = basicColorArray
    end
    

    def initHWH()
        @animationFactoryInitializationVisitor.dx = -@animationFactoryInitializationVisitor.width >> 2
        @animationFactoryInitializationVisitor.dy = -@animationFactoryInitializationVisitor.height >> 2
        if ::Org::Allbinary::AndroidUtil.isAndroid()
            @animationFactoryInitializationVisitor.dx += 3
        end
    end
    java_overload :initHWH, 0
    

    # throws Exception
    def getInstance(instanceId)
        sprite = @animationFactorySpriteScaleUtil.createImage(self.getImage(), @animationFactoryInitializationVisitor.width, @animationFactoryInitializationVisitor.height, @scaleProperties.scaleWidth, @scaleProperties.scaleHeight)
        if @animationFactoryInitializationVisitor.dx != 0 || @animationFactoryInitializationVisitor.dy != 0
            return AdjustedSpriteIndexedAnimation.new(sprite, self.getImage(), @basicColorArray, @animationFactoryInitializationVisitor.dx, @animationFactoryInitializationVisitor.dy, @animationBehaviorFactory.getOrCreateInstance())
        else
            return SpriteIndexedAnimation.new(sprite, self.getImage(), @basicColorArray, @animationBehaviorFactory.getOrCreateInstance())
        end
    end
    java_overload :getInstance, 1
    

    # throws Exception
    def getInstanceAnimation(animationInterface)
        return self.getInstance(0)
    end
    java_overload :getInstanceAnimation, 1
end

module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end
module ::Javax; module Microedition; module Lcdui; module Game; autoload :Sprite, "javax/microedition/lcdui/game/Sprite" unless const_defined?(:Sprite, false); end; end; end; end
module ::Org; module Allbinary; autoload :AndroidUtil, "org/allbinary/AndroidUtil" unless const_defined?(:AndroidUtil, false); end; end
module ::Org; module Allbinary; module Animation; autoload :Animation, "org/allbinary/animation/Animation" unless const_defined?(:Animation, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :AnimationBehaviorFactory, "org/allbinary/animation/AnimationBehaviorFactory" unless const_defined?(:AnimationBehaviorFactory, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorUtil, "org/allbinary/graphics/color/BasicColorUtil" unless const_defined?(:BasicColorUtil, false); end; end; end; end
module ::Org; module Allbinary; module Image; module Sprite; autoload :AnimationFactorySpriteScaleUtil, "org/allbinary/image/sprite/AnimationFactorySpriteScaleUtil" unless const_defined?(:AnimationFactorySpriteScaleUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :PrimitiveIntUtil, "org/allbinary/logic/math/PrimitiveIntUtil" unless const_defined?(:PrimitiveIntUtil, false); end; end; end; end
autoload :AdjustedSpriteIndexedAnimation, "org/allbinary/animation/image/sprite/AdjustedSpriteIndexedAnimation" unless const_defined?(:AdjustedSpriteIndexedAnimation, false)
autoload :SpriteIndexedAnimation, "org/allbinary/animation/image/sprite/SpriteIndexedAnimation" unless const_defined?(:SpriteIndexedAnimation, false)

end; end; end; end; end

