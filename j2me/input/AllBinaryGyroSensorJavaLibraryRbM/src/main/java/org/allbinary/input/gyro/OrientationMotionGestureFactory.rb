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

class OrientationMotionGestureFactory
    attr_accessor :LEFT, :RIGHT, :UP, :DOWN, :ROLL_LEFT, :ROLL_RIGHT

    def jfields_org_allbinary_input_gyro_OrientationMotionGestureFactory
        @LEFT = nil unless instance_variable_defined?(:@LEFT)
        @RIGHT = nil unless instance_variable_defined?(:@RIGHT)
        @UP = nil unless instance_variable_defined?(:@UP)
        @DOWN = nil unless instance_variable_defined?(:@DOWN)
        @ROLL_LEFT = nil unless instance_variable_defined?(:@ROLL_LEFT)
        @ROLL_RIGHT = nil unless instance_variable_defined?(:@ROLL_RIGHT)
    end
    

    def self.getInstance()
        if OrientationMotionGestureFactory.instance == ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT
            OrientationMotionGestureFactory.instance = OrientationMotionGestureFactory.new()
        end
        return OrientationMotionGestureFactory.instance
    end
    

    def initialize()
        jfields_org_allbinary_input_gyro_OrientationMotionGestureFactory
        _MAX = ::Org::Allbinary::Game::Input::InputFactory.getInstance().MAX
        @LEFT = ::Org::Allbinary::Input::Motion::Gesture::MotionGestureInput.new(_MAX - 20, "Left Orient")
        @RIGHT = ::Org::Allbinary::Input::Motion::Gesture::MotionGestureInput.new(_MAX - 21, "Right Orient")
        @UP = ::Org::Allbinary::Input::Motion::Gesture::MotionGestureInput.new(_MAX - 22, "Up Orient")
        @DOWN = ::Org::Allbinary::Input::Motion::Gesture::MotionGestureInput.new(_MAX - 23, "Down Orient")
        @ROLL_LEFT = ::Org::Allbinary::Input::Motion::Gesture::MotionGestureInput.new(_MAX - 24, "Roll Left")
        @ROLL_RIGHT = ::Org::Allbinary::Input::Motion::Gesture::MotionGestureInput.new(_MAX - 25, "Roll Right")
    end

    def self.instance()
        OrientationMotionGestureFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        OrientationMotionGestureFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "OrientationMotionGestureFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Game; module Input; autoload :InputFactory, "org/allbinary/game/input/InputFactory" unless const_defined?(:InputFactory, false); end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Gesture; autoload :MotionGestureInput, "org/allbinary/input/motion/gesture/MotionGestureInput" unless const_defined?(:MotionGestureInput, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end

begin
    OrientationMotionGestureFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

