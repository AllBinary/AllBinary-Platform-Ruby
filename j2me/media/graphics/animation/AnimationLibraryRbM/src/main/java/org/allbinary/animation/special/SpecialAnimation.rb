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
# package org.allbinary.animation.special

require "org/allbinary/animation/IndexedAnimation"
require "org/allbinary/animation/special/SpecialAnimationInterface"

class SpecialAnimation < IndexedAnimation
    include SpecialAnimationInterface
    

    def self.getInstance()
        return SpecialAnimation::NULL_SPECIAL_ANIMATION
    end
    

    def initialize(animationBehavior)
        super(animationBehavior)
    end
    

    def nextFrame()
        indexedAnimationBehavior = (@animationBehaviorP)
        indexedAnimationBehavior.loopIndex += 1
    end
    

    def setLastFrame()
    end
    

    def isComplete()
        return false
    end
    

    def open()
    end
    

    def close()
    end
    

    def process()
    end
end

require "org/allbinary/animation/AnimationBehavior"
require "org/allbinary/animation/IndexedAnimationBehavior"

class SpecialAnimation
    NULL_SPECIAL_ANIMATION = SpecialAnimation.new(IndexedAnimationBehavior.new(1, 250))
end

