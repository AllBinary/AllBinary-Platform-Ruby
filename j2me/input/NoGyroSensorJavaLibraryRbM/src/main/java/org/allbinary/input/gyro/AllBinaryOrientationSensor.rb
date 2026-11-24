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
require "org/allbinary/input/AllBinarySensor"

module ::Org; module Allbinary; module Input; module Gyro

class AllBinaryOrientationSensor < ::Org::Allbinary::Input::AllBinarySensor
    attr_accessor :listener

    def jfields_org_allbinary_input_gyro_AllBinaryOrientationSensor
        @listener = ::Org::Allbinary::Game::Input::Motion::Action::NoCompleteMotionGestureInputEventListener.getInstance()
    end
    

    def setListener(completeMotionGestureInputEventListenerInterface)
        @listener = completeMotionGestureInputEventListenerInterface
    end
    java_overload :setListener, 1
    

    def initialize()
        super()
        jfields_org_allbinary_input_gyro_AllBinaryOrientationSensor
    end
    

    # throws Exception
    def getOrientation()
        raise StandardError.new(@commonStrings.NOT_IMPLEMENTED)
    end
    java_overload :getOrientation, 0

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_ALLBINARY_ORIENTATION_SENSOR, AllBinaryOrientationSensor.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "AllBinaryOrientationSensor"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_ALLBINARY_ORIENTATION_SENSOR].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Game; module Input; autoload :CompleteMotionGestureInputEventListenerInterface, "org/allbinary/game/input/CompleteMotionGestureInputEventListenerInterface" unless const_defined?(:CompleteMotionGestureInputEventListenerInterface, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Input; module Motion; module Action; autoload :NoCompleteMotionGestureInputEventListener, "org/allbinary/game/input/motion/action/NoCompleteMotionGestureInputEventListener" unless const_defined?(:NoCompleteMotionGestureInputEventListener, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :Orientation, "org/allbinary/logic/math/Orientation" unless const_defined?(:Orientation, false); end; end; end; end

begin
    AllBinaryOrientationSensor.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

