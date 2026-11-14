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
        GestureOnlyMotionRecognizer.java_static_fields unless @java_static_fields_started
        return defined?(@@index) ? @@index : nil
    end

    def self.index=(value)
        GestureOnlyMotionRecognizer.java_static_fields unless @java_static_fields_started
        @@index = value
    end

    def self.pointCircularPool()
        GestureOnlyMotionRecognizer.java_static_fields unless @java_static_fields_started
        return defined?(@@pointCircularPool) ? @@pointCircularPool : nil
    end

    def self.pointCircularPool=(value)
        GestureOnlyMotionRecognizer.java_static_fields unless @java_static_fields_started
        @@pointCircularPool = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        @@index = 0
        begin
            @@pointCircularPool = GPointCircularPool.new(40)
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "GestureOnlyMotionRecognizer"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :CustomGPoint, "org/allbinary/graphics/CustomGPoint"
autoload :GPointCircularPool, "org/allbinary/graphics/GPointCircularPool"
autoload :MotionGestureRecognizer, "org/allbinary/input/motion/gesture/MotionGestureRecognizer"

begin
    GestureOnlyMotionRecognizer.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

