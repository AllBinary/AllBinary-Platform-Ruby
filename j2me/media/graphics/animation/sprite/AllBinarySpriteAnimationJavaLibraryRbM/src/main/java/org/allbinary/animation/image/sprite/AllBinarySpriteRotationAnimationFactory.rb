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

class AllBinarySpriteRotationAnimationFactory < ::Org::Allbinary::Animation::Image::BaseImageAnimationFactory
    include ::Org::Allbinary::Animation::ProceduralAnimationInterfaceFactoryInterface
    attr_accessor :animationFactorySpriteScaleUtil

    def jfields_org_allbinary_animation_image_sprite_AllBinarySpriteRotationAnimationFactory
        @animationFactorySpriteScaleUtil = ::Org::Allbinary::Image::Sprite::AnimationFactorySpriteScaleUtil.getInstance()
    end
    

    # throws Exception
    def self.createWHDY(image, dx, dy, animationBehaviorFactory)
        spriteRotationAnimationFactory = AllBinarySpriteRotationAnimationFactory.new(image, ::Org::Allbinary::Logic::MathPackage::PrimitiveIntUtil.getArrayInstance(), (image.getHeight() >> 2), (image.getHeight() >> 2), 0, 0, animationBehaviorFactory)
        spriteRotationAnimationFactory.initWH(dx, dy)
        return spriteRotationAnimationFactory
    end
    

    # throws Exception
    def self.createWH(image, animationBehaviorFactory)
        return AllBinarySpriteRotationAnimationFactory.createWHDY(image, 0, 0, animationBehaviorFactory)
    end
    

    # throws Exception
    def self.createDXY(image, dx, dy, animationBehaviorFactory)
        spriteRotationAnimationFactory = AllBinarySpriteRotationAnimationFactory.new(image, ::Org::Allbinary::Logic::MathPackage::PrimitiveIntUtil.getArrayInstance(), image.getHeight(), image.getHeight(), 0, 0, animationBehaviorFactory)
        spriteRotationAnimationFactory.init(dx, dy)
        return spriteRotationAnimationFactory
    end
    

    # throws Exception
    def self.createDXYQ(image, dx, dy, animationBehaviorFactory)
        spriteRotationAnimationFactory = AllBinarySpriteRotationAnimationFactory.new(image, ::Org::Allbinary::Logic::MathPackage::PrimitiveIntUtil.getArrayInstance(), (image.getHeight() >> 2), (image.getHeight() >> 2), 0, 0, animationBehaviorFactory)
        spriteRotationAnimationFactory.init(dx, dy)
        return spriteRotationAnimationFactory
    end
    

    # throws Exception
    def self.createQ(image, animationBehaviorFactory)
        return AllBinarySpriteRotationAnimationFactory.new(image, ::Org::Allbinary::Logic::MathPackage::PrimitiveIntUtil.getArrayInstance(), (image.getHeight() >> 2), (image.getHeight() >> 2), 0, 0, animationBehaviorFactory)
    end
    

    # throws Exception
    def self.createWHF(image, animationBehaviorFactory)
        return AllBinarySpriteRotationAnimationFactory.new(image, ::Org::Allbinary::Logic::MathPackage::PrimitiveIntUtil.getArrayInstance(), image.getHeight(), image.getHeight(), 0, 0, animationBehaviorFactory)
    end
    

    def initialize(image, sequenceArray, width, height, dx, dy, animationBehaviorFactory)
        super(image, sequenceArray, width, height, dx, dy, animationBehaviorFactory)
        jfields_org_allbinary_animation_image_sprite_AllBinarySpriteRotationAnimationFactory
        if animationBehaviorFactory == ::Org::Allbinary::Animation::AnimationBehaviorFactory.getInstance()
            ::Org::Allbinary::Logic::Communication::Log::ForcedLogUtil.log("Using default AnimationBehaviorFactory with IndexedAnimationFactory", self)
        end
    end
    

    def init(dx, dy)
        @animationFactoryInitializationVisitor.dx = dx
        @animationFactoryInitializationVisitor.dy = dy
    end
    java_overload :init, 2
    

    def initWH(dx, dy)
        self.init(dx, dy)
        @animationFactoryInitializationVisitor.dx += -@animationFactoryInitializationVisitor.width / 5
        @animationFactoryInitializationVisitor.dy += -@animationFactoryInitializationVisitor.height / 5
    end
    java_overload :initWH, 2
    

    # throws Exception
    def getInstance(instanceId)
        sprite = @animationFactorySpriteScaleUtil.createImage(self.getImage(), @animationFactoryInitializationVisitor.width, @animationFactoryInitializationVisitor.height, @scaleProperties.scaleWidth, @scaleProperties.scaleHeight)
        if @animationFactoryInitializationVisitor.dx != 0 || @animationFactoryInitializationVisitor.dy != 0
            return AllBinaryAdjustedSpriteRotationAnimation.new(sprite, self.getImage(), @animationFactoryInitializationVisitor.dx, @animationFactoryInitializationVisitor.dy, @animationBehaviorFactory.getOrCreateInstance())
        else
            return AllBinarySpriteRotationAnimation.new(sprite, self.getImage(), @animationBehaviorFactory.getOrCreateInstance())
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
module ::Org; module Allbinary; module Animation; autoload :Animation, "org/allbinary/animation/Animation" unless const_defined?(:Animation, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :AnimationBehaviorFactory, "org/allbinary/animation/AnimationBehaviorFactory" unless const_defined?(:AnimationBehaviorFactory, false); end; end; end
module ::Org; module Allbinary; module Image; module Sprite; autoload :AnimationFactorySpriteScaleUtil, "org/allbinary/image/sprite/AnimationFactorySpriteScaleUtil" unless const_defined?(:AnimationFactorySpriteScaleUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :ForcedLogUtil, "org/allbinary/logic/communication/log/ForcedLogUtil" unless const_defined?(:ForcedLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :PrimitiveIntUtil, "org/allbinary/logic/math/PrimitiveIntUtil" unless const_defined?(:PrimitiveIntUtil, false); end; end; end; end
autoload :AllBinaryAdjustedSpriteRotationAnimation, "org/allbinary/animation/image/sprite/AllBinaryAdjustedSpriteRotationAnimation" unless const_defined?(:AllBinaryAdjustedSpriteRotationAnimation, false)
autoload :AllBinarySpriteRotationAnimation, "org/allbinary/animation/image/sprite/AllBinarySpriteRotationAnimation" unless const_defined?(:AllBinarySpriteRotationAnimation, false)

end; end; end; end; end

