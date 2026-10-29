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


class SensorGameUpdateProcessor
    attr_accessor :inputSensor

    def initialize_fields
        @inputSensor = NoAllBinarySensor.getInstance()
    end

    def initialize
        initialize_fields
    end
    

    def setInputSensor(inputSensor)
        @inputSensor = inputSensor
    end
    

    def getInputSensor()
        return @inputSensor
    end
    

    # throws Exception
    def process(anyType)
    end
    

    # throws Exception
    def sendNotifications(anyType)
    end
    

    def isAnySensor()
        if @inputSensor == NoAllBinarySensor.getInstance()
            return false
        else
            return true
        end
    end
    

    def setNoSensors()
        self.setInputSensor(NoAllBinarySensor.getInstance())
    end
end

require "org/allbinary/input/AllBinarySensor"
require "org/allbinary/input/NoAllBinarySensor"

