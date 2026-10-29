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
# package org.allbinary.input.motion

require "org/allbinary/input/motion/MotionRecognizer"

class GestureOnlyMotionRecognizer < MotionRecognizer
    attr_accessor :motionGestureRecognizer, :id

    def initialize_fields
        @motionGestureRecognizer = nil
        @id = nil
    end
    

    def initialize()
        super()
        initialize_fields
        @id = ((GestureOnlyMotionRecognizer.index += 1) - 1)
        @motionGestureRecognizer = MotionGestureRecognizer.new(@id)
    end
    

    # throws Exception
    def processStartMotionEvent(x, y, deviceId, modifiers)
        point = GestureOnlyMotionRecognizer.pointCircularPool.getNextInstance()
        point.setX(x)
        point.setY(y)
        @motionGestureRecognizer.processPressedMotionEvent(point, deviceId, modifiers)
    end
    

    # throws Exception
    def processEndMotionEvent(x, y, deviceId, modifiers)
        point = GestureOnlyMotionRecognizer.pointCircularPool.getNextInstance()
        point.setX(x)
        point.setY(y)
        @motionGestureRecognizer.processReleasedMotionEvent(point, deviceId, modifiers)
    end
    

    # throws Exception
    def processDraggedMotionEvent(x, y, deviceId, modifiers)
        point = GestureOnlyMotionRecognizer.pointCircularPool.getNextInstance()
        point.setX(x)
        point.setY(y)
        @motionGestureRecognizer.processDraggedMotionEvent(point, deviceId, modifiers)
    end

    def self.index()
        return defined?(@@index) ? @@index : nil
    end

    def self.index=(value)
        @@index = value
    end

    def self.pointCircularPool()
        return defined?(@@pointCircularPool) ? @@pointCircularPool : nil
    end

    def self.pointCircularPool=(value)
        @@pointCircularPool = value
    end
end

require "org/allbinary/graphics/CustomGPoint"
require "org/allbinary/graphics/GPointCircularPool"
require "org/allbinary/input/motion/gesture/MotionGestureRecognizer"

class GestureOnlyMotionRecognizer
    @@index = 0
    @@pointCircularPool = GPointCircularPool.new(40)
end

