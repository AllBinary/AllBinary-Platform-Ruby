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
# package org.allbinary.animation.compound

require "org/allbinary/animation/compound/CompoundAnimationInterfaceFactory"

class SimultaneousCompoundRotationAnimationInterfaceFactory < CompoundAnimationInterfaceFactory
    

    def initialize(basicAnimationInterfaceFactoryInterfaceArray, animationBehaviorFactory)
        super(basicAnimationInterfaceFactoryInterfaceArray, animationBehaviorFactory)
        if animationBehaviorFactory == AnimationBehaviorFactory.getInstance()
            ForcedLogUtil.log("Using default AnimationBehaviorFactory with IndexedAnimationFactory", self)
        end
    end
    

    def createArray(size)
        return Array.new(size, nil)
    end
    

    def createAnimation(animationInterfaceArray)
        return SimultaneousCompoundRotationAnimation.new(animationInterfaceArray, @animationBehaviorFactory.getOrCreateInstance())
    end
end

require "org/allbinary/animation/Animation"
require "org/allbinary/animation/AnimationBehaviorFactory"
require "org/allbinary/animation/AnimationInterfaceFactoryInterface"
require "org/allbinary/animation/RotationAnimation"
require "org/allbinary/logic/communication/log/ForcedLogUtil"
require "org/allbinary/animation/compound/SimultaneousCompoundRotationAnimation"

