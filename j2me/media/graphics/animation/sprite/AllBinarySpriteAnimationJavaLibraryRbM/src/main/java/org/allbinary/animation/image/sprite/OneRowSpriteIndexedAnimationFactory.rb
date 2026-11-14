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

autoload :Image, "javax/microedition/lcdui/Image"
autoload :Sprite, "javax/microedition/lcdui/game/Sprite"
autoload :Animation, "org/allbinary/animation/Animation"
autoload :AnimationBehaviorFactory, "org/allbinary/animation/AnimationBehaviorFactory"
autoload :BasicColorUtil, "org/allbinary/graphics/color/BasicColorUtil"
autoload :AnimationFactorySpriteScaleUtil, "org/allbinary/image/sprite/AnimationFactorySpriteScaleUtil"
autoload :PrimitiveIntUtil, "org/allbinary/logic/math/PrimitiveIntUtil"
autoload :AdjustedSpriteIndexedAnimation, "org/allbinary/animation/image/sprite/AdjustedSpriteIndexedAnimation"
autoload :SpriteIndexedAnimation, "org/allbinary/animation/image/sprite/SpriteIndexedAnimation"

