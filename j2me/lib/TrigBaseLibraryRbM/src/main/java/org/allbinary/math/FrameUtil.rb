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
# require "jsinterop/annotations/JsMethod"
# require "jsinterop/annotations/JsConstructor"

class FrameUtil
    

    def self.getInstance()
        return FrameUtil.instance
    end
    

    def initialize()
    end
    

    def getFrameForAngle(angle, angleIncrement)
        return self.adjustAngleToFrameAngle(angle) / angleIncrement
    end
    

    def getFrameAngle(frame, angleIncrement)
        frameAngle = angleIncrement * frame - 90
        return self.adjustAngleToFrameAngle(frameAngle)
    end
    

    def adjustAngleToFrameAngle(currentAngle)
        angleFactory = AngleFactory.getInstance()
        if currentAngle > 359
            currentAngle = (currentAngle - angleFactory.TOTAL_ANGLE)
            while currentAngle > 359
                currentAngle = (currentAngle - angleFactory.TOTAL_ANGLE)
            end
        end
        if currentAngle < 0
            currentAngle = (currentAngle + angleFactory.TOTAL_ANGLE)
            while currentAngle < 0
                currentAngle = (currentAngle + angleFactory.TOTAL_ANGLE)
            end
        end
        return currentAngle
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/math/AngleFactory"

class FrameUtil
    @@instance = FrameUtil.new()
end

