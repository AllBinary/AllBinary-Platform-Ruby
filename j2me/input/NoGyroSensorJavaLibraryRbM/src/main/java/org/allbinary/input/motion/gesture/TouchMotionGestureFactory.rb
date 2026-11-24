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
# package org.allbinary.input.motion.gesture


module ::Org; module Allbinary; module Input; module Motion; module Gesture

class TouchMotionGestureFactory
    attr_accessor :LEFT, :RIGHT, :UP, :DOWN, :PRESSED, :RELEASED, :DIAGONAL_DOWN_RIGHT, :DIAGONAL_DOWN_LEFT, :DIAGONAL_UP_RIGHT, :DIAGONAL_UP_LEFT, :SCROLL_UP, :SCROLL_DOWN, :NO_MOTION, :LAST_MOTION

    def jfields_org_allbinary_input_motion_gesture_TouchMotionGestureFactory
        @LEFT = nil unless instance_variable_defined?(:@LEFT)
        @RIGHT = nil unless instance_variable_defined?(:@RIGHT)
        @UP = nil unless instance_variable_defined?(:@UP)
        @DOWN = nil unless instance_variable_defined?(:@DOWN)
        @PRESSED = nil unless instance_variable_defined?(:@PRESSED)
        @RELEASED = nil unless instance_variable_defined?(:@RELEASED)
        @DIAGONAL_DOWN_RIGHT = nil unless instance_variable_defined?(:@DIAGONAL_DOWN_RIGHT)
        @DIAGONAL_DOWN_LEFT = nil unless instance_variable_defined?(:@DIAGONAL_DOWN_LEFT)
        @DIAGONAL_UP_RIGHT = nil unless instance_variable_defined?(:@DIAGONAL_UP_RIGHT)
        @DIAGONAL_UP_LEFT = nil unless instance_variable_defined?(:@DIAGONAL_UP_LEFT)
        @SCROLL_UP = nil unless instance_variable_defined?(:@SCROLL_UP)
        @SCROLL_DOWN = nil unless instance_variable_defined?(:@SCROLL_DOWN)
        @NO_MOTION = nil unless instance_variable_defined?(:@NO_MOTION)
        @LAST_MOTION = nil unless instance_variable_defined?(:@LAST_MOTION)
    end
    

    def self.getInstance()
        if TouchMotionGestureFactory.instance == ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT
            TouchMotionGestureFactory.instance = TouchMotionGestureFactory.new()
        end
        return TouchMotionGestureFactory.instance
    end
    

    def initialize()
        jfields_org_allbinary_input_motion_gesture_TouchMotionGestureFactory
        _MAX = ::Org::Allbinary::Game::Input::InputFactory.getInstance().MAX
        @LEFT = MotionGestureInput.new(_MAX - 3, "Left Touch")
        @RIGHT = MotionGestureInput.new(_MAX - 4, "Right Touch")
        @UP = MotionGestureInput.new(_MAX - 5, "Up Touch")
        @DOWN = MotionGestureInput.new(_MAX - 6, "Down Touch")
        @PRESSED = MotionGestureInput.new(_MAX - 7, "Screen Press")
        @RELEASED = MotionGestureInput.new(_MAX - 8, "Released")
        @DIAGONAL_DOWN_RIGHT = MotionGestureInput.new(_MAX - 9, "Diagonal Dn R")
        @DIAGONAL_DOWN_LEFT = MotionGestureInput.new(_MAX - 10, "Diagonal Dn L")
        @DIAGONAL_UP_RIGHT = MotionGestureInput.new(_MAX - 11, "Diagonal Up R")
        @DIAGONAL_UP_LEFT = MotionGestureInput.new(_MAX - 12, "Diagonal Up L")
        @SCROLL_UP = MotionGestureInput.new(_MAX - 13, "Scroll Up")
        @SCROLL_DOWN = MotionGestureInput.new(_MAX - 14, "Scroll Down")
        @NO_MOTION = MotionGestureInput.new(_MAX - 2, "No Motion")
        @LAST_MOTION = MotionGestureInput.new(_MAX - 19, "Last Motion")
    end

    def self.instance()
        TouchMotionGestureFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        TouchMotionGestureFactory.java_static_fields unless @java_static_fields_started
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
        if name == "TouchMotionGestureFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Game; module Input; autoload :InputFactory, "org/allbinary/game/input/InputFactory" unless const_defined?(:InputFactory, false); end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end
autoload :MotionGestureInput, "org/allbinary/input/motion/gesture/MotionGestureInput" unless const_defined?(:MotionGestureInput, false)

begin
    TouchMotionGestureFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

