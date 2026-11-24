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
require "org/allbinary/animation/AnimationBehavior"

module ::Org; module Allbinary; module Animation

class IndexedAnimationBehavior < AnimationBehavior
    attr_accessor :frameDelayTime, :loopTotal, :elapsedTime, :loopIndex

    def jfields_org_allbinary_animation_IndexedAnimationBehavior
        @frameDelayTime = nil unless instance_variable_defined?(:@frameDelayTime)
        @loopTotal = nil unless instance_variable_defined?(:@loopTotal)
        @elapsedTime = 0 unless instance_variable_defined?(:@elapsedTime)
        @loopIndex = 0 unless instance_variable_defined?(:@loopIndex)
    end
    

    def initialize(loopTotal, frameDelayTime)
        super()
        jfields_org_allbinary_animation_IndexedAnimationBehavior
        @loopTotal = loopTotal
        @frameDelayTime = frameDelayTime
    end
    

    def reset()
        @loopIndex = 0
    end
    java_overload :reset, 0
end

end; end; end

