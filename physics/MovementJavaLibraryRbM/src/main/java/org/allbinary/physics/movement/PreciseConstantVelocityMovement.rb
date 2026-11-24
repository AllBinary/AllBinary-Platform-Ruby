# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.physics.movement

require "java/lang/JavaOverload"
require "org/allbinary/physics/movement/BasicConstantVelocityMovement"

module ::Org; module Allbinary; module Physics; module Movement

class PreciseConstantVelocityMovement < BasicConstantVelocityMovement
    attr_accessor :accumulatedX, :accumulatedY, :accumulatedZ, :factorValue

    def jfields_org_allbinary_physics_movement_PreciseConstantVelocityMovement
        @accumulatedX = 0 unless instance_variable_defined?(:@accumulatedX)
        @accumulatedY = 0 unless instance_variable_defined?(:@accumulatedY)
        @accumulatedZ = 0 unless instance_variable_defined?(:@accumulatedZ)
        @factorValue = ::Org::Allbinary::Logic::MathPackage::ScaleFactorFactory.getInstance().DEFAULT_SCALE_VALUE
    end
    

    def initialize(basicDecimal, velocityProperties)
        super(basicDecimal, velocityProperties)
        jfields_org_allbinary_physics_movement_PreciseConstantVelocityMovement
    end
    

    def init(speedBasicDecimal, angle, otherAngle)
    end
    java_overload :init, 3
    

    # throws Exception
    def process(layer)
        mathUtil = ::Org::Allbinary::Logic::MathPackage::MathUtil.getInstance()
        velocityProperties = self.getVelocityProperties()
        @accumulatedX = (((@accumulatedX + velocityProperties.getVelocityXBasicDecimalP().getUnscaled())).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })
        @accumulatedY = (((@accumulatedY + velocityProperties.getVelocityYBasicDecimalP().getUnscaled())).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })
        @accumulatedZ = (((@accumulatedZ + velocityProperties.getVelocityZBasicDecimalP().getUnscaled())).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })
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
    java_overload :process, 1
end

module ::Org; module Allbinary; module Game; module Layer; autoload :AllBinaryGameLayer, "org/allbinary/game/layer/AllBinaryGameLayer" unless const_defined?(:AllBinaryGameLayer, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Physics; module Velocity; autoload :BasicVelocityProperties, "org/allbinary/game/physics/velocity/BasicVelocityProperties" unless const_defined?(:BasicVelocityProperties, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :BasicDecimal, "org/allbinary/logic/math/BasicDecimal" unless const_defined?(:BasicDecimal, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :MathUtil, "org/allbinary/logic/math/MathUtil" unless const_defined?(:MathUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :ScaleFactorFactory, "org/allbinary/logic/math/ScaleFactorFactory" unless const_defined?(:ScaleFactorFactory, false); end; end; end; end

end; end; end; end

