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
require "org/allbinary/animation/image/BaseImageAnimationFactory"

module ::Org; module Allbinary; module Animation; module Image; module Sprite

class OneRowSpriteIndexedAnimationFactory < ::Org::Allbinary::Animation::Image::BaseImageAnimationFactory
    attr_accessor :animationFactorySpriteScaleUtil

    def jfields_org_allbinary_animation_image_sprite_OneRowSpriteIndexedAnimationFactory
        @animationFactorySpriteScaleUtil = ::Org::Allbinary::Image::Sprite::AnimationFactorySpriteScaleUtil.getInstance()
    end
    

    # throws Exception
    def self.createFactoryDX(image, dx, animationBehaviorFactory)
        oneRowSpriteIndexedAnimationFactory = OneRowSpriteIndexedAnimationFactory.new(image, ::Org::Allbinary::Logic::MathPackage::PrimitiveIntUtil.getArrayInstance(), image.getHeight(), image.getHeight(), 0, 0, animationBehaviorFactory)
        oneRowSpriteIndexedAnimationFactory.initW(dx)
        return oneRowSpriteIndexedAnimationFactory
    end
    

    # throws Exception
    def self.createFactoryDXY(image, dx, dy, animationBehaviorFactory)
        oneRowSpriteIndexedAnimationFactory = OneRowSpriteIndexedAnimationFactory.new(image, ::Org::Allbinary::Logic::MathPackage::PrimitiveIntUtil.getArrayInstance(), image.getHeight(), image.getHeight(), 0, 0, animationBehaviorFactory)
        oneRowSpriteIndexedAnimationFactory.init(dx, dy)
        return oneRowSpriteIndexedAnimationFactory
    end
    

    # throws Exception
    def self.createFactoryWH(image, width, height, animationBehaviorFactory)
        return OneRowSpriteIndexedAnimationFactory.new(image, ::Org::Allbinary::Logic::MathPackage::PrimitiveIntUtil.getArrayInstance(), width, height, 0, 0, animationBehaviorFactory)
    end
    

    # throws Exception
    def self.createFactory(image, animationBehaviorFactory)
        return OneRowSpriteIndexedAnimationFactory.new(image, ::Org::Allbinary::Logic::MathPackage::PrimitiveIntUtil.getArrayInstance(), image.getHeight(), image.getHeight(), 0, 0, animationBehaviorFactory)
    end
    

    def initialize(image, sequenceArray, width, height, dx, dy, animationBehaviorFactory)
        super(image, sequenceArray, width, height, dx, dy, animationBehaviorFactory)
        jfields_org_allbinary_animation_image_sprite_OneRowSpriteIndexedAnimationFactory
    end
    

    def init(dx, dy)
        @animationFactoryInitializationVisitor.dx = dx
        @animationFactoryInitializationVisitor.dy = dy
    end
    java_overload :init, 2
    

    def initW(dx)
        self.init(dx, 0)
        @animationFactoryInitializationVisitor.dx += -@animationFactoryInitializationVisitor.width >> 2
    end
    java_overload :initW, 1
    

    # throws Exception
    def getInstance(instanceId)
        sprite = @animationFactorySpriteScaleUtil.createImage(self.getImage(), @animationFactoryInitializationVisitor.width, @animationFactoryInitializationVisitor.height, @scaleProperties.scaleWidth, @scaleProperties.scaleHeight)
        if @animationFactoryInitializationVisitor.dx != 0 || @animationFactoryInitializationVisitor.dy != 0
            return AdjustedSpriteIndexedAnimation.new(sprite, self.getImage(), ::Org::Allbinary::Graphics::Color::BasicColorUtil.getInstance().ZERO_ARRAY, @animationFactoryInitializationVisitor.dx, @animationFactoryInitializationVisitor.dy, @animationBehaviorFactory.getOrCreateInstance())
        else
            return SpriteIndexedAnimation.new(sprite, self.getImage(), ::Org::Allbinary::Graphics::Color::BasicColorUtil.getInstance().ZERO_ARRAY, @animationBehaviorFactory.getOrCreateInstance())
        end
    end
    java_overload :getInstance, 1
end

module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end
module ::Javax; module Microedition; module Lcdui; module Game; autoload :Sprite, "javax/microedition/lcdui/game/Sprite" unless const_defined?(:Sprite, false); end; end; end; end
module ::Org; module Allbinary; module Animation; autoload :Animation, "org/allbinary/animation/Animation" unless const_defined?(:Animation, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :AnimationBehaviorFactory, "org/allbinary/animation/AnimationBehaviorFactory" unless const_defined?(:AnimationBehaviorFactory, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorUtil, "org/allbinary/graphics/color/BasicColorUtil" unless const_defined?(:BasicColorUtil, false); end; end; end; end
module ::Org; module Allbinary; module Image; module Sprite; autoload :AnimationFactorySpriteScaleUtil, "org/allbinary/image/sprite/AnimationFactorySpriteScaleUtil" unless const_defined?(:AnimationFactorySpriteScaleUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :PrimitiveIntUtil, "org/allbinary/logic/math/PrimitiveIntUtil" unless const_defined?(:PrimitiveIntUtil, false); end; end; end; end
autoload :AdjustedSpriteIndexedAnimation, "org/allbinary/animation/image/sprite/AdjustedSpriteIndexedAnimation" unless const_defined?(:AdjustedSpriteIndexedAnimation, false)
autoload :SpriteIndexedAnimation, "org/allbinary/animation/image/sprite/SpriteIndexedAnimation" unless const_defined?(:SpriteIndexedAnimation, false)

end; end; end; end; end

