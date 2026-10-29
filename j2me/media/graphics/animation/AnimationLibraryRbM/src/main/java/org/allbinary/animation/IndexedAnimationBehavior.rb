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

require "org/allbinary/animation/AnimationBehavior"

class IndexedAnimationBehavior < AnimationBehavior
    attr_accessor :frameDelayTime, :loopTotal, :elapsedTime, :loopIndex

    def initialize_fields
        @frameDelayTime = nil
        @loopTotal = nil
        @elapsedTime = 0
        @loopIndex = 0
    end
    

    def initialize(loopTotal, frameDelayTime)
        super()
        initialize_fields
        @loopTotal = loopTotal
        @frameDelayTime = frameDelayTime
    end
    

    def reset()
        @loopIndex = 0
    end
end

