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
# package org.allbinary.animation

# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/animation/AnimationInterfaceFactoryInterface"
require "org/allbinary/animation/NullIndexedAnimation"
require "org/allbinary/animation/ProceduralAnimationInterfaceFactoryInterface"

class NullIndexedAnimationFactory
    include AnimationInterfaceFactoryInterface
    include ProceduralAnimationInterfaceFactoryInterface
    attr_accessor :NULL_ANIMATION
    class NullIndexedAnimationInner < NullIndexedAnimation
        

        def initialize()
            super(IndexedAnimationBehavior.new(1, 250))
        end
        

        def paintXY(graphics, x, y)
        end
    end

    def initialize_fields
        @NULL_ANIMATION = NullIndexedAnimationInner.new()
    end
    

    def initialize()
        initialize_fields
    end
    

    def self.getFactoryInstance()
        return NullIndexedAnimationFactory::NULL_INDEXED_ANIMATION_FACTORY
    end
    

    # throws Exception
    def getInstance(instanceId)
        return @NULL_ANIMATION
    end
    

    # throws Exception
    def getInstanceAnimation(animationInterface)
        return @NULL_ANIMATION
    end
    

    def setInitialScale(scaleProperties)
    end
end

require "org/allbinary/media/ScaleProperties"
require "org/allbinary/animation/Animation"
require "org/allbinary/animation/IndexedAnimation"
require "org/allbinary/animation/IndexedAnimationBehavior"

class NullIndexedAnimationFactory
    NULL_INDEXED_ANIMATION_ARRAY = Array.new(0, nil)
    NULL_INDEXED_ANIMATION_FACTORY = NullIndexedAnimationFactory.new()
end

