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
# package org.allbinary.input.accelerometer


class AccelerometerSensorFactory
    

    # throws Exception
    def self.init()
        features = Features.getInstance()
        sensorFeatureFactory = SensorFeatureFactory.getInstance()
        if features.isFeature(sensorFeatureFactory.ORIENTATION_SENSORS)
            raise StandardError.new("No Orientation Sensors")
        elsif features.isFeature(sensorFeatureFactory.SIMULATED_ORIENTATION_SENSORS)
            raise StandardError.new("No Simulation Sensors")
        elsif features.isFeature(sensorFeatureFactory.NO_ORIENTATION)
            AccelerometerSensorFactory.allBinaryAccelerometerSensor = NoAccelerometerSensor.new()
        else
            raise StandardError.new("Not Such SensorFeature")
        end
    end
    

    def self.getInstance()
        return AccelerometerSensorFactory.allBinaryAccelerometerSensor
    end

    def self.allBinaryAccelerometerSensor()
        return defined?(@@allBinaryAccelerometerSensor) ? @@allBinaryAccelerometerSensor : nil
    end

    def self.allBinaryAccelerometerSensor=(value)
        @@allBinaryAccelerometerSensor = value
    end
end

require "org/allbinary/game/configuration/feature/Features"
require "org/allbinary/game/configuration/feature/SensorFeatureFactory"
require "org/allbinary/input/gyro/AllBinaryOrientationSensor"
require "org/allbinary/input/accelerometer/NoAccelerometerSensor"

class AccelerometerSensorFactory
    @@allBinaryAccelerometerSensor = AllBinaryOrientationSensor::NULL_ALLBINARY_ORIENTATION_SENSOR
end

