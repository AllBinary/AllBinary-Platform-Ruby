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
require "org/allbinary/game/physics/velocity/VelocityInterfaceCompositeInterface"
require "org/allbinary/physics/movement/Movement"

module ::Org; module Allbinary; module Physics; module Movement

class NoZBasicConstantVelocityMovement < Movement
    include ::Org::Allbinary::Game::Physics::Velocity::VelocityInterfaceCompositeInterface
    attr_accessor :velocityProperties, :speedBasicDecimal, :axisMathVectorUtil

    def jfields_org_allbinary_physics_movement_NoZBasicConstantVelocityMovement
        @velocityProperties = nil unless instance_variable_defined?(:@velocityProperties)
        @speedBasicDecimal = ::Org::Allbinary::Logic::MathPackage::BasicDecimal::ZERO_BIGDECIMAL
        @axisMathVectorUtil = ::Org::Allbinary::Logic::MathPackage::Vector::AxisMathVectorUtil.getInstance()
    end
    

    def initialize(basicDecimal, velocityProperties)
        super()
        jfields_org_allbinary_physics_movement_NoZBasicConstantVelocityMovement
        self.setSpeedBasicDecimal(basicDecimal)
        @velocityProperties = velocityProperties
    end
    

    def init(speedBasicDecimal, angle, otherAngle)
        @speedBasicDecimal = speedBasicDecimal
        angleFactory = ::Org::Allbinary::MathPackage::AngleFactory.getInstance()
        @velocityProperties.setVelocityWithBigDecimal(speedBasicDecimal, angleFactory.getAt(angle), angleFactory.getAt(otherAngle))
    end
    java_overload :init, 3
    

    def moveOutsideRadius(layer, radius, angle, otherAngle)
        scaleFactorValue = @speedBasicDecimal.getScaledFactorValue()
        xVector = (((@axisMathVectorUtil.calculateX(radius, angle) / scaleFactorValue)).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })
        yVector = (((@axisMathVectorUtil.calculateY(radius, angle) / scaleFactorValue)).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })
        layer.moveDXYZ(xVector, yVector, 0)
    end
    java_overload :moveOutsideRadius, 4
    

    # throws Exception
    def process(layer)
        layer.moveDXYZ(@velocityProperties.getVelocityXBasicDecimalP().getScaled(), @velocityProperties.getVelocityYBasicDecimalP().getScaled(), 0)
    end
    java_overload :process, 1
    

    def toString()
        return @velocityProperties.to_s
    end
    java_overload :toString, 0
    alias_method :to_s, :toString
    

    def stop()
        @velocityProperties.zero()
    end
    java_overload :stop, 0
    

    def getVelocityProperties()
        return @velocityProperties
    end
    java_overload :getVelocityProperties, 0
    

    def setVelocityProperties(velocityProperties)
        @velocityProperties = velocityProperties
    end
    java_overload :setVelocityProperties, 1
    

    def setSpeedBasicDecimal(speedBasicDecimal)
        @speedBasicDecimal = speedBasicDecimal
    end
    java_overload :setSpeedBasicDecimal, 1
    

    def getSpeedBasicDecimal()
        return @speedBasicDecimal
    end
    java_overload :getSpeedBasicDecimal, 0
end

module ::Org; module Allbinary; module Game; module Layer; autoload :AllBinaryGameLayer, "org/allbinary/game/layer/AllBinaryGameLayer" unless const_defined?(:AllBinaryGameLayer, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Physics; module Velocity; autoload :BasicVelocityProperties, "org/allbinary/game/physics/velocity/BasicVelocityProperties" unless const_defined?(:BasicVelocityProperties, false); end; end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :BasicDecimal, "org/allbinary/logic/math/BasicDecimal" unless const_defined?(:BasicDecimal, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; module Vector; autoload :AxisMathVectorUtil, "org/allbinary/logic/math/vector/AxisMathVectorUtil" unless const_defined?(:AxisMathVectorUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :AngleFactory, "org/allbinary/math/AngleFactory" unless const_defined?(:AngleFactory, false); end; end; end

end; end; end; end

