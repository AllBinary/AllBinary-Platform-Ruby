# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.physics.movement

require "org/allbinary/physics/movement/BasicConstantVelocityMovement"

class PreciseConstantVelocityMovement < BasicConstantVelocityMovement
    attr_accessor :accumulatedX, :accumulatedY, :accumulatedZ, :factorValue

    def initialize_fields
        @accumulatedX = 0
        @accumulatedY = 0
        @accumulatedZ = 0
        @factorValue = ScaleFactorFactory.getInstance().DEFAULT_SCALE_VALUE
    end
    

    def initialize(basicDecimal, velocityProperties)
        super(basicDecimal, velocityProperties)
        initialize_fields
    end
    

    def init(speedBasicDecimal, angle, otherAngle)
    end
    

    # throws Exception
    def process(layer)
        mathUtil = MathUtil.getInstance()
        velocityProperties = self.getVelocityProperties()
        @accumulatedX = ((@accumulatedX + velocityProperties.getVelocityXBasicDecimalP().getUnscaled())).to_i
        @accumulatedY = ((@accumulatedY + velocityProperties.getVelocityYBasicDecimalP().getUnscaled())).to_i
        @accumulatedZ = ((@accumulatedZ + velocityProperties.getVelocityZBasicDecimalP().getUnscaled())).to_i
        layer.moveDXYZ(@accumulatedX / @factorValue, @accumulatedY / @factorValue, @accumulatedZ / @factorValue)
        if mathUtil.abs(@accumulatedX) > @factorValue
            @accumulatedX = 0
        end
        if mathUtil.abs(@accumulatedY) > @factorValue
            @accumulatedY = 0
        end
        if mathUtil.abs(@accumulatedZ) > @factorValue
            @accumulatedZ = 0
        end
    end
end

require "org/allbinary/game/layer/AllBinaryGameLayer"
require "org/allbinary/game/physics/velocity/BasicVelocityProperties"
require "org/allbinary/logic/math/BasicDecimal"
require "org/allbinary/logic/math/MathUtil"
require "org/allbinary/logic/math/ScaleFactorFactory"

