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
# package org.allbinary.input.motion.button

require "org/allbinary/game/input/CompleteMotionGestureInputEventListenerInterface"
require "org/allbinary/graphics/paint/ProcessPaintable"

class TouchButtonsPaintableComposite < ProcessPaintable
    include CompleteMotionGestureInputEventListenerInterface
    attr_accessor :logUtil, :commonStrings, :inputMappingInterface, :touchButtonsPaintable, :timeHelper, :released, :METHOD_NAME, :RELEASE, :FAST_REPEAT, :IGNORE

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @inputMappingInterface = nil
        @touchButtonsPaintable = nil
        @timeHelper = TimeDelayHelper.new(250)
        @released = true
        @METHOD_NAME = "onCompleteMotionGestureInputEvent"
        @RELEASE = "Ignoring: MotionGestureInput Release"
        @FAST_REPEAT = "Ignoring: MotionGestureInput Repeated To Quickly"
        @IGNORE = "Ignoring: Until Released"
    end
    

    def initialize(inputMappingInterface, basicColor)
        super()
        initialize_fields
        @inputMappingInterface = inputMappingInterface
        CompleteMotionGestureInputEventHandler.getInstance().addListenerInterface(self)
        @touchButtonsPaintable = TouchButtonsMappingPaintable.new(basicColor)
    end
    

    def onEvent(eventObject)
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, self)
    end
    

    def onCompleteMotionGestureInputEvent(completeMotionGestureInputEvent)
        begin
            @logUtil.putF(@commonStrings.START, self, "onCompleteMotionGestureInputEvent")
            touchMotionGestureFactory = TouchMotionGestureFactory.getInstance()
            gameKeyCompleteMotionGestureInputEvent = completeMotionGestureInputEvent
            gameKey = gameKeyCompleteMotionGestureInputEvent.getGameKey()
            motionGestureInput = completeMotionGestureInputEvent.getMotionGestureInput()
            if motionGestureInput == touchMotionGestureFactory.RELEASED
                @logUtil.putF(@RELEASE, self, @METHOD_NAME)
                @released = true
                return
            end
            if motionGestureInput == TouchMotionGestureFactory.getInstance().NO_MOTION && !@timeHelper.isTimeTNT()
                @logUtil.putF(@FAST_REPEAT, self, @METHOD_NAME)
                return
            end
            if !@released
                @logUtil.putF(@IGNORE, self, @METHOD_NAME)
                return
            end
            @released = false
            @logUtil.putF(StringMaker.new().append("GameKey: ").append(StringUtil.getInstance().toString(gameKey)).append(" MotionGestureInput: ").append(StringUtil.getInstance().toString(motionGestureInput)).to_s, self, @METHOD_NAME)
            @inputMappingInterface.processInputMapping(gameKey, motionGestureInput)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @METHOD_NAME, e)
        end
    end
    

    def process()
        CompleteMotionGestureInputEventHandler.getInstance().removeListener(self)
    end
end

require "org/allbinary/game/input/CompleteMotionGestureInputEvent"
require "org/allbinary/game/input/CompleteMotionGestureInputEventHandler"
require "org/allbinary/game/input/GameKey"
require "org/allbinary/game/input/mapping/InputMappingInterface"
require "org/allbinary/game/input/motion/action/GameKeyCompleteMotionGestureInputEvent"
require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/input/motion/gesture/MotionGestureInput"
require "org/allbinary/input/motion/gesture/TouchMotionGestureFactory"
require "org/allbinary/logic/communication/log/ForcedLogUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/logic/util/event/AllBinaryEventObject"
require "org/allbinary/logic/util/event/EventStrings"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/time/TimeDelayHelper"
require "org/allbinary/input/motion/button/TouchButtonsMappingPaintable"

