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
require "org/allbinary/canvas/Processor"

module ::Org; module Allbinary; module Input; module Gyro

class AccelerometerSensorUpdateProcessor < ::Org::Allbinary::Canvas::Processor
    

    # throws Exception
    def process()
        sensorFeatureFactory = ::Org::Allbinary::Game::Configuration::Feature::SensorFeatureFactory.getInstance()
        if ::Org::Allbinary::Game::Configuration::Feature::Features.getInstance().isFeature(sensorFeatureFactory.ORIENTATION_SENSORS)
            ::Org::Allbinary::Input::Accelerometer::AccelerometerSensorFactory.getInstance().setCompleteMotionGestureInputEventListener(::Org::Allbinary::Game::Input::Motion::Action::SingleKeyPressGameKeyFromMotionGestureEventListener.new())
        elsif ::Org::Allbinary::Game::Configuration::Feature::Features.getInstance().isFeature(sensorFeatureFactory.SIMULATED_ORIENTATION_SENSORS)
            ::Org::Allbinary::Input::Accelerometer::AccelerometerSensorFactory.getInstance().setCompleteMotionGestureInputEventListener(::Org::Allbinary::Game::Input::Motion::Action::SingleKeyPressGameKeyFromMotionGestureEventListener.new())
        elsif ::Org::Allbinary::Game::Configuration::Feature::Features.getInstance().isFeature(sensorFeatureFactory.NO_ORIENTATION)
            ::Org::Allbinary::Input::Accelerometer::AccelerometerSensorFactory.getInstance().setCompleteMotionGestureInputEventListener(::Org::Allbinary::Game::Input::Motion::Action::NoCompleteMotionGestureInputEventListener.getInstance())
        else
            raise StandardError.new("Sensor Feature Not Set")
        end
    end
    java_overload :process, 0
end

module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :Features, "org/allbinary/game/configuration/feature/Features" unless const_defined?(:Features, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :SensorFeatureFactory, "org/allbinary/game/configuration/feature/SensorFeatureFactory" unless const_defined?(:SensorFeatureFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Input; module Motion; module Action; autoload :NoCompleteMotionGestureInputEventListener, "org/allbinary/game/input/motion/action/NoCompleteMotionGestureInputEventListener" unless const_defined?(:NoCompleteMotionGestureInputEventListener, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Game; module Input; module Motion; module Action; autoload :SingleKeyPressGameKeyFromMotionGestureEventListener, "org/allbinary/game/input/motion/action/SingleKeyPressGameKeyFromMotionGestureEventListener" unless const_defined?(:SingleKeyPressGameKeyFromMotionGestureEventListener, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Input; module Accelerometer; autoload :AccelerometerSensorFactory, "org/allbinary/input/accelerometer/AccelerometerSensorFactory" unless const_defined?(:AccelerometerSensorFactory, false); end; end; end; end

end; end; end; end

