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
        @inputSensor = nil unless instance_variable_defined?(:@inputSensor)
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
        GyroSensorFactory.getInstance().setCompleteMotionGestureInputEventListener(::Org::Allbinary::Game::Input::Motion::Action::NoCompleteMotionGestureInputEventListener.getInstance())
        ::Org::Allbinary::Input::Accelerometer::AccelerometerSensorFactory.getInstance().setCompleteMotionGestureInputEventListener(::Org::Allbinary::Game::Input::Motion::Action::NoCompleteMotionGestureInputEventListener.getInstance())
        self.setInputSensor(::Org::Allbinary::Input::NoAllBinarySensor.getInstance())
    end
end

module ::Org; module Allbinary; module Game; module Input; module Motion; module Action; autoload :NoCompleteMotionGestureInputEventListener, "org/allbinary/game/input/motion/action/NoCompleteMotionGestureInputEventListener" unless const_defined?(:NoCompleteMotionGestureInputEventListener, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Input; autoload :AllBinarySensor, "org/allbinary/input/AllBinarySensor" unless const_defined?(:AllBinarySensor, false); end; end; end
module ::Org; module Allbinary; module Input; autoload :NoAllBinarySensor, "org/allbinary/input/NoAllBinarySensor" unless const_defined?(:NoAllBinarySensor, false); end; end; end
module ::Org; module Allbinary; module Input; module Accelerometer; autoload :AccelerometerSensorFactory, "org/allbinary/input/accelerometer/AccelerometerSensorFactory" unless const_defined?(:AccelerometerSensorFactory, false); end; end; end; end
autoload :GyroSensorFactory, "org/allbinary/input/gyro/GyroSensorFactory" unless const_defined?(:GyroSensorFactory, false)

end; end; end; end

