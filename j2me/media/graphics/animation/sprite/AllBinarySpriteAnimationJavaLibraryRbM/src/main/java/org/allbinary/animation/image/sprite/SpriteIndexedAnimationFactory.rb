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

class SpriteIndexedAnimationFactory < BaseImageAnimationFactory
    include ProceduralAnimationInterfaceFactoryInterface
    attr_accessor :animationFactorySpriteScaleUtil, :basicColorArray

    def initialize_fields
        @animationFactorySpriteScaleUtil = AnimationFactorySpriteScaleUtil.getInstance()
        @basicColorArray = BasicColorUtil.getInstance().ZERO_ARRAY
    end
    

    # throws Exception
    def self.createCWHDXY(image, basicColorArray, width, height, dx, dy, animationBehaviorFactory)
        return SpriteIndexedAnimationFactory.new(image, basicColorArray, PrimitiveIntUtil.getArrayInstance(), width, height, dx, dy, animationBehaviorFactory)
    end
    

    # throws Exception
    def self.createCWH(image, basicColorArray, width, height, animationBehaviorFactory)
        spriteIndexedAnimationFactory = SpriteIndexedAnimationFactory.new(image, basicColorArray, PrimitiveIntUtil.getArrayInstance(), width, height, 0, 0, animationBehaviorFactory)
        spriteIndexedAnimationFactory.initHWH()
        return spriteIndexedAnimationFactory
    end
    

    # throws Exception
    def self.createWH(image, width, height, animationBehaviorFactory)
        return SpriteIndexedAnimationFactory.new(image, BasicColorUtil.getInstance().ZERO_ARRAY, PrimitiveIntUtil.getArrayInstance(), width, height, 0, 0, animationBehaviorFactory)
    end
    

    def initialize(image, basicColorArray, sequenceArray, width, height, dx, dy, animationBehaviorFactory)
        super(image, sequenceArray, width, height, dx, dy, animationBehaviorFactory)
        initialize_fields
        @basicColorArray = basicColorArray
    end
    

    def initHWH()
        @animationFactoryInitializationVisitor.dx = -(@animationFactoryInitializationVisitor.width >> 2)
        @animationFactoryInitializationVisitor.dy = -(@animationFactoryInitializationVisitor.height >> 2)
        if AndroidUtil.isAndroid()
            @animationFactoryInitializationVisitor.dx += 3
        end
    end
    

    # throws Exception
    def getInstance(instanceId)
        sprite = @animationFactorySpriteScaleUtil.createImage(self.getImage(), @animationFactoryInitializationVisitor.width, @animationFactoryInitializationVisitor.height, @scaleProperties.scaleWidth, @scaleProperties.scaleHeight)
        if @animationFactoryInitializationVisitor.dx != 0 || @animationFactoryInitializationVisitor.dy != 0
            return AdjustedSpriteIndexedAnimation.new(sprite, self.getImage(), @basicColorArray, @animationFactoryInitializationVisitor.dx, @animationFactoryInitializationVisitor.dy, @animationBehaviorFactory.getOrCreateInstance())
        else
            return SpriteIndexedAnimation.new(sprite, self.getImage(), @basicColorArray, @animationBehaviorFactory.getOrCreateInstance())
        end
    end
    

    # throws Exception
    def getInstanceAnimation(animationInterface)
        return self.getInstance(0)
    end
end

require "org/allbinary/AndroidUtil"
require "org/allbinary/animation/Animation"
require "org/allbinary/animation/AnimationBehaviorFactory"
require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/graphics/color/BasicColorUtil"
require "org/allbinary/image/sprite/AnimationFactorySpriteScaleUtil"
require "org/allbinary/logic/math/PrimitiveIntUtil"
require "org/allbinary/animation/image/sprite/AdjustedSpriteIndexedAnimation"
require "org/allbinary/animation/image/sprite/SpriteIndexedAnimation"

