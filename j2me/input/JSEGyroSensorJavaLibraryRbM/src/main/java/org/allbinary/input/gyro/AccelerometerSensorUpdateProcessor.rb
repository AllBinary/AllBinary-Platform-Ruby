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

require "org/allbinary/canvas/Processor"

class AccelerometerSensorUpdateProcessor < Processor
    

    # throws Exception
    def process()
        sensorFeatureFactory = SensorFeatureFactory.getInstance()
        if Features.getInstance().isFeature(sensorFeatureFactory.ORIENTATION_SENSORS)
            AccelerometerSensorFactory.getInstance().setCompleteMotionGestureInputEventListener(SingleKeyPressGameKeyFromMotionGestureEventListener.new())
        elsif Features.getInstance().isFeature(sensorFeatureFactory.SIMULATED_ORIENTATION_SENSORS)
            AccelerometerSensorFactory.getInstance().setCompleteMotionGestureInputEventListener(SingleKeyPressGameKeyFromMotionGestureEventListener.new())
        elsif Features.getInstance().isFeature(sensorFeatureFactory.NO_ORIENTATION)
            AccelerometerSensorFactory.getInstance().setCompleteMotionGestureInputEventListener(NoCompleteMotionGestureInputEventListener.getInstance())
        else
            raise StandardError.new("Sensor Feature Not Set")
        end
    end
end

require "org/allbinary/game/configuration/feature/Features"
require "org/allbinary/game/configuration/feature/SensorFeatureFactory"
require "org/allbinary/game/input/motion/action/NoCompleteMotionGestureInputEventListener"
require "org/allbinary/game/input/motion/action/SingleKeyPressGameKeyFromMotionGestureEventListener"
require "org/allbinary/input/accelerometer/AccelerometerSensorFactory"

