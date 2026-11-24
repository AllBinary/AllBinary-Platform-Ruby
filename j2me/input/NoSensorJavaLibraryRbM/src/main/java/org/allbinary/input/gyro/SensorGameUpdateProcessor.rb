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


module ::Org; module Allbinary; module Input; module Gyro

class SensorGameUpdateProcessor
    attr_accessor :inputSensor

    def jfields_org_allbinary_input_gyro_SensorGameUpdateProcessor
        @inputSensor = ::Org::Allbinary::Input::NoAllBinarySensor.getInstance()
    end

    def initialize
        jfields_org_allbinary_input_gyro_SensorGameUpdateProcessor
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
        if @inputSensor == ::Org::Allbinary::Input::NoAllBinarySensor.getInstance()
            return false
        else
            return true
        end
    end
    

    def setNoSensors()
        self.setInputSensor(::Org::Allbinary::Input::NoAllBinarySensor.getInstance())
    end
end

module ::Org; module Allbinary; module Input; autoload :AllBinarySensor, "org/allbinary/input/AllBinarySensor" unless const_defined?(:AllBinarySensor, false); end; end; end
module ::Org; module Allbinary; module Input; autoload :NoAllBinarySensor, "org/allbinary/input/NoAllBinarySensor" unless const_defined?(:NoAllBinarySensor, false); end; end; end

end; end; end; end

