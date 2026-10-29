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
end

require "org/allbinary/game/input/CompleteMotionGestureInputEventListenerInterface"
require "org/allbinary/game/input/motion/action/NoCompleteMotionGestureInputEventListener"
require "org/allbinary/logic/math/Orientation"

class AllBinaryOrientationSensor
    NULL_ALLBINARY_ORIENTATION_SENSOR = AllBinaryOrientationSensor.new()
end

