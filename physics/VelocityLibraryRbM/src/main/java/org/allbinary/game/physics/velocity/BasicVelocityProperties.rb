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

require "java/lang/JavaOverload"
require "org/allbinary/game/physics/velocity/BasicVelocityInterface"

module ::Org; module Allbinary; module Game; module Physics; module Velocity

class BasicVelocityProperties
    include BasicVelocityInterface
    attr_accessor :logUtil, :velocityXBasicDecimal, :velocityYBasicDecimal, :velocityZBasicDecimal, :axisMathVectorUtil, :directionUtil

    def jfields_org_allbinary_game_physics_velocity_BasicVelocityProperties
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @velocityXBasicDecimal = nil unless instance_variable_defined?(:@velocityXBasicDecimal)
        @velocityYBasicDecimal = nil unless instance_variable_defined?(:@velocityYBasicDecimal)
        @velocityZBasicDecimal = nil unless instance_variable_defined?(:@velocityZBasicDecimal)
        @axisMathVectorUtil = ::Org::Allbinary::Logic::MathPackage::Vector::AxisMathVectorUtil.getInstance()
        @directionUtil = ::Org::Allbinary::Direction::DirectionUtil.getInstance()
    end
    

    def initialize()
        jfields_org_allbinary_game_physics_velocity_BasicVelocityProperties
        @velocityXBasicDecimal = ::Org::Allbinary::Logic::MathPackage::BasicDecimal.new(0)
        @velocityYBasicDecimal = ::Org::Allbinary::Logic::MathPackage::BasicDecimal.new(0)
        @velocityZBasicDecimal = ::Org::Allbinary::Logic::MathPackage::BasicDecimal.new(0)
    end
    

    def zero()
        @velocityXBasicDecimal.setint(0)
        @velocityYBasicDecimal.setint(0)
        @velocityZBasicDecimal.setint(0)
    end
    java_overload :zero, 0
    

    def getVelocityXBasicDecimalP()
        return @velocityXBasicDecimal
    end
    java_overload :getVelocityXBasicDecimalP, 0
    

    def getVelocityYBasicDecimalP()
        return @velocityYBasicDecimal
    end
    java_overload :getVelocityYBasicDecimalP, 0
    

    def getVelocityZBasicDecimalP()
        return @velocityZBasicDecimal
    end
    java_overload :getVelocityZBasicDecimalP, 0
    

    def setVelocityWithBigDecimalAndDirection(magnitudeBasicDecimal, direction, otherDirection)
        angle = @directionUtil.getAngle(direction)
        otherAngle = @directionUtil.getAngle(otherDirection)
        self.setVelocityWithBigDecimal(magnitudeBasicDecimal, angle, otherAngle)
    end
    java_overload :setVelocityWithBigDecimalAndDirection, 3
    

    def setVelocityWithDirection(magnitude, direction, otherDirection)
        angle = @directionUtil.getAngle(direction)
        otherAngle = @directionUtil.getAngle(otherDirection)
        self.setVelocity(magnitude, angle, otherAngle)
    end
    java_overload :setVelocityWithDirection, 3
    

    def addVelocityWithBigDecimalAndDirection(magnitudeBasicDecimal, direction, otherDirection)
        angle = @directionUtil.getAngle(direction)
        otherAngle = @directionUtil.getAngle(otherDirection)
        self.addVelocityWithBigDecimal(magnitudeBasicDecimal, angle, otherAngle)
    end
    java_overload :addVelocityWithBigDecimalAndDirection, 3
    

    def addVelocityWithDirection(magnitude, direction, otherDirection)
        angle = @directionUtil.getAngle(direction)
        otherAngle = @directionUtil.getAngle(otherDirection)
        self.addVelocity(magnitude, angle, otherAngle)
    end
    java_overload :addVelocityWithDirection, 3
    

    def setVelocityWithBigDecimal(magnitudeBasicDecimal, angle, otherAngle)
        magnitude = magnitudeBasicDecimal.getUnscaled()
        self.setVelocity(magnitude, angle, otherAngle)
    end
    java_overload :setVelocityWithBigDecimal, 3
    

    def addVelocityWithBigDecimal(magnitudeBasicDecimal, angle, otherAngle)
        magnitude = magnitudeBasicDecimal.getUnscaled()
        self.addVelocity(magnitude, angle, otherAngle)
    end
    java_overload :addVelocityWithBigDecimal, 3
    

    def setVelocity(magnitude, angle, otherAngle)
        self.setVelocityi(magnitude, ((angle.getValue()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }), ((otherAngle.getValue()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
    end
    java_overload :setVelocity, 3
    

    def addVelocity(magnitude, angle, otherAngle)
        self.addVelocityi(magnitude, ((angle.getValue()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }), ((otherAngle.getValue()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
    end
    java_overload :addVelocity, 3
    

    def setVelocityi(magnitude, angle, otherAngle)
        xVector = (@axisMathVectorUtil.calculateX(magnitude, angle) / @velocityXBasicDecimal.getScaledFactorValue())
        yVector = (@axisMathVectorUtil.calculateY(magnitude, angle) / @velocityYBasicDecimal.getScaledFactorValue())
        zVector = (@axisMathVectorUtil.calculateZ(magnitude, otherAngle) / @velocityZBasicDecimal.getScaledFactorValue())
        @velocityXBasicDecimal.setlong(xVector)
        @velocityYBasicDecimal.setlong(yVector)
        @velocityZBasicDecimal.setlong(zVector)
    end
    java_overload :setVelocityi, 3
    

    def addVelocityi(magnitude, angle, otherAngle)
        xVector = (@axisMathVectorUtil.calculateX(magnitude, angle) / @velocityXBasicDecimal.getScaledFactorValue())
        yVector = (@axisMathVectorUtil.calculateY(magnitude, angle) / @velocityYBasicDecimal.getScaledFactorValue())
        zVector = (@axisMathVectorUtil.calculateZ(magnitude, otherAngle) / @velocityZBasicDecimal.getScaledFactorValue())
        @velocityXBasicDecimal.addlong(xVector)
        @velocityYBasicDecimal.addlong(yVector)
        @velocityZBasicDecimal.addlong(zVector)
    end
    java_overload :addVelocityi, 3
    

    def toString()
        commonSeps = ::Org::Allbinary::StringPackage::CommonSeps.getInstance()
        positionStrings = ::Org::Allbinary::MathPackage::PositionStrings.getInstance()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringUtil = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance()
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
    java_overload :toString, 0
    alias_method :to_s, :toString
end

module ::Org; module Allbinary; module Direction; autoload :Direction, "org/allbinary/direction/Direction" unless const_defined?(:Direction, false); end; end; end
module ::Org; module Allbinary; module Direction; autoload :DirectionUtil, "org/allbinary/direction/DirectionUtil" unless const_defined?(:DirectionUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :BasicDecimal, "org/allbinary/logic/math/BasicDecimal" unless const_defined?(:BasicDecimal, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; module Vector; autoload :AxisMathVectorUtil, "org/allbinary/logic/math/vector/AxisMathVectorUtil" unless const_defined?(:AxisMathVectorUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :Angle, "org/allbinary/math/Angle" unless const_defined?(:Angle, false); end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :PositionStrings, "org/allbinary/math/PositionStrings" unless const_defined?(:PositionStrings, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end

end; end; end; end; end

