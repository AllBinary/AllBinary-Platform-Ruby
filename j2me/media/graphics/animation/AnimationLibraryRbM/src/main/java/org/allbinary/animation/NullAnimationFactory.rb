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
require "org/allbinary/animation/ProceduralAnimationInterfaceFactoryInterface"

class NullAnimationFactory
    include AnimationInterfaceFactoryInterface
    include ProceduralAnimationInterfaceFactoryInterface
    attr_accessor :NULL_ANIMATION, :EMPTY_ARRAY

    def initialize_fields
        @NULL_ANIMATION = Class.new(Animation.is_a?(Class) ? Animation : Object) do
        include(Animation) unless Animation.is_a?(Class)
        

        def paintXY(graphics, x, y)
        end
    end.new()
        @EMPTY_ARRAY = Array.new(0, nil)
    end
    

    def initialize()
        initialize_fields
    end
    

    def self.getFactoryInstance()
        return NullAnimationFactory::NULL_ANIMATION_FACTORY
    end
    

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

class NullAnimationFactory
    NULL_NOT_FOR_USE_ANIMATION_FACTORY = NullAnimationFactory.new()
    NULL_ANIMATION_FACTORY = NullAnimationFactory.new()
end

