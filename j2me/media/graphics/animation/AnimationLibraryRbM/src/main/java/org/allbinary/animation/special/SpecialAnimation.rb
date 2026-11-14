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

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_SPECIAL_ANIMATION, SpecialAnimation.new(IndexedAnimationBehavior.new(1, 250)))
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "SpecialAnimation"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_SPECIAL_ANIMATION].include?(name)
        end
        super
    end
end

autoload :AnimationBehavior, "org/allbinary/animation/AnimationBehavior"
autoload :IndexedAnimationBehavior, "org/allbinary/animation/IndexedAnimationBehavior"

begin
    SpecialAnimation.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

