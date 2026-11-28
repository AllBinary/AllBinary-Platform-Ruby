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

class TrackballMotionGestureFactory
    attr_accessor :LEFT, :RIGHT, :UP, :DOWN

    def jfields_org_allbinary_input_motion_gesture_TrackballMotionGestureFactory
        @LEFT = nil unless instance_variable_defined?(:@LEFT)
        @RIGHT = nil unless instance_variable_defined?(:@RIGHT)
        @UP = nil unless instance_variable_defined?(:@UP)
        @DOWN = nil unless instance_variable_defined?(:@DOWN)
    end
    

    def self.getInstance()
        if @@instance == ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT
            @@instance = TrackballMotionGestureFactory.new()
        end
        return @@instance
    end
    

    def initialize()
        jfields_org_allbinary_input_motion_gesture_TrackballMotionGestureFactory
        _MAX = ::Org::Allbinary::Game::Input::InputFactory.getInstance().MAX
        @LEFT = MotionGestureInput.new(_MAX - 26, "L Trackball")
        @RIGHT = MotionGestureInput.new(_MAX - 27, "R Trackball")
        @UP = MotionGestureInput.new(_MAX - 28, "Up Trackball")
        @DOWN = MotionGestureInput.new(_MAX - 29, "D Trackball")
    end

    def self.instance()
        TrackballMotionGestureFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        TrackballMotionGestureFactory.java_static_fields unless @java_static_fields_started
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
        if name == "TrackballMotionGestureFactory"
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
    TrackballMotionGestureFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

