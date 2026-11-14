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

class AllMotionRecognizer < MotionRecognizer
    attr_accessor :logUtil, :motionGestureRecognizer, :touchButtonProcessing, :touchButtonRecognizer, :id, :lastX, :lastY

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @motionGestureRecognizer = nil
        @touchButtonProcessing = false
        @touchButtonRecognizer = nil
        @id = nil
        @lastX = 0
        @lastY = 0
    end
    

    def initialize()
        super()
        initialize_fields
        @id = ((AllMotionRecognizer.index += 1) - 1)
        @motionGestureRecognizer = MotionGestureRecognizer.new(@id)
        @touchButtonRecognizer = TouchButtonRecognizer.new()
    end
    

    # throws Exception
    def processStartMotionEvent(x, y, deviceId, modifiers)
        if @touchButtonRecognizer.pressTouchButtonInput(x, y, deviceId)
            @touchButtonProcessing = true
        end
        if !@touchButtonProcessing
            point = AllMotionRecognizer.pointCircularPool.getNextInstance()
            point.setX(x)
            point.setY(y)
            @motionGestureRecognizer.processPressedMotionEvent(point, deviceId, modifiers)
        end
    end
    

    # throws Exception
    def processEndMotionEvent(x, y, deviceId, modifiers)
        if @touchButtonRecognizer.releaseTouchButtonInput(x, y, deviceId)
        end
        if !@touchButtonProcessing
            point = AllMotionRecognizer.pointCircularPool.getNextInstance()
            point.setX(x)
            point.setY(y)
            @motionGestureRecognizer.processReleasedMotionEvent(point, deviceId, modifiers)
        end
        if @touchButtonProcessing
            @touchButtonProcessing = false
        end
    end
    

    # throws Exception
    def processDraggedMotionEvent(x, y, deviceId, modifiers)
        if @touchButtonProcessing
            @touchButtonRecognizer.pressTouchButtonInput(x, y, deviceId)
        end
        if !@touchButtonProcessing
            point = AllMotionRecognizer.pointCircularPool.getNextInstance()
            point.setX(x)
            point.setY(y)
            @motionGestureRecognizer.processDraggedMotionEvent(point, deviceId, modifiers)
        end
    end
    

    # throws Exception
    def processMovedMotionEvent(x, y, deviceId, modifiers)
        if x != @lastX || y != @lastY
            @lastX = x
            @lastY = y
            point = AllMotionRecognizer.pointCircularPool.getNextInstance()
            point.setX(x)
            point.setY(y)
            @motionGestureRecognizer.processMovedMotionEvent(point, deviceId, modifiers)
        end
    end
    

    # throws Exception
    def processScrolledMotionEvent(x, y, deviceId, modifiers)
        point = AllMotionRecognizer.pointCircularPool.getNextInstance()
        point.setX(x)
        point.setY(y)
        @motionGestureRecognizer.processScrolledMotionEvent(point, deviceId, modifiers)
    end
    

    def getMotionGestureRecognizer()
        return @motionGestureRecognizer
    end

    def self.index()
        AllMotionRecognizer.java_static_fields unless @java_static_fields_started
        return defined?(@@index) ? @@index : nil
    end

    def self.index=(value)
        AllMotionRecognizer.java_static_fields unless @java_static_fields_started
        @@index = value
    end

    def self.pointCircularPool()
        AllMotionRecognizer.java_static_fields unless @java_static_fields_started
        return defined?(@@pointCircularPool) ? @@pointCircularPool : nil
    end

    def self.pointCircularPool=(value)
        AllMotionRecognizer.java_static_fields unless @java_static_fields_started
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
        if name == "AllMotionRecognizer"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :CustomGPoint, "org/allbinary/graphics/CustomGPoint"
autoload :GPointCircularPool, "org/allbinary/graphics/GPointCircularPool"
autoload :TouchButtonRecognizer, "org/allbinary/input/motion/button/TouchButtonRecognizer"
autoload :MotionGestureRecognizer, "org/allbinary/input/motion/gesture/MotionGestureRecognizer"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"

begin
    AllMotionRecognizer.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

