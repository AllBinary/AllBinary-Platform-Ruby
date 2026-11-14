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

require "org/allbinary/animation/ProceduralAnimationInterfaceFactoryInterface"
require "org/allbinary/animation/image/BaseImageAnimationFactory"

class ColorCompositeSpriteIndexedAnimationFactory < BaseImageAnimationFactory
    include ProceduralAnimationInterfaceFactoryInterface
    attr_accessor :animationFactorySpriteScaleUtil, :basicColorArray

    def initialize_fields
        @animationFactorySpriteScaleUtil = AnimationFactorySpriteScaleUtil.getInstance()
        @basicColorArray = nil
    end
    

    def initialize(image, basicColorArray, width, height, animationBehaviorFactory)
        super(image, PrimitiveIntUtil.getArrayInstance(), width, height, 0, 0, animationBehaviorFactory)
        initialize_fields
        @basicColorArray = basicColorArray
    end
    

    # throws Exception
    def getInstance(instanceId)
        sprite = @animationFactorySpriteScaleUtil.createImage(self.getImage(), @animationFactoryInitializationVisitor.width, @animationFactoryInitializationVisitor.height, @scaleProperties.scaleWidth, @scaleProperties.scaleHeight)
        return SpriteIndexedAnimation.new(sprite, self.getImage(), @basicColorArray, @animationBehaviorFactory.getOrCreateInstance())
    end
    

    # throws Exception
    def getInstanceAnimation(animationInterface)
        return self.getInstance(0)
    end
end

autoload :Image, "javax/microedition/lcdui/Image"
autoload :Sprite, "javax/microedition/lcdui/game/Sprite"
autoload :Animation, "org/allbinary/animation/Animation"
autoload :AnimationBehaviorFactory, "org/allbinary/animation/AnimationBehaviorFactory"
autoload :BasicColor, "org/allbinary/graphics/color/BasicColor"
autoload :AnimationFactorySpriteScaleUtil, "org/allbinary/image/sprite/AnimationFactorySpriteScaleUtil"
autoload :PrimitiveIntUtil, "org/allbinary/logic/math/PrimitiveIntUtil"
autoload :SpriteIndexedAnimation, "org/allbinary/animation/image/sprite/SpriteIndexedAnimation"

