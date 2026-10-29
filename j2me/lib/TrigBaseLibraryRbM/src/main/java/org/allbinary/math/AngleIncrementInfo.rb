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
# package org.allbinary.math

# require "jsinterop/annotations/JsType"
# require "jsinterop/annotations/JsProperty"
# require "jsinterop/annotations/JsMethod"
# require "jsinterop/annotations/JsConstructor"

class AngleIncrementInfo
    attr_accessor :angleIncrement, :DOWN_FRAME, :UP_FRAME, :LEFT_FRAME, :RIGHT_FRAME, :frameUtil

    def initialize_fields
        @angleIncrement = nil
        @DOWN_FRAME = nil
        @UP_FRAME = nil
        @LEFT_FRAME = nil
        @RIGHT_FRAME = nil
        @frameUtil = FrameUtil.getInstance()
    end
    

    def initialize(angleIncrement)
        initialize_fields
        @angleIncrement = angleIncrement
        angleFactory = AngleFactory.getInstance()
        smallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance()
        @DOWN_FRAME = smallIntegerSingletonFactory.getAt(angleFactory.DOWN.getValue() / @angleIncrement)
        @UP_FRAME = smallIntegerSingletonFactory.getAt((angleFactory.UP.getValue()).to_i)
        @LEFT_FRAME = smallIntegerSingletonFactory.getAt(angleFactory.LEFT.getValue() / @angleIncrement)
        @RIGHT_FRAME = smallIntegerSingletonFactory.getAt(angleFactory.RIGHT.getValue() / @angleIncrement)
    end
    

    def getFrameAngle(frame)
        return @frameUtil.getFrameAngle(frame, @angleIncrement)
    end
    

    def getAngleIncrement()
        return @angleIncrement
    end
    

    def toString()
        return StringMaker.new().append(AngleIncrementInfo::INCREMENT).appendshort(@angleIncrement).to_s
    end
    alias_method :to_s, :toString
    

    def getClosestGeneralDirection(angle)
        closestDirection = SmallIntegerSingletonFactory.getInstance().getAt(360)
        if @UP_FRAME.to_i - angle < closestDirection.to_i - angle
            closestDirection = @UP_FRAME
        end
        if @DOWN_FRAME.to_i - angle < closestDirection.to_i - angle
            closestDirection = @DOWN_FRAME
        end
        if @LEFT_FRAME.to_i - angle < closestDirection.to_i - angle
            closestDirection = @LEFT_FRAME
        end
        if @RIGHT_FRAME.to_i - angle < closestDirection.to_i - angle
            closestDirection = @RIGHT_FRAME
        end
        return closestDirection.to_i
    end
end

require "org/allbinary/logic/math/SmallIntegerSingletonFactory"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/math/AngleFactory"
require "org/allbinary/math/FrameUtil"

class AngleIncrementInfo
    INCREMENT = "Inc: "
end

