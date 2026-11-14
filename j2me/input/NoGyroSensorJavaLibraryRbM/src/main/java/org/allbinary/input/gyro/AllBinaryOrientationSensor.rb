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
# package org.allbinary.input.gyro

require "org/allbinary/input/AllBinarySensor"

class AllBinaryOrientationSensor < AllBinarySensor
    attr_accessor :listener

    def initialize_fields
        @listener = NoCompleteMotionGestureInputEventListener.getInstance()
    end
    

    def setListener(completeMotionGestureInputEventListenerInterface)
        @listener = completeMotionGestureInputEventListenerInterface
    end
    

    def initialize()
        super()
        initialize_fields
    end
    

    # throws Exception
    def getOrientation()
        raise StandardError.new(@commonStrings.NOT_IMPLEMENTED)
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_ALLBINARY_ORIENTATION_SENSOR, AllBinaryOrientationSensor.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "AllBinaryOrientationSensor"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_ALLBINARY_ORIENTATION_SENSOR].include?(name)
        end
        super
    end
end

autoload :CompleteMotionGestureInputEventListenerInterface, "org/allbinary/game/input/CompleteMotionGestureInputEventListenerInterface"
autoload :NoCompleteMotionGestureInputEventListener, "org/allbinary/game/input/motion/action/NoCompleteMotionGestureInputEventListener"
autoload :Orientation, "org/allbinary/logic/math/Orientation"

begin
    AllBinaryOrientationSensor.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

