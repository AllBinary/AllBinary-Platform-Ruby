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


class OrientationMotionGestureFactory
    attr_accessor :LEFT, :RIGHT, :UP, :DOWN, :ROLL_LEFT, :ROLL_RIGHT

    def initialize_fields
        @LEFT = nil
        @RIGHT = nil
        @UP = nil
        @DOWN = nil
        @ROLL_LEFT = nil
        @ROLL_RIGHT = nil
    end
    

    def self.getInstance()
        if OrientationMotionGestureFactory.instance == NullUtil.getInstance().NULL_OBJECT
            OrientationMotionGestureFactory.instance = OrientationMotionGestureFactory.new()
        end
        return OrientationMotionGestureFactory.instance
    end
    

    def initialize()
        initialize_fields
        _MAX = InputFactory.getInstance().MAX
        @LEFT = MotionGestureInput.new(_MAX - 20, "Left Orient")
        @RIGHT = MotionGestureInput.new(_MAX - 21, "Right Orient")
        @UP = MotionGestureInput.new(_MAX - 22, "Up Orient")
        @DOWN = MotionGestureInput.new(_MAX - 23, "Down Orient")
        @ROLL_LEFT = MotionGestureInput.new(_MAX - 24, "Roll Left")
        @ROLL_RIGHT = MotionGestureInput.new(_MAX - 25, "Roll Right")
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/game/input/InputFactory"
require "org/allbinary/input/motion/gesture/MotionGestureInput"
require "org/allbinary/logic/NullUtil"

class OrientationMotionGestureFactory
    @@instance = NullUtil.getInstance().NULL_OBJECT
end

