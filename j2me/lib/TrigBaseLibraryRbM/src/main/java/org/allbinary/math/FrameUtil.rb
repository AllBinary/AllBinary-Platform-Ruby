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
        FrameUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        FrameUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = FrameUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "FrameUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :AngleFactory, "org/allbinary/math/AngleFactory"

begin
    FrameUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

