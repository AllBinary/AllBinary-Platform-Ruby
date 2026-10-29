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
require "org/allbinary/animation/NullRotationAnimation"
require "org/allbinary/animation/ProceduralAnimationInterfaceFactoryInterface"

class NullRotationAnimationFactory
    include AnimationInterfaceFactoryInterface
    include ProceduralAnimationInterfaceFactoryInterface
    attr_accessor :NULL_ROTATION_ANIMATION_ARRAY, :NULL_ANIMATION
    class NullRotationAnimation2 < NullRotationAnimation
        

        def initialize()
            super(AngleInfo.getInstance(AngleFactory.getInstance().QUARTER_TOTAL_ANGLE), CircularIndexUtil.createInstance(4), IndexedAnimationBehavior.new(1, 250))
        end
        

        def paintXY(graphics, x, y)
        end
    end

    def initialize_fields
        @NULL_ROTATION_ANIMATION_ARRAY = Array.new(0, nil)
        @NULL_ANIMATION = NullRotationAnimation2.new()
    end
    

    def initialize()
        initialize_fields
    end
    

    def self.getFactoryInstance()
        return NullRotationAnimationFactory::NULL_ROTATION_ANIMATION_FACTORY
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

require "org/allbinary/math/AngleFactory"
require "org/allbinary/math/AngleInfo"
require "org/allbinary/media/ScaleProperties"
require "org/allbinary/util/CircularIndexUtil"
require "org/allbinary/animation/Animation"
require "org/allbinary/animation/IndexedAnimationBehavior"
require "org/allbinary/animation/RotationAnimation"

class NullRotationAnimationFactory
    NULL_ROTATION_ANIMATION_FACTORY = NullRotationAnimationFactory.new()
end

