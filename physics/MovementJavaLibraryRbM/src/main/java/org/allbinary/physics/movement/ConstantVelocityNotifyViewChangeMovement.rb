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

require "java/lang/JavaOverload"
require "org/allbinary/physics/movement/Movement"

module ::Org; module Allbinary; module Physics; module Movement

class ConstantVelocityNotifyViewChangeMovement < Movement
    attr_accessor :basicVelocityProperties, :speedBasicDecimal, :axisMathVectorUtil

    def jfields_org_allbinary_physics_movement_ConstantVelocityNotifyViewChangeMovement
        @basicVelocityProperties = nil unless instance_variable_defined?(:@basicVelocityProperties)
        @speedBasicDecimal = nil unless instance_variable_defined?(:@speedBasicDecimal)
        @axisMathVectorUtil = ::Org::Allbinary::Logic::MathPackage::Vector::AxisMathVectorUtil.getInstance()
    end
    

    def initialize()
        super()
        jfields_org_allbinary_physics_movement_ConstantVelocityNotifyViewChangeMovement
        @speedBasicDecimal = ::Org::Allbinary::Logic::MathPackage::BasicDecimal::ZERO_BIGDECIMAL
        @basicVelocityProperties = ::Org::Allbinary::Game::Physics::Velocity::BasicVelocityProperties.new()
    end
    

    def init(speedBasicDecimal, angle, otherAngle)
        @speedBasicDecimal = speedBasicDecimal
        angleFactory = ::Org::Allbinary::MathPackage::AngleFactory.getInstance()
        @basicVelocityProperties.setVelocityWithBigDecimal(speedBasicDecimal, angleFactory.getAt(angle), angleFactory.getAt(otherAngle))
    end
    java_overload :init, 3
    

    def moveOutsideRadius(layer, radius, angle, otherAngle)
        scaleFactorValue = @speedBasicDecimal.getScaledFactorValue()
        xVector = (((@axisMathVectorUtil.calculateX(radius, angle) / scaleFactorValue)).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })
        yVector = (((@axisMathVectorUtil.calculateY(radius, angle) / scaleFactorValue)).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })
        zVector = (((@axisMathVectorUtil.calculateZ(radius, otherAngle) / scaleFactorValue)).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })
        layer.moveDXYZ(xVector, yVector, zVector)
    end
    java_overload :moveOutsideRadius, 4
    

    # throws Exception
    def process(layer)
        x = @basicVelocityProperties.getVelocityXBasicDecimalP().getScaled()
        y = @basicVelocityProperties.getVelocityYBasicDecimalP().getScaled()
        z = @basicVelocityProperties.getVelocityZBasicDecimalP().getScaled()
        layer.moveDXYZ(x, y, z)
        if x != 0 || y != 0 || z != 0
            layer.onViewPositionChangeEvent()
        end
    end
    java_overload :process, 1
    

    def stop()
        @basicVelocityProperties.zero()
    end
    java_overload :stop, 0
end

module ::Org; module Allbinary; module Game; module Layer; autoload :AllBinaryGameLayer, "org/allbinary/game/layer/AllBinaryGameLayer" unless const_defined?(:AllBinaryGameLayer, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Physics; module Velocity; autoload :BasicVelocityProperties, "org/allbinary/game/physics/velocity/BasicVelocityProperties" unless const_defined?(:BasicVelocityProperties, false); end; end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :BasicDecimal, "org/allbinary/logic/math/BasicDecimal" unless const_defined?(:BasicDecimal, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; module Vector; autoload :AxisMathVectorUtil, "org/allbinary/logic/math/vector/AxisMathVectorUtil" unless const_defined?(:AxisMathVectorUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :AngleFactory, "org/allbinary/math/AngleFactory" unless const_defined?(:AngleFactory, false); end; end; end

end; end; end; end

