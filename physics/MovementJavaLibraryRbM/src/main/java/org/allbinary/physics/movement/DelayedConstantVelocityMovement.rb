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
# package org.allbinary.physics.movement

require "org/allbinary/physics/movement/BasicConstantVelocityMovement"

class DelayedConstantVelocityMovement < BasicConstantVelocityMovement
    attr_accessor :timeDelayHelper

    def initialize_fields
        @timeDelayHelper = TimeDelayHelper.new(60)
    end
    

    def initialize(basicDecimal, velocityProperties)
        super(basicDecimal, velocityProperties)
        initialize_fields
    end
    

    def init(speedBasicDecimal, angle, otherAngle)
    end
    

    # throws Exception
    def process(layer)
        if @timeDelayHelper.isTime(GameTickTimeDelayHelperFactory.getInstance().startTime)
            super(layer)
        end
    end
end

require "org/allbinary/game/layer/AllBinaryGameLayer"
require "org/allbinary/game/physics/velocity/BasicVelocityProperties"
require "org/allbinary/logic/math/BasicDecimal"
require "org/allbinary/time/GameTickTimeDelayHelperFactory"
require "org/allbinary/time/TimeDelayHelper"

