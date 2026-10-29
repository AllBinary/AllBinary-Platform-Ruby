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

require "org/allbinary/animation/VectorAnimation"

class TimedVectorAnimation < VectorAnimation
    attr_accessor :timeElapsedHelper

    def initialize_fields
        @timeElapsedHelper = TimeDelayHelper.new(200)
    end
    

    def initialize(currentPoints, basicColor, animationBehavior)
        super(currentPoints, basicColor, animationBehavior)
        initialize_fields
    end
    

    def nextFrame()
        if @timeElapsedHelper.isTime(GameTickTimeDelayHelperFactory.getInstance().startTime)
            super()
        end
    end
end

require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/time/GameTickTimeDelayHelperFactory"
require "org/allbinary/time/TimeDelayHelper"
require "org/allbinary/animation/AnimationBehavior"

