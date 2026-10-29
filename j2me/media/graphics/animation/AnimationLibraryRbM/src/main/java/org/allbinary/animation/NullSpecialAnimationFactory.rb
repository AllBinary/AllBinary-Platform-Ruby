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

require "org/allbinary/animation/AnimationInterfaceFactoryInterface"
require "org/allbinary/animation/ProceduralAnimationInterfaceFactoryInterface"

class NullSpecialAnimationFactory
    include AnimationInterfaceFactoryInterface
    include ProceduralAnimationInterfaceFactoryInterface
    

    def initialize()
    end
    

    def self.getFactoryInstance()
        return NullSpecialAnimationFactory::NULL_SPECIAL_ANIMATION_FACTORY
    end
    

    # throws Exception
    def getInstance(instanceId)
        return SpecialAnimation.getInstance()
    end
    

    # throws Exception
    def getInstanceAnimation(animationInterface)
        return SpecialAnimation.getInstance()
    end
    

    def setInitialScale(scaleProperties)
    end
end

require "org/allbinary/animation/special/SpecialAnimation"
require "org/allbinary/media/ScaleProperties"
require "org/allbinary/animation/Animation"

class NullSpecialAnimationFactory
    NULL_SPECIAL_ANIMATION_FACTORY = NullSpecialAnimationFactory.new()
end

