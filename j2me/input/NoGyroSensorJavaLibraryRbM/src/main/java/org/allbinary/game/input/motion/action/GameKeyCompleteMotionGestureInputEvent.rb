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

require "java/lang/JavaOverload"
require "org/allbinary/game/input/CompleteMotionGestureInputEvent"
require "org/allbinary/game/input/GameKeyEventSourceInterface"

module ::Org; module Allbinary; module Game; module Input; module Motion; module Action

class GameKeyCompleteMotionGestureInputEvent < ::Org::Allbinary::Game::Input::CompleteMotionGestureInputEvent
    include ::Org::Allbinary::Game::Input::GameKeyEventSourceInterface
    attr_accessor :gameKey, :gameKeyEvent

    def jfields_org_allbinary_game_input_motion_action_GameKeyCompleteMotionGestureInputEvent
        @gameKey = ::Org::Allbinary::Game::Input::GameKey::NULL_GAME_KEY
        @gameKeyEvent = ::Org::Allbinary::Game::Input::Event::GameKeyEvent::NONE
    end
    

    def initialize(name, motionGestureInput, inputToGameKeyMapping)
        super(name, motionGestureInput)
        jfields_org_allbinary_game_input_motion_action_GameKeyCompleteMotionGestureInputEvent
    end
    

    def getSourceId()
        return 0
    end
    java_overload :getSourceId, 0
    

    def update()
    end
    java_overload :update, 0
    

    def setGameKeyEvent(gameKeyEvent)
        @gameKeyEvent = gameKeyEvent
    end
    java_overload :setGameKeyEvent, 1
    

    def getGameKeyEvent()
        return @gameKeyEvent
    end
    java_overload :getGameKeyEvent, 0
    

    def setGameKey(gameKey)
        @gameKey = gameKey
    end
    java_overload :setGameKey, 1
    

    def getGameKey()
        return @gameKey
    end
    java_overload :getGameKey, 0
end

module ::Org; module Allbinary; module Game; module Input; autoload :GameKey, "org/allbinary/game/input/GameKey" unless const_defined?(:GameKey, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Input; module Event; autoload :GameKeyEvent, "org/allbinary/game/input/event/GameKeyEvent" unless const_defined?(:GameKeyEvent, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Input; module Mapping; autoload :InputToGameKeyMapping, "org/allbinary/game/input/mapping/InputToGameKeyMapping" unless const_defined?(:InputToGameKeyMapping, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Gesture; autoload :MotionGestureInput, "org/allbinary/input/motion/gesture/MotionGestureInput" unless const_defined?(:MotionGestureInput, false); end; end; end; end; end

end; end; end; end; end; end

