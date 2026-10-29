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

require "org/allbinary/game/physics/velocity/VelocityInterfaceCompositeInterface"
require "org/allbinary/physics/movement/Movement"

class BasicConstantVelocityMovement < Movement
    include VelocityInterfaceCompositeInterface
    attr_accessor :velocityProperties, :speedBasicDecimal, :axisMathVectorUtil

    def initialize_fields
        @velocityProperties = nil
        @speedBasicDecimal = BasicDecimal::ZERO_BIGDECIMAL
        @axisMathVectorUtil = AxisMathVectorUtil.getInstance()
    end
    

    def initialize(basicDecimal, velocityProperties)
        super()
        initialize_fields
        self.setSpeedBasicDecimal(basicDecimal)
        @velocityProperties = velocityProperties
    end
    

    def init(speedBasicDecimal, angle, otherAngle)
        @speedBasicDecimal = speedBasicDecimal
        angleFactory = AngleFactory.getInstance()
        @velocityProperties.setVelocityWithBigDecimal(speedBasicDecimal, angleFactory.getAt(angle), angleFactory.getAt(otherAngle))
    end
    

    def moveOutsideRadius(layer, radius, angle, otherAngle)
        scaleFactorValue = @speedBasicDecimal.getScaledFactorValue()
        xVector = ((@axisMathVectorUtil.calculateX(radius, angle) / scaleFactorValue)).to_i
        yVector = ((@axisMathVectorUtil.calculateY(radius, angle) / scaleFactorValue)).to_i
        zVector = ((@axisMathVectorUtil.calculateZ(radius, otherAngle) / scaleFactorValue)).to_i
        layer.moveDXYZ(xVector, yVector, zVector)
    end
    

    # throws Exception
    def process(layer)
        layer.moveDXYZ(@velocityProperties.getVelocityXBasicDecimalP().getScaled(), @velocityProperties.getVelocityYBasicDecimalP().getScaled(), @velocityProperties.getVelocityZBasicDecimalP().getScaled())
    end
    

    def toString()
        return @velocityProperties.to_s
    end
    alias_method :to_s, :toString
    

    def stop()
        @velocityProperties.zero()
    end
    

    def getVelocityProperties()
        return @velocityProperties
    end
    

    def setVelocityProperties(velocityProperties)
        @velocityProperties = velocityProperties
    end
    

    def setSpeedBasicDecimal(speedBasicDecimal)
        @speedBasicDecimal = speedBasicDecimal
    end
    

    def getSpeedBasicDecimal()
        return @speedBasicDecimal
    end
end

require "org/allbinary/game/layer/AllBinaryGameLayer"
require "org/allbinary/game/physics/velocity/BasicVelocityProperties"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/logic/math/BasicDecimal"
require "org/allbinary/logic/math/vector/AxisMathVectorUtil"
require "org/allbinary/math/AngleFactory"

