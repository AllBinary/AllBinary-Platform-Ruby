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

class MirrorMotionGestureEventUtil
    attr_accessor :motionEventCircularPool

    def jfields_org_allbinary_input_motion_gesture_MirrorMotionGestureEventUtil
        @motionEventCircularPool = nil unless instance_variable_defined?(:@motionEventCircularPool)
    end
    

    def initialize()
        jfields_org_allbinary_input_motion_gesture_MirrorMotionGestureEventUtil
        @motionEventCircularPool = ::Org::Allbinary::Input::Motion::Gesture::Observer::MotionEventCircularPool.createPool(2147483647)
    end
    

    # throws Exception
    def mirrorVerticle(motionGestureEvent, halfWidth)
        event = @motionEventCircularPool.getInstance(motionGestureEvent.getMotionGesture())
        previousNewX = self.getNewX(motionGestureEvent.getPreviousPoint().getX(), halfWidth)
        currentNewX = self.getNewX(motionGestureEvent.getCurrentPoint().getX(), halfWidth)
        pointFactory = ::Org::Allbinary::Graphics::PointFactory.getInstance()
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

module ::Org; module Allbinary; module Graphics; autoload :GPoint, "org/allbinary/graphics/GPoint" unless const_defined?(:GPoint, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :PointFactory, "org/allbinary/graphics/PointFactory" unless const_defined?(:PointFactory, false); end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Gesture; module Observer; autoload :MotionEventCircularPool, "org/allbinary/input/motion/gesture/observer/MotionEventCircularPool" unless const_defined?(:MotionEventCircularPool, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Gesture; module Observer; autoload :MotionGestureEvent, "org/allbinary/input/motion/gesture/observer/MotionGestureEvent" unless const_defined?(:MotionGestureEvent, false); end; end; end; end; end; end

begin
    MirrorMotionGestureEventUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

