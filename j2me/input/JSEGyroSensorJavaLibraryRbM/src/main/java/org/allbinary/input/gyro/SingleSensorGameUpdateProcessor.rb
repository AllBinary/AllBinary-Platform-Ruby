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

require "org/allbinary/input/gyro/SensorGameUpdateProcessor"

class SingleSensorGameUpdateProcessor < SensorGameUpdateProcessor
    attr_accessor :accelerometerSensorUpdateProcessor, :gyroSensorUpdateProcessor

    def initialize_fields
        @accelerometerSensorUpdateProcessor = AccelerometerSensorUpdateProcessor.new()
        @gyroSensorUpdateProcessor = GyroSensorUpdateProcessor.new()
    end

    def initialize
        super()
        initialize_fields
    end
    

    # throws Exception
    def process(anyType)
        self.setNoSensors()
    end
    

    # throws Exception
    def sendNotifications(anyType)
    end
end

require "org/allbinary/canvas/Processor"
require "org/allbinary/input/gyro/AccelerometerSensorUpdateProcessor"
require "org/allbinary/input/gyro/GyroSensorUpdateProcessor"

