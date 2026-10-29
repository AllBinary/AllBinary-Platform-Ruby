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


class MotionGestureRecognizer
    attr_accessor :logUtil, :j2seMath, :origin, :previous, :intermediate, :line, :motionGesturesHandler, :movedMotionGesturesHandler, :scrolledMotionGesturesHandler, :motionEventCircularPool

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @j2seMath = J2SEMath.getInstance()
        @origin = PointFactory.getInstance().ZERO_ZERO
        @previous = @origin
        @intermediate = @origin
        @line = Line.new(@origin, @origin)
        @motionGesturesHandler = nil
        @movedMotionGesturesHandler = nil
        @scrolledMotionGesturesHandler = nil
        @motionEventCircularPool = nil
    end
    

    def initialize(id)
        initialize_fields
        @motionEventCircularPool = MotionEventCircularPool.createPool(id)
        motionGesturesHandler = BasicEventHandler.new()
        movedMotionGesturesHandler = motionGesturesHandler
        scrolledMotionGesturesHandler = motionGesturesHandler
        begin
            motionGesturesHandler = BasicMotionGesturesHandler.getInstance()
            movedMotionGesturesHandler = MovedMotionGesturesHandler.getInstance()
            scrolledMotionGesturesHandler = ScrolledMotionGesturesHandler.getInstance()
        rescue StandardError => e
            commonStrings = CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.CONSTRUCTOR, e)
        end
        @motionGesturesHandler = motionGesturesHandler
        @movedMotionGesturesHandler = movedMotionGesturesHandler
        @scrolledMotionGesturesHandler = scrolledMotionGesturesHandler
    end
    

    # throws Exception
    def processPressedMotionEvent(current, deviceId, button)
        @intermediate = @origin
        @previous = @origin
        event = @motionEventCircularPool.getInstance(TouchMotionGestureFactory.getInstance().PRESSED)
        event.setPreviousPoint(@previous)
        event.setCurrentPoint(current)
        @motionGesturesHandler.fireEvent(event)
        return true
    end
    

    # throws Exception
    def processReleasedMotionEvent(current, deviceId, button)
        event = @motionEventCircularPool.getInstance(TouchMotionGestureFactory.getInstance().RELEASED)
        event.setPreviousPoint(@previous)
        event.setCurrentPoint(current)
        @motionGesturesHandler.fireEvent(event)
        return true
    end
    

    # throws Exception
    def processDraggedMotionEvent(current, deviceId, buttonMask)
        if @previous == @origin || @intermediate == @origin
            @previous = current
            @intermediate = current
            return
        end
        @line.setP1(@previous)
        @line.setP2(current)
        minimumMotionGesture = MotionGestureConfigurationFactory.getInstance().getMinimumMotionGesture()
        if @j2seMath.abs((@line.getDeltaX()).to_f) < minimumMotionGesture && @j2seMath.abs((@line.getDeltaY()).to_f) < minimumMotionGesture
            @intermediate = current
            return
        end
        gradient = @line.getGradient()
        absGradient = (@j2seMath.abs(gradient)).to_f
        conf = MotionGestureConfigurationFactory.getInstance()
        touchMotionGestureFactory = TouchMotionGestureFactory.getInstance()
        newMotionGesture = touchMotionGestureFactory.NO_MOTION
        diagonalToleranceHigher = 12.0
        diagonalToleranceLower = 12.0
        if conf.isDiagonalMotionGestureAllowed()
            diagonalToleranceHigher = ((90 - conf.getDiagonalTolerance())).to_f
            diagonalToleranceLower = (conf.getDiagonalTolerance()).to_f
        end
        if absGradient > Math.tan(((diagonalToleranceHigher) * Math::PI / 180))
            if @line.getDeltaY() > 0
                newMotionGesture = touchMotionGestureFactory.UP
            else
                newMotionGesture = touchMotionGestureFactory.DOWN
            end
        else
            if absGradient < Math.tan(((diagonalToleranceLower) * Math::PI / 180))
                if @line.getDeltaX() > 0
                    newMotionGesture = touchMotionGestureFactory.LEFT
                else
                    newMotionGesture = touchMotionGestureFactory.RIGHT
                end
            else
                if gradient > 0.0
                    if @line.getDeltaX() > 0
                        newMotionGesture = touchMotionGestureFactory.DIAGONAL_UP_LEFT
                    else
                        newMotionGesture = touchMotionGestureFactory.DIAGONAL_DOWN_RIGHT
                    end
                else
                    if @line.getDeltaX() > 0
                        newMotionGesture = touchMotionGestureFactory.DIAGONAL_DOWN_LEFT
                    else
                        newMotionGesture = touchMotionGestureFactory.DIAGONAL_UP_RIGHT
                    end
                end
            end
        end
        @previous = current
        @intermediate = current
        event = @motionEventCircularPool.getInstance(newMotionGesture)
        event.setPreviousPoint(@previous)
        event.setCurrentPoint(current)
        @motionGesturesHandler.fireEvent(event)
        return
    end
    

    # throws Exception
    def processMovedMotionEvent(current, deviceId, button)
        event = @motionEventCircularPool.getInstance(TouchMotionGestureFactory.getInstance().NO_MOTION)
        event.setPreviousPoint(@previous)
        event.setCurrentPoint(current)
        @movedMotionGesturesHandler.fireEvent(event)
        return true
    end
    

    # throws Exception
    def processScrolledMotionEvent(current, deviceId, button)
        touchMotionGestureFactory = TouchMotionGestureFactory.getInstance()
        newMotionGesture = touchMotionGestureFactory.NO_MOTION
        if button > 0
            newMotionGesture = touchMotionGestureFactory.SCROLL_UP
        elsif button < 0
            newMotionGesture = touchMotionGestureFactory.SCROLL_DOWN
        end
        event = @motionEventCircularPool.getInstance(newMotionGesture)
        event.setPreviousPoint(@previous)
        event.setCurrentPoint(current)
        @scrolledMotionGesturesHandler.fireEvent(event)
        return true
    end
    

    def getMotionGesturesHandler()
        return @motionGesturesHandler
    end
end

require "org/allbinary/graphics/GPoint"
require "org/allbinary/graphics/Line"
require "org/allbinary/graphics/PointFactory"
require "org/allbinary/input/motion/gesture/configuration/MotionGestureConfiguration"
require "org/allbinary/input/motion/gesture/configuration/MotionGestureConfigurationFactory"
require "org/allbinary/input/motion/gesture/observer/BasicMotionGesturesHandler"
require "org/allbinary/input/motion/gesture/observer/MotionEventCircularPool"
require "org/allbinary/input/motion/gesture/observer/MotionGestureEvent"
require "org/allbinary/input/motion/gesture/observer/MovedMotionGesturesHandler"
require "org/allbinary/input/motion/gesture/observer/ScrolledMotionGesturesHandler"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/math/J2SEMath"
require "org/allbinary/logic/util/event/handler/BasicEventHandler"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/input/motion/gesture/MotionGestureInput"
require "org/allbinary/input/motion/gesture/TouchMotionGestureFactory"

