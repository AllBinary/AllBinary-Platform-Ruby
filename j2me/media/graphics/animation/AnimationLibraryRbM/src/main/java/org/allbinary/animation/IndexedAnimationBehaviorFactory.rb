# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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

require "java/lang/JavaOverload"
require "org/allbinary/animation/AnimationBehaviorFactory"

module ::Org; module Allbinary; module Animation

class IndexedAnimationBehaviorFactory < AnimationBehaviorFactory
    attr_accessor :frameDelayTime, :loopTotal

    def jfields_org_allbinary_animation_IndexedAnimationBehaviorFactory
        @frameDelayTime = nil unless instance_variable_defined?(:@frameDelayTime)
        @loopTotal = nil unless instance_variable_defined?(:@loopTotal)
    end
    

    def initialize(loopTotal, frameDelayTime)
        super()
        jfields_org_allbinary_animation_IndexedAnimationBehaviorFactory
        @loopTotal = loopTotal
        @frameDelayTime = frameDelayTime
    end
    

    def getOrCreateInstance()
        return IndexedAnimationBehavior.new(@loopTotal, @frameDelayTime)
    end
    java_overload :getOrCreateInstance, 0
end

autoload :AnimationBehavior, "org/allbinary/animation/AnimationBehavior" unless const_defined?(:AnimationBehavior, false)
autoload :IndexedAnimationBehavior, "org/allbinary/animation/IndexedAnimationBehavior" unless const_defined?(:IndexedAnimationBehavior, false)

end; end; end

