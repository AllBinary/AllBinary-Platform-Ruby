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

require "org/allbinary/game/input/CompleteMotionGestureInputEvent"
require "org/allbinary/game/input/GameKeyEventSourceInterface"

class GameKeyCompleteMotionGestureInputEvent < CompleteMotionGestureInputEvent
    include GameKeyEventSourceInterface
    attr_accessor :gameKeyEventFactory, :SOURCE_ID, :gameKey, :gameKeyEvent, :inputToGameKeyMapping

    def initialize_fields
        @gameKeyEventFactory = GameKeyEventFactory.getInstance()
        @SOURCE_ID = @gameKeyEventFactory.MOTION_GESTURE_SOURCE_ID
        @gameKey = GameKey::NULL_GAME_KEY
        @gameKeyEvent = GameKeyEvent::NONE
        @inputToGameKeyMapping = nil
    end
    

    def initialize(name, motionGestureInput, inputToGameKeyMapping)
        super(name, motionGestureInput)
        initialize_fields
        @inputToGameKeyMapping = inputToGameKeyMapping
        GameKeyCompleteMotionGestureInputEventFactory.getInstance().add(self)
        self.update()
    end
    

    def getSourceId()
        return @SOURCE_ID
    end
    

    def update()
        begin
            self.setGameKey(@inputToGameKeyMapping.getInstance(self.getMotionGestureInput().getId()))
            self.setGameKeyEvent(@gameKeyEventFactory.getInstanceForInput(self, self.getGameKey()))
        rescue StandardError => e
            commonStrings = CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.UPDATE, e)
        end
    end
    

    def setGameKeyEvent(gameKeyEvent)
        @gameKeyEvent = gameKeyEvent
    end
    

    def getGameKeyEvent()
        return @gameKeyEvent
    end
    

    def setGameKey(gameKey)
        @gameKey = gameKey
    end
    

    def getGameKey()
        return @gameKey
    end
end

require "org/allbinary/game/input/GameKey"
require "org/allbinary/game/input/event/GameKeyEvent"
require "org/allbinary/game/input/event/GameKeyEventFactory"
require "org/allbinary/game/input/mapping/InputToGameKeyMapping"
require "org/allbinary/input/motion/gesture/MotionGestureInput"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/game/input/motion/action/GameKeyCompleteMotionGestureInputEventFactory"

