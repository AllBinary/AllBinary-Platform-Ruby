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

class GameKeyFromMotionGestureEventListener < CompleteMotionGestureInputEventListener
    attr_accessor :logUtil, :previousGameKeyEvent

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @previousGameKeyEvent = GameKeyEvent::NONE
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
            if gameKeyEvent != @previousGameKeyEvent
                if @previousGameKeyEvent != GameKeyEvent::NONE
                    UpGameKeyEventHandler.getInstance().fireEvent(@previousGameKeyEvent)
                end
                @previousGameKeyEvent = gameKeyEvent
                if gameKeyEvent != nil && gameKeyEvent != GameKeyEvent::NONE
                    DownGameKeyEventHandler.getInstance().fireEvent(gameKeyEvent)
                end
            end
        rescue StandardError => e
            commonStrings = CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, "onCompleteMotionGestureInputEvent", e)
        end
    end
end

autoload :CompleteMotionGestureInputEvent, "org/allbinary/game/input/CompleteMotionGestureInputEvent"
autoload :DownGameKeyEventHandler, "org/allbinary/game/input/event/DownGameKeyEventHandler"
autoload :GameKeyEvent, "org/allbinary/game/input/event/GameKeyEvent"
autoload :UpGameKeyEventHandler, "org/allbinary/game/input/event/UpGameKeyEventHandler"
autoload :ForcedLogUtil, "org/allbinary/logic/communication/log/ForcedLogUtil"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :AllBinaryEventObject, "org/allbinary/logic/util/event/AllBinaryEventObject"
autoload :EventStrings, "org/allbinary/logic/util/event/EventStrings"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :GameKeyCompleteMotionGestureInputEvent, "org/allbinary/game/input/motion/action/GameKeyCompleteMotionGestureInputEvent"

