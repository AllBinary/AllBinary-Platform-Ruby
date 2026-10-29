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
# package org.allbinary.game.input.motion.action

require "org/allbinary/game/input/CompleteMotionGestureInputEventListener"

class SingleKeyPressGameKeyFromMotionGestureEventListener < CompleteMotionGestureInputEventListener
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end

    def initialize
        super()
        initialize_fields
    end
    

    def onEvent(eventObject)
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, self)
    end
    

    def onCompleteMotionGestureInputEvent(completeMotionGestureInputEvent)
        begin
            gameKeyCompleteMotionGestureInputEvent = completeMotionGestureInputEvent
            gameKeyEvent = gameKeyCompleteMotionGestureInputEvent.getGameKeyEvent()
            PressGameKeyEventHandler.getInstance().fireEvent(gameKeyEvent)
        rescue StandardError => e
            commonStrings = CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, "onCompleteMotionGestureInputEvent", e)
        end
    end
end

require "org/allbinary/game/input/CompleteMotionGestureInputEvent"
require "org/allbinary/game/input/event/GameKeyEvent"
require "org/allbinary/game/input/event/PressGameKeyEventHandler"
require "org/allbinary/logic/communication/log/ForcedLogUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/util/event/AllBinaryEventObject"
require "org/allbinary/logic/util/event/EventStrings"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/game/input/motion/action/GameKeyCompleteMotionGestureInputEvent"

