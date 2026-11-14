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

class SimultaneousCompoundIndexedAnimationInterfaceFactory < CompoundAnimationInterfaceFactory
    

    def initialize(basicAnimationInterfaceFactoryInterfaceArray, animationBehaviorFactory)
        super(basicAnimationInterfaceFactoryInterfaceArray, animationBehaviorFactory)
    end
    

    def createArray(size)
        return Array.new(size, nil)
    end
    

    def createAnimation(animationArray)
        return SimultaneousCompoundIndexedAnimation.new(animationArray, @animationBehaviorFactory.getOrCreateInstance())
    end
end

autoload :Animation, "org/allbinary/animation/Animation"
autoload :AnimationBehaviorFactory, "org/allbinary/animation/AnimationBehaviorFactory"
autoload :AnimationInterfaceFactoryInterface, "org/allbinary/animation/AnimationInterfaceFactoryInterface"
autoload :ForcedLogUtil, "org/allbinary/logic/communication/log/ForcedLogUtil"
autoload :SimultaneousCompoundIndexedAnimation, "org/allbinary/animation/compound/SimultaneousCompoundIndexedAnimation"

