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

class GameMotionGestureListener
    include MotionGestureEventListener
    attr_accessor :logUtil, :commonStrings, :motionGestureCollection, :touchGestureCollection, :signed

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @motionGestureCollection = BasicArrayListD.new()
        @touchGestureCollection = BasicArrayListD.new()
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
        @touchGestureCollection.add(ev.getMotionGesture())
    end
    

    def released(ev)
        begin
            @touchGestureCollection.add(ev.getMotionGesture())
            @signed.onMotionGestureCompleted(@touchGestureCollection)
            @touchGestureCollection.clear()
        rescue StandardError => e
            stringBuffer = StringMaker.new()
            stringBuffer.append(@commonStrings.EXCEPTION_LABEL)
            stringBuffer.append(StringUtil.getInstance().toString(ev.getMotionGesture()))
            @logUtil.put(stringBuffer.to_s, self, "release", e)
        end
    end
    

    def onScrolledMotionGestureEvent(motionGestureEvent)
    end
    

    def onMotionGestureEvent(ev)
        begin
            motionGestureInput = ev.getMotionGesture()
            if motionGestureInput == TouchMotionGestureFactory.getInstance().PRESSED
                self.onPressedMotionGestureEvent(ev)
            elsif motionGestureInput == TouchMotionGestureFactory.getInstance().RELEASED
                self.released(ev)
            else
                @motionGestureCollection.add(motionGestureInput)
                @signed.onMotionGestureCompleted(@motionGestureCollection)
                @motionGestureCollection.clear()
                @touchGestureCollection.clear()
            end
        rescue StandardError => e
            stringBuffer = StringMaker.new()
            stringBuffer.append(@commonStrings.EXCEPTION_LABEL)
            stringBuffer.append(StringUtil.getInstance().toString(ev.getMotionGesture()))
            @logUtil.put(stringBuffer.to_s, self, "onMotionGestureEvent", e)
        end
    end
end

autoload :MotionGestureInput, "org/allbinary/input/motion/gesture/MotionGestureInput"
autoload :TouchMotionGestureFactory, "org/allbinary/input/motion/gesture/TouchMotionGestureFactory"
autoload :ForcedLogUtil, "org/allbinary/logic/communication/log/ForcedLogUtil"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :StringUtil, "org/allbinary/logic/string/StringUtil"
autoload :AllBinaryEventObject, "org/allbinary/logic/util/event/AllBinaryEventObject"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"
autoload :CompleteMotionGestureListenerInterface, "org/allbinary/input/motion/gesture/observer/CompleteMotionGestureListenerInterface"
autoload :MotionGestureEvent, "org/allbinary/input/motion/gesture/observer/MotionGestureEvent"

