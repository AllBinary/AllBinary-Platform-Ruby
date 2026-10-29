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

require "org/allbinary/animation/Animation"
require "org/allbinary/animation/AnimationBehaviorFactory"
require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/image/sprite/AnimationFactorySpriteScaleUtil"
require "org/allbinary/logic/math/PrimitiveIntUtil"
require "org/allbinary/animation/image/sprite/SpriteIndexedAnimation"

