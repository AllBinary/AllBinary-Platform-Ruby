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
        AccelerometerSensorFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@allBinaryAccelerometerSensor) ? @@allBinaryAccelerometerSensor : nil
    end

    def self.allBinaryAccelerometerSensor=(value)
        AccelerometerSensorFactory.java_static_fields unless @java_static_fields_started
        @@allBinaryAccelerometerSensor = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@allBinaryAccelerometerSensor = nil
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "AccelerometerSensorFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :Features, "org/allbinary/game/configuration/feature/Features"
autoload :SensorFeatureFactory, "org/allbinary/game/configuration/feature/SensorFeatureFactory"
autoload :AllBinaryOrientationSensor, "org/allbinary/input/gyro/AllBinaryOrientationSensor"
autoload :NoAccelerometerSensor, "org/allbinary/input/accelerometer/NoAccelerometerSensor"

begin
    AccelerometerSensorFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

