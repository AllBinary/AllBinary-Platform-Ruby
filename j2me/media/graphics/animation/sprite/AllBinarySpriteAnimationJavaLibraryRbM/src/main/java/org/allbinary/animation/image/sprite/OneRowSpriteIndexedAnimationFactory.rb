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
require "org/allbinary/animation/image/BaseImageAnimationFactory"

class OneRowSpriteIndexedAnimationFactory < BaseImageAnimationFactory
    attr_accessor :animationFactorySpriteScaleUtil

    def initialize_fields
        @animationFactorySpriteScaleUtil = AnimationFactorySpriteScaleUtil.getInstance()
    end
    

    # throws Exception
    def self.createFactoryDX(image, dx, animationBehaviorFactory)
        oneRowSpriteIndexedAnimationFactory = OneRowSpriteIndexedAnimationFactory.new(image, PrimitiveIntUtil.getArrayInstance(), image.getHeight(), image.getHeight(), 0, 0, animationBehaviorFactory)
        oneRowSpriteIndexedAnimationFactory.initW(dx)
        return oneRowSpriteIndexedAnimationFactory
    end
    

    # throws Exception
    def self.createFactoryDXY(image, dx, dy, animationBehaviorFactory)
        oneRowSpriteIndexedAnimationFactory = OneRowSpriteIndexedAnimationFactory.new(image, PrimitiveIntUtil.getArrayInstance(), image.getHeight(), image.getHeight(), 0, 0, animationBehaviorFactory)
        oneRowSpriteIndexedAnimationFactory.init(dx, dy)
        return oneRowSpriteIndexedAnimationFactory
    end
    

    # throws Exception
    def self.createFactoryWH(image, width, height, animationBehaviorFactory)
        return OneRowSpriteIndexedAnimationFactory.new(image, PrimitiveIntUtil.getArrayInstance(), width, height, 0, 0, animationBehaviorFactory)
    end
    

    # throws Exception
    def self.createFactory(image, animationBehaviorFactory)
        return OneRowSpriteIndexedAnimationFactory.new(image, PrimitiveIntUtil.getArrayInstance(), image.getHeight(), image.getHeight(), 0, 0, animationBehaviorFactory)
    end
    

    def initialize(image, sequenceArray, width, height, dx, dy, animationBehaviorFactory)
        super(image, sequenceArray, width, height, dx, dy, animationBehaviorFactory)
        initialize_fields
    end
    

    def init(dx, dy)
        @animationFactoryInitializationVisitor.dx = dx
        @animationFactoryInitializationVisitor.dy = dy
    end
    

    def initW(dx)
        self.init(dx, 0)
        @animationFactoryInitializationVisitor.dx += -(@animationFactoryInitializationVisitor.width >> 2)
    end
    

    # throws Exception
    def getInstance(instanceId)
        sprite = @animationFactorySpriteScaleUtil.createImage(self.getImage(), @animationFactoryInitializationVisitor.width, @animationFactoryInitializationVisitor.height, @scaleProperties.scaleWidth, @scaleProperties.scaleHeight)
        if @animationFactoryInitializationVisitor.dx != 0 || @animationFactoryInitializationVisitor.dy != 0
            return AdjustedSpriteIndexedAnimation.new(sprite, self.getImage(), BasicColorUtil.getInstance().ZERO_ARRAY, @animationFactoryInitializationVisitor.dx, @animationFactoryInitializationVisitor.dy, @animationBehaviorFactory.getOrCreateInstance())
        else
            return SpriteIndexedAnimation.new(sprite, self.getImage(), BasicColorUtil.getInstance().ZERO_ARRAY, @animationBehaviorFactory.getOrCreateInstance())
        end
    end
end

require "org/allbinary/animation/Animation"
require "org/allbinary/animation/AnimationBehaviorFactory"
require "org/allbinary/graphics/color/BasicColorUtil"
require "org/allbinary/image/sprite/AnimationFactorySpriteScaleUtil"
require "org/allbinary/logic/math/PrimitiveIntUtil"
require "org/allbinary/animation/image/sprite/AdjustedSpriteIndexedAnimation"
require "org/allbinary/animation/image/sprite/SpriteIndexedAnimation"

