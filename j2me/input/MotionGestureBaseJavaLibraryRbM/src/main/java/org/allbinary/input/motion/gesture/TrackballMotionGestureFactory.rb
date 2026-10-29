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


class TrackballMotionGestureFactory
    attr_accessor :LEFT, :RIGHT, :UP, :DOWN

    def initialize_fields
        @LEFT = nil
        @RIGHT = nil
        @UP = nil
        @DOWN = nil
    end
    

    def self.getInstance()
        if TrackballMotionGestureFactory.instance == NullUtil.getInstance().NULL_OBJECT
            TrackballMotionGestureFactory.instance = TrackballMotionGestureFactory.new()
        end
        return TrackballMotionGestureFactory.instance
    end
    

    def initialize()
        initialize_fields
        _MAX = InputFactory.getInstance().MAX
        @LEFT = MotionGestureInput.new(_MAX - 26, "L Trackball")
        @RIGHT = MotionGestureInput.new(_MAX - 27, "R Trackball")
        @UP = MotionGestureInput.new(_MAX - 28, "Up Trackball")
        @DOWN = MotionGestureInput.new(_MAX - 29, "D Trackball")
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/game/input/InputFactory"
require "org/allbinary/logic/NullUtil"
require "org/allbinary/input/motion/gesture/MotionGestureInput"

class TrackballMotionGestureFactory
    @@instance = NullUtil.getInstance().NULL_OBJECT
end

