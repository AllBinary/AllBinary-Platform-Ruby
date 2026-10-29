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
# package org.allbinary.input.motion.gesture.observer

require "org/allbinary/input/motion/gesture/observer/MotionGestureEventListener"

class ReleaseControlledMotionGestureListener
    include MotionGestureEventListener
    attr_accessor :logUtil, :commonStrings, :currentMotionGesture, :isMouseGestureOccurring, :motionGestureCollection, :signed

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @currentMotionGesture = TouchMotionGestureFactory.getInstance().NO_MOTION
        @isMouseGestureOccurring = false
        @motionGestureCollection = BasicArrayListD.new()
        @signed = nil
    end
    

    def initialize(signed)
        initialize_fields
        @logUtil.putF(@commonStrings.START, self, @commonStrings.CONSTRUCTOR)
        @signed = signed
    end
    

    def onEvent(eventObject)
        ForcedLogUtil.log(@commonStrings.NOT_IMPLEMENTED, self)
    end
    

    def onUpMotionGestureEvent(ev)
        self.onMotionGestureEvent(ev)
    end
    

    def onDownMotionGestureEvent(ev)
        self.onMotionGestureEvent(ev)
    end
    

    def onLeftMotionGestureEvent(ev)
        self.onMotionGestureEvent(ev)
    end
    

    def onRightMotionGestureEvent(ev)
        self.onMotionGestureEvent(ev)
    end
    

    def onDiagonalDownRightMotionGestureEvent(ev)
        self.onMotionGestureEvent(ev)
    end
    

    def onDiagonalDownLeftMotionGestureEvent(ev)
        self.onMotionGestureEvent(ev)
    end
    

    def onDiagonalUpRightMotionGestureEvent(ev)
        self.onMotionGestureEvent(ev)
    end
    

    def onDiagonalUpLeftMotionGestureEvent(ev)
        self.onMotionGestureEvent(ev)
    end
    

    def onPressedMotionGestureEvent(ev)
        @isMouseGestureOccurring = true
        @currentMotionGesture = TouchMotionGestureFactory.getInstance().NO_MOTION
        self.onMotionGestureEvent(ev)
    end
    

    def onScrolledMotionGestureEvent(motionGestureEvent)
    end
    

    def released(ev)
        begin
            if @isMouseGestureOccurring == false
                return
            end
            @isMouseGestureOccurring = false
            @signed.onMotionGestureCompleted(@motionGestureCollection)
            @motionGestureCollection.clear()
        rescue StandardError => e
            @logUtil.put(StringMaker.new().append(@commonStrings.EXCEPTION_LABEL).append(StringUtil.getInstance().toString(ev.getMotionGesture())).to_s, self, "release", e)
        end
    end
    

    def onMotionGestureEvent(ev)
        if @isMouseGestureOccurring == false
            return
        end
        motionGestureInput = ev.getMotionGesture()
        if motionGestureInput == TouchMotionGestureFactory.getInstance().PRESSED
            self.onPressedMotionGestureEvent(ev)
        elsif motionGestureInput == TouchMotionGestureFactory.getInstance().RELEASED
            self.released(ev)
        else
            if @currentMotionGesture != motionGestureInput
                @currentMotionGesture = motionGestureInput
                @motionGestureCollection.add(ev.getMotionGesture())
            end
        end
    end
end

require "org/allbinary/input/motion/gesture/MotionGestureInput"
require "org/allbinary/input/motion/gesture/TouchMotionGestureFactory"
require "org/allbinary/logic/communication/log/ForcedLogUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/logic/util/event/AllBinaryEventObject"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/input/motion/gesture/observer/CompleteMotionGestureListenerInterface"
require "org/allbinary/input/motion/gesture/observer/MotionGestureEvent"

