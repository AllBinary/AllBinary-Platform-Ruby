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

require "org/allbinary/physics/movement/Movement"

class ConstantVelocityNotifyViewChangeMovement < Movement
    attr_accessor :basicVelocityProperties, :speedBasicDecimal, :axisMathVectorUtil

    def initialize_fields
        @basicVelocityProperties = nil
        @speedBasicDecimal = nil
        @axisMathVectorUtil = AxisMathVectorUtil.getInstance()
    end
    

    def initialize()
        super()
        initialize_fields
        @speedBasicDecimal = BasicDecimal::ZERO_BIGDECIMAL
        @basicVelocityProperties = BasicVelocityProperties.new()
    end
    

    def init(speedBasicDecimal, angle, otherAngle)
        @speedBasicDecimal = speedBasicDecimal
        angleFactory = AngleFactory.getInstance()
        @basicVelocityProperties.setVelocityWithBigDecimal(speedBasicDecimal, angleFactory.getAt(angle), angleFactory.getAt(otherAngle))
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
        x = @basicVelocityProperties.getVelocityXBasicDecimalP().getScaled()
        y = @basicVelocityProperties.getVelocityYBasicDecimalP().getScaled()
        z = @basicVelocityProperties.getVelocityZBasicDecimalP().getScaled()
        layer.moveDXYZ(x, y, z)
        if x != 0 || y != 0 || z != 0
            layer.onViewPositionChangeEvent()
        end
    end
    

    def stop()
        @basicVelocityProperties.zero()
    end
end

require "org/allbinary/game/layer/AllBinaryGameLayer"
require "org/allbinary/game/physics/velocity/BasicVelocityProperties"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/logic/math/BasicDecimal"
require "org/allbinary/logic/math/vector/AxisMathVectorUtil"
require "org/allbinary/math/AngleFactory"

