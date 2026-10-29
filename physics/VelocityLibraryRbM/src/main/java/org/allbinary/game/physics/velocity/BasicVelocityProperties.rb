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
# package org.allbinary.game.physics.velocity

require "org/allbinary/game/physics/velocity/BasicVelocityInterface"

class BasicVelocityProperties
    include BasicVelocityInterface
    attr_accessor :logUtil, :velocityXBasicDecimal, :velocityYBasicDecimal, :velocityZBasicDecimal, :axisMathVectorUtil, :directionUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @velocityXBasicDecimal = nil
        @velocityYBasicDecimal = nil
        @velocityZBasicDecimal = nil
        @axisMathVectorUtil = AxisMathVectorUtil.getInstance()
        @directionUtil = DirectionUtil.getInstance()
    end
    

    def initialize()
        initialize_fields
        @velocityXBasicDecimal = BasicDecimal.new(0)
        @velocityYBasicDecimal = BasicDecimal.new(0)
        @velocityZBasicDecimal = BasicDecimal.new(0)
    end
    

    def zero()
        @velocityXBasicDecimal.setint(0)
        @velocityYBasicDecimal.setint(0)
        @velocityZBasicDecimal.setint(0)
    end
    

    def getVelocityXBasicDecimalP()
        return @velocityXBasicDecimal
    end
    

    def getVelocityYBasicDecimalP()
        return @velocityYBasicDecimal
    end
    

    def getVelocityZBasicDecimalP()
        return @velocityZBasicDecimal
    end
    

    def setVelocityWithBigDecimalAndDirection(magnitudeBasicDecimal, direction, otherDirection)
        angle = @directionUtil.getAngle(direction)
        otherAngle = @directionUtil.getAngle(otherDirection)
        self.setVelocityWithBigDecimal(magnitudeBasicDecimal, angle, otherAngle)
    end
    

    def setVelocityWithDirection(magnitude, direction, otherDirection)
        angle = @directionUtil.getAngle(direction)
        otherAngle = @directionUtil.getAngle(otherDirection)
        self.setVelocity(magnitude, angle, otherAngle)
    end
    

    def addVelocityWithBigDecimalAndDirection(magnitudeBasicDecimal, direction, otherDirection)
        angle = @directionUtil.getAngle(direction)
        otherAngle = @directionUtil.getAngle(otherDirection)
        self.addVelocityWithBigDecimal(magnitudeBasicDecimal, angle, otherAngle)
    end
    

    def addVelocityWithDirection(magnitude, direction, otherDirection)
        angle = @directionUtil.getAngle(direction)
        otherAngle = @directionUtil.getAngle(otherDirection)
        self.addVelocity(magnitude, angle, otherAngle)
    end
    

    def setVelocityWithBigDecimal(magnitudeBasicDecimal, angle, otherAngle)
        magnitude = magnitudeBasicDecimal.getUnscaled()
        self.setVelocity(magnitude, angle, otherAngle)
    end
    

    def addVelocityWithBigDecimal(magnitudeBasicDecimal, angle, otherAngle)
        magnitude = magnitudeBasicDecimal.getUnscaled()
        self.addVelocity(magnitude, angle, otherAngle)
    end
    

    def setVelocity(magnitude, angle, otherAngle)
        self.setVelocityi(magnitude, (angle.getValue()).to_i, (otherAngle.getValue()).to_i)
    end
    

    def addVelocity(magnitude, angle, otherAngle)
        self.addVelocityi(magnitude, (angle.getValue()).to_i, (otherAngle.getValue()).to_i)
    end
    

    def setVelocityi(magnitude, angle, otherAngle)
        xVector = (@axisMathVectorUtil.calculateX(magnitude, angle) / @velocityXBasicDecimal.getScaledFactorValue())
        yVector = (@axisMathVectorUtil.calculateY(magnitude, angle) / @velocityYBasicDecimal.getScaledFactorValue())
        zVector = (@axisMathVectorUtil.calculateZ(magnitude, otherAngle) / @velocityZBasicDecimal.getScaledFactorValue())
        @velocityXBasicDecimal.setlong(xVector)
        @velocityYBasicDecimal.setlong(yVector)
        @velocityZBasicDecimal.setlong(zVector)
    end
    

    def addVelocityi(magnitude, angle, otherAngle)
        xVector = (@axisMathVectorUtil.calculateX(magnitude, angle) / @velocityXBasicDecimal.getScaledFactorValue())
        yVector = (@axisMathVectorUtil.calculateY(magnitude, angle) / @velocityYBasicDecimal.getScaledFactorValue())
        zVector = (@axisMathVectorUtil.calculateZ(magnitude, otherAngle) / @velocityZBasicDecimal.getScaledFactorValue())
        @velocityXBasicDecimal.addlong(xVector)
        @velocityYBasicDecimal.addlong(yVector)
        @velocityZBasicDecimal.addlong(zVector)
    end
    

    def toString()
        commonSeps = CommonSeps.getInstance()
        positionStrings = PositionStrings.getInstance()
        stringBuffer = StringMaker.new()
        stringUtil = StringUtil.getInstance()
        stringBuffer.append("Velocity ")
        stringBuffer.append(positionStrings.X_LABEL)
        stringBuffer.append(stringUtil.toString(@velocityXBasicDecimal))
        stringBuffer.append(commonSeps.SPACE)
        stringBuffer.append(positionStrings.Y_LABEL)
        stringBuffer.append(stringUtil.toString(@velocityYBasicDecimal))
        stringBuffer.append(commonSeps.SPACE)
        stringBuffer.append(positionStrings.Z_LABEL)
        stringBuffer.append(stringUtil.toString(@velocityZBasicDecimal))
        return stringBuffer.to_s
    end
    alias_method :to_s, :toString
end

require "org/allbinary/direction/Direction"
require "org/allbinary/direction/DirectionUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/math/BasicDecimal"
require "org/allbinary/logic/math/vector/AxisMathVectorUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/math/Angle"
require "org/allbinary/math/PositionStrings"
require "org/allbinary/string/CommonSeps"

