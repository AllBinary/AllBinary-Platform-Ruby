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


class GyroSensorFactory
    

    # throws Exception
    def self.init()
        GyroSensorFactory.allBinaryGyroSensor = NoGyroSensor.new()
    end
    

    def self.getInstance()
        return GyroSensorFactory.allBinaryGyroSensor
    end

    def self.allBinaryGyroSensor()
        GyroSensorFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@allBinaryGyroSensor) ? @@allBinaryGyroSensor : nil
    end

    def self.allBinaryGyroSensor=(value)
        GyroSensorFactory.java_static_fields unless @java_static_fields_started
        @@allBinaryGyroSensor = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@allBinaryGyroSensor = nil
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "GyroSensorFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :AllBinaryOrientationSensor, "org/allbinary/input/gyro/AllBinaryOrientationSensor"
autoload :NoGyroSensor, "org/allbinary/input/gyro/NoGyroSensor"

begin
    GyroSensorFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

