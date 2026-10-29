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
    attr_accessor :gameKey, :gameKeyEvent

    def initialize_fields
        @gameKey = GameKey::NULL_GAME_KEY
        @gameKeyEvent = GameKeyEvent::NONE
    end
    

    def initialize(name, motionGestureInput, inputToGameKeyMapping)
        super(name, motionGestureInput)
        initialize_fields
    end
    

    def getSourceId()
        return 0
    end
    

    def update()
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
require "org/allbinary/game/input/mapping/InputToGameKeyMapping"
require "org/allbinary/input/motion/gesture/MotionGestureInput"

