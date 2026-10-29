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

require "org/allbinary/animation/AnimationBehaviorFactory"

class IndexedAnimationBehaviorFactory < AnimationBehaviorFactory
    attr_accessor :frameDelayTime, :loopTotal

    def initialize_fields
        @frameDelayTime = nil
        @loopTotal = nil
    end
    

    def initialize(loopTotal, frameDelayTime)
        super()
        initialize_fields
        @loopTotal = loopTotal
        @frameDelayTime = frameDelayTime
    end
    

    def getOrCreateInstance()
        return IndexedAnimationBehavior.new(@loopTotal, @frameDelayTime)
    end
end

require "org/allbinary/animation/AnimationBehavior"
require "org/allbinary/animation/IndexedAnimationBehavior"

