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

class ColorCompositeSpriteIndexedAnimationFactory < ::Org::Allbinary::Animation::Image::BaseImageAnimationFactory
    include ::Org::Allbinary::Animation::ProceduralAnimationInterfaceFactoryInterface
    attr_accessor :animationFactorySpriteScaleUtil, :basicColorArray

    def jfields_org_allbinary_animation_image_sprite_ColorCompositeSpriteIndexedAnimationFactory
        @animationFactorySpriteScaleUtil = ::Org::Allbinary::Image::Sprite::AnimationFactorySpriteScaleUtil.getInstance()
        @basicColorArray = nil unless instance_variable_defined?(:@basicColorArray)
    end
    

    def initialize(image, basicColorArray, width, height, animationBehaviorFactory)
        super(image, ::Org::Allbinary::Logic::MathPackage::PrimitiveIntUtil.getArrayInstance(), width, height, 0, 0, animationBehaviorFactory)
        jfields_org_allbinary_animation_image_sprite_ColorCompositeSpriteIndexedAnimationFactory
        @basicColorArray = basicColorArray
    end
    

    # throws Exception
    def getInstance(instanceId)
        sprite = @animationFactorySpriteScaleUtil.createImage(self.getImage(), @animationFactoryInitializationVisitor.width, @animationFactoryInitializationVisitor.height, @scaleProperties.scaleWidth, @scaleProperties.scaleHeight)
        return SpriteIndexedAnimation.new(sprite, self.getImage(), @basicColorArray, @animationBehaviorFactory.getOrCreateInstance())
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
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Image; module Sprite; autoload :AnimationFactorySpriteScaleUtil, "org/allbinary/image/sprite/AnimationFactorySpriteScaleUtil" unless const_defined?(:AnimationFactorySpriteScaleUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :PrimitiveIntUtil, "org/allbinary/logic/math/PrimitiveIntUtil" unless const_defined?(:PrimitiveIntUtil, false); end; end; end; end
autoload :SpriteIndexedAnimation, "org/allbinary/animation/image/sprite/SpriteIndexedAnimation" unless const_defined?(:SpriteIndexedAnimation, false)

end; end; end; end; end

