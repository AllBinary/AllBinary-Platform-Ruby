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

require "java/lang/JavaOverload"
require "org/allbinary/animation/IndexedAnimation"
require "org/allbinary/animation/special/SpecialAnimationInterface"

module ::Org; module Allbinary; module Animation; module Special

class SpecialAnimation < ::Org::Allbinary::Animation::IndexedAnimation
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
    java_overload :nextFrame, 0
    

    def setLastFrame()
    end
    java_overload :setLastFrame, 0
    

    def isComplete()
        return false
    end
    java_overload :isComplete, 0
    

    def open()
    end
    java_overload :open, 0
    

    def close()
    end
    java_overload :close, 0
    

    def process()
    end
    java_overload :process, 0

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_SPECIAL_ANIMATION, SpecialAnimation.new(::Org::Allbinary::Animation::IndexedAnimationBehavior.new(1, 250)))
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

module ::Org; module Allbinary; module Animation; autoload :AnimationBehavior, "org/allbinary/animation/AnimationBehavior" unless const_defined?(:AnimationBehavior, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :IndexedAnimationBehavior, "org/allbinary/animation/IndexedAnimationBehavior" unless const_defined?(:IndexedAnimationBehavior, false); end; end; end

begin
    SpecialAnimation.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

