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
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/graphics/GPoint"
require "org/allbinary/graphics/PointFactory"
require "org/allbinary/input/motion/gesture/observer/MotionEventCircularPool"
require "org/allbinary/input/motion/gesture/observer/MotionGestureEvent"

class MirrorMotionGestureEventUtil
    @@instance = MirrorMotionGestureEventUtil.new()
end

