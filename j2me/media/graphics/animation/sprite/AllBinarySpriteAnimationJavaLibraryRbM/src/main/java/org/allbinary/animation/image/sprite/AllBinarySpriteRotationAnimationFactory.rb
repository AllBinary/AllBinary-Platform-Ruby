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

class AllBinarySpriteRotationAnimationFactory < BaseImageAnimationFactory
    include ProceduralAnimationInterfaceFactoryInterface
    attr_accessor :animationFactorySpriteScaleUtil

    def initialize_fields
        @animationFactorySpriteScaleUtil = AnimationFactorySpriteScaleUtil.getInstance()
    end
    

    # throws Exception
    def self.createWHDY(image, dx, dy, animationBehaviorFactory)
        spriteRotationAnimationFactory = AllBinarySpriteRotationAnimationFactory.new(image, PrimitiveIntUtil.getArrayInstance(), (image.getHeight() >> 2), (image.getHeight() >> 2), 0, 0, animationBehaviorFactory)
        spriteRotationAnimationFactory.initWH(dx, dy)
        return spriteRotationAnimationFactory
    end
    

    # throws Exception
    def self.createWH(image, animationBehaviorFactory)
        return AllBinarySpriteRotationAnimationFactory.createWHDY(image, 0, 0, animationBehaviorFactory)
    end
    

    # throws Exception
    def self.createDXY(image, dx, dy, animationBehaviorFactory)
        spriteRotationAnimationFactory = AllBinarySpriteRotationAnimationFactory.new(image, PrimitiveIntUtil.getArrayInstance(), image.getHeight(), image.getHeight(), 0, 0, animationBehaviorFactory)
        spriteRotationAnimationFactory.init(dx, dy)
        return spriteRotationAnimationFactory
    end
    

    # throws Exception
    def self.createDXYQ(image, dx, dy, animationBehaviorFactory)
        spriteRotationAnimationFactory = AllBinarySpriteRotationAnimationFactory.new(image, PrimitiveIntUtil.getArrayInstance(), (image.getHeight() >> 2), (image.getHeight() >> 2), 0, 0, animationBehaviorFactory)
        spriteRotationAnimationFactory.init(dx, dy)
        return spriteRotationAnimationFactory
    end
    

    # throws Exception
    def self.createQ(image, animationBehaviorFactory)
        return AllBinarySpriteRotationAnimationFactory.new(image, PrimitiveIntUtil.getArrayInstance(), (image.getHeight() >> 2), (image.getHeight() >> 2), 0, 0, animationBehaviorFactory)
    end
    

    # throws Exception
    def self.createWHF(image, animationBehaviorFactory)
        return AllBinarySpriteRotationAnimationFactory.new(image, PrimitiveIntUtil.getArrayInstance(), image.getHeight(), image.getHeight(), 0, 0, animationBehaviorFactory)
    end
    

    def initialize(image, sequenceArray, width, height, dx, dy, animationBehaviorFactory)
        super(image, sequenceArray, width, height, dx, dy, animationBehaviorFactory)
        initialize_fields
        if animationBehaviorFactory == AnimationBehaviorFactory.getInstance()
            ForcedLogUtil.log("Using default AnimationBehaviorFactory with IndexedAnimationFactory", self)
        end
    end
    

    def init(dx, dy)
        @animationFactoryInitializationVisitor.dx = dx
        @animationFactoryInitializationVisitor.dy = dy
    end
    

    def initWH(dx, dy)
        self.init(dx, dy)
        @animationFactoryInitializationVisitor.dx += -@animationFactoryInitializationVisitor.width / 5
        @animationFactoryInitializationVisitor.dy += -@animationFactoryInitializationVisitor.height / 5
    end
    

    # throws Exception
    def getInstance(instanceId)
        sprite = @animationFactorySpriteScaleUtil.createImage(self.getImage(), @animationFactoryInitializationVisitor.width, @animationFactoryInitializationVisitor.height, @scaleProperties.scaleWidth, @scaleProperties.scaleHeight)
        if @animationFactoryInitializationVisitor.dx != 0 || @animationFactoryInitializationVisitor.dy != 0
            return AllBinaryAdjustedSpriteRotationAnimation.new(sprite, self.getImage(), @animationFactoryInitializationVisitor.dx, @animationFactoryInitializationVisitor.dy, @animationBehaviorFactory.getOrCreateInstance())
        else
            return AllBinarySpriteRotationAnimation.new(sprite, self.getImage(), @animationBehaviorFactory.getOrCreateInstance())
        end
    end
    

    # throws Exception
    def getInstanceAnimation(animationInterface)
        return self.getInstance(0)
    end
end

require "org/allbinary/animation/Animation"
require "org/allbinary/animation/AnimationBehaviorFactory"
require "org/allbinary/image/sprite/AnimationFactorySpriteScaleUtil"
require "org/allbinary/logic/communication/log/ForcedLogUtil"
require "org/allbinary/logic/math/PrimitiveIntUtil"
require "org/allbinary/animation/image/sprite/AllBinaryAdjustedSpriteRotationAnimation"
require "org/allbinary/animation/image/sprite/AllBinarySpriteRotationAnimation"

