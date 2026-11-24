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

require "java/lang/JavaOverload"
require "org/allbinary/input/gyro/SensorGameUpdateProcessor"

module ::Org; module Allbinary; module Input; module Gyro

class SingleSensorGameUpdateProcessor < SensorGameUpdateProcessor
    attr_accessor :accelerometerSensorUpdateProcessor, :gyroSensorUpdateProcessor

    def jfields_org_allbinary_input_gyro_SingleSensorGameUpdateProcessor
        @accelerometerSensorUpdateProcessor = AccelerometerSensorUpdateProcessor.new()
        @gyroSensorUpdateProcessor = GyroSensorUpdateProcessor.new()
    end

    def initialize
        super()
        jfields_org_allbinary_input_gyro_SingleSensorGameUpdateProcessor
    end
    

    # throws Exception
    def process(anyType)
        self.setNoSensors()
    end
    java_overload :process, 1
    

    # throws Exception
    def sendNotifications(anyType)
    end
    java_overload :sendNotifications, 1
end

module ::Org; module Allbinary; module Canvas; autoload :Processor, "org/allbinary/canvas/Processor" unless const_defined?(:Processor, false); end; end; end
autoload :AccelerometerSensorUpdateProcessor, "org/allbinary/input/gyro/AccelerometerSensorUpdateProcessor" unless const_defined?(:AccelerometerSensorUpdateProcessor, false)
autoload :GyroSensorUpdateProcessor, "org/allbinary/input/gyro/GyroSensorUpdateProcessor" unless const_defined?(:GyroSensorUpdateProcessor, false)

end; end; end; end

