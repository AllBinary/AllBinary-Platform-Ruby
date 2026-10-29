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
        return defined?(@@allBinaryGyroSensor) ? @@allBinaryGyroSensor : nil
    end

    def self.allBinaryGyroSensor=(value)
        @@allBinaryGyroSensor = value
    end
end

require "org/allbinary/input/gyro/AllBinaryOrientationSensor"
require "org/allbinary/input/gyro/NoGyroSensor"

class GyroSensorFactory
    @@allBinaryGyroSensor = AllBinaryOrientationSensor::NULL_ALLBINARY_ORIENTATION_SENSOR
end

