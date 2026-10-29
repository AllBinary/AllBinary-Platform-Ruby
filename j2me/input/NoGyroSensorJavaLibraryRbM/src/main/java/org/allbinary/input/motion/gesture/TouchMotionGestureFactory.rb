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


class TouchMotionGestureFactory
    attr_accessor :LEFT, :RIGHT, :UP, :DOWN, :PRESSED, :RELEASED, :DIAGONAL_DOWN_RIGHT, :DIAGONAL_DOWN_LEFT, :DIAGONAL_UP_RIGHT, :DIAGONAL_UP_LEFT, :SCROLL_UP, :SCROLL_DOWN, :NO_MOTION, :LAST_MOTION

    def initialize_fields
        @LEFT = nil
        @RIGHT = nil
        @UP = nil
        @DOWN = nil
        @PRESSED = nil
        @RELEASED = nil
        @DIAGONAL_DOWN_RIGHT = nil
        @DIAGONAL_DOWN_LEFT = nil
        @DIAGONAL_UP_RIGHT = nil
        @DIAGONAL_UP_LEFT = nil
        @SCROLL_UP = nil
        @SCROLL_DOWN = nil
        @NO_MOTION = nil
        @LAST_MOTION = nil
    end
    

    def self.getInstance()
        if TouchMotionGestureFactory.instance == NullUtil.getInstance().NULL_OBJECT
            TouchMotionGestureFactory.instance = TouchMotionGestureFactory.new()
        end
        return TouchMotionGestureFactory.instance
    end
    

    def initialize()
        initialize_fields
        _MAX = InputFactory.getInstance().MAX
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
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/game/input/InputFactory"
require "org/allbinary/logic/NullUtil"
require "org/allbinary/input/motion/gesture/MotionGestureInput"

class TouchMotionGestureFactory
    @@instance = NullUtil.getInstance().NULL_OBJECT
end

