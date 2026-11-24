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

class MotionGestureRecognizer
    attr_accessor :logUtil, :j2seMath, :origin, :previous, :intermediate, :line, :motionGesturesHandler, :movedMotionGesturesHandler, :scrolledMotionGesturesHandler, :motionEventCircularPool

    def jfields_org_allbinary_input_motion_gesture_MotionGestureRecognizer
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @j2seMath = ::Org::Allbinary::Logic::MathPackage::J2SEMath.getInstance()
        @origin = ::Org::Allbinary::Graphics::PointFactory.getInstance().ZERO_ZERO
        @previous = @origin
        @intermediate = @origin
        @line = ::Org::Allbinary::Graphics::Line.new(@origin, @origin)
        @motionGesturesHandler = nil unless instance_variable_defined?(:@motionGesturesHandler)
        @movedMotionGesturesHandler = nil unless instance_variable_defined?(:@movedMotionGesturesHandler)
        @scrolledMotionGesturesHandler = nil unless instance_variable_defined?(:@scrolledMotionGesturesHandler)
        @motionEventCircularPool = nil unless instance_variable_defined?(:@motionEventCircularPool)
    end
    

    def initialize(id)
        jfields_org_allbinary_input_motion_gesture_MotionGestureRecognizer
        @motionEventCircularPool = ::Org::Allbinary::Input::Motion::Gesture::Observer::MotionEventCircularPool.createPool(id)
        motionGesturesHandler = ::Org::Allbinary::Logic::Util::Event::Handler::BasicEventHandler.new()
        movedMotionGesturesHandler = motionGesturesHandler
        scrolledMotionGesturesHandler = motionGesturesHandler
        begin
            motionGesturesHandler = ::Org::Allbinary::Input::Motion::Gesture::Observer::BasicMotionGesturesHandler.getInstance()
            movedMotionGesturesHandler = ::Org::Allbinary::Input::Motion::Gesture::Observer::MovedMotionGesturesHandler.getInstance()
            scrolledMotionGesturesHandler = ::Org::Allbinary::Input::Motion::Gesture::Observer::ScrolledMotionGesturesHandler.getInstance()
        rescue StandardError => e
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
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
        minimumMotionGesture = ::Org::Allbinary::Input::Motion::Gesture::Configuration::MotionGestureConfigurationFactory.getInstance().getMinimumMotionGesture()
        if @j2seMath.abs((@line.getDeltaX()).to_f) < minimumMotionGesture && @j2seMath.abs((@line.getDeltaY()).to_f) < minimumMotionGesture
            @intermediate = current
            return
        end
        gradient = @line.getGradient()
        absGradient = (@j2seMath.abs(gradient)).to_f
        conf = ::Org::Allbinary::Input::Motion::Gesture::Configuration::MotionGestureConfigurationFactory.getInstance()
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

module ::Org; module Allbinary; module Graphics; autoload :GPoint, "org/allbinary/graphics/GPoint" unless const_defined?(:GPoint, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :Line, "org/allbinary/graphics/Line" unless const_defined?(:Line, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :PointFactory, "org/allbinary/graphics/PointFactory" unless const_defined?(:PointFactory, false); end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Gesture; module Configuration; autoload :MotionGestureConfiguration, "org/allbinary/input/motion/gesture/configuration/MotionGestureConfiguration" unless const_defined?(:MotionGestureConfiguration, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Gesture; module Configuration; autoload :MotionGestureConfigurationFactory, "org/allbinary/input/motion/gesture/configuration/MotionGestureConfigurationFactory" unless const_defined?(:MotionGestureConfigurationFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Gesture; module Observer; autoload :BasicMotionGesturesHandler, "org/allbinary/input/motion/gesture/observer/BasicMotionGesturesHandler" unless const_defined?(:BasicMotionGesturesHandler, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Gesture; module Observer; autoload :MotionEventCircularPool, "org/allbinary/input/motion/gesture/observer/MotionEventCircularPool" unless const_defined?(:MotionEventCircularPool, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Gesture; module Observer; autoload :MotionGestureEvent, "org/allbinary/input/motion/gesture/observer/MotionGestureEvent" unless const_defined?(:MotionGestureEvent, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Gesture; module Observer; autoload :MovedMotionGesturesHandler, "org/allbinary/input/motion/gesture/observer/MovedMotionGesturesHandler" unless const_defined?(:MovedMotionGesturesHandler, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Gesture; module Observer; autoload :ScrolledMotionGesturesHandler, "org/allbinary/input/motion/gesture/observer/ScrolledMotionGesturesHandler" unless const_defined?(:ScrolledMotionGesturesHandler, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :J2SEMath, "org/allbinary/logic/math/J2SEMath" unless const_defined?(:J2SEMath, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; module Handler; autoload :BasicEventHandler, "org/allbinary/logic/util/event/handler/BasicEventHandler" unless const_defined?(:BasicEventHandler, false); end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :MotionGestureInput, "org/allbinary/input/motion/gesture/MotionGestureInput" unless const_defined?(:MotionGestureInput, false)
autoload :TouchMotionGestureFactory, "org/allbinary/input/motion/gesture/TouchMotionGestureFactory" unless const_defined?(:TouchMotionGestureFactory, false)

end; end; end; end; end

