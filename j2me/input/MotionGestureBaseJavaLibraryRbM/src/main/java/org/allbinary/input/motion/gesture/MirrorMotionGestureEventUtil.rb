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


class MirrorMotionGestureEventUtil
    attr_accessor :motionEventCircularPool

    def initialize_fields
        @motionEventCircularPool = nil
    end
    

    def initialize()
        initialize_fields
        @motionEventCircularPool = MotionEventCircularPool.createPool(2147483647)
    end
    

    # throws Exception
    def mirrorVerticle(motionGestureEvent, halfWidth)
        event = @motionEventCircularPool.getInstance(motionGestureEvent.getMotionGesture())
        previousNewX = self.getNewX(motionGestureEvent.getPreviousPoint().getX(), halfWidth)
        currentNewX = self.getNewX(motionGestureEvent.getCurrentPoint().getX(), halfWidth)
        pointFactory = PointFactory.getInstance()
        mirroredPreviousPoint = pointFactory.createXY(previousNewX, motionGestureEvent.getPreviousPoint().getY())
        mirroredCurrentPoint = pointFactory.createXY(currentNewX, motionGestureEvent.getCurrentPoint().getY())
        event.setPreviousPoint(mirroredPreviousPoint)
        event.setCurrentPoint(mirroredCurrentPoint)
        return event
    end
    

    def getNewX(x, halfWidth)
        newX = 0
        if x > halfWidth
            newX = halfWidth - (x - halfWidth)
        else
            newX = halfWidth + (halfWidth - x)
        end
        return newX
    end
    

    def self.getInstance()
        return MirrorMotionGestureEventUtil.instance
    end

    def self.instance()
        MirrorMotionGestureEventUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        MirrorMotionGestureEventUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = MirrorMotionGestureEventUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "MirrorMotionGestureEventUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :GPoint, "org/allbinary/graphics/GPoint"
autoload :PointFactory, "org/allbinary/graphics/PointFactory"
autoload :MotionEventCircularPool, "org/allbinary/input/motion/gesture/observer/MotionEventCircularPool"
autoload :MotionGestureEvent, "org/allbinary/input/motion/gesture/observer/MotionGestureEvent"

begin
    MirrorMotionGestureEventUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

