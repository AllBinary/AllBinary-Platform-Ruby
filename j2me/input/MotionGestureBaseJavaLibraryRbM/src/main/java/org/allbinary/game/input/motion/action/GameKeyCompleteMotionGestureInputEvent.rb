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
    attr_accessor :gameKeyEventFactory, :SOURCE_ID, :gameKey, :gameKeyEvent, :inputToGameKeyMapping

    def jfields_org_allbinary_game_input_motion_action_GameKeyCompleteMotionGestureInputEvent
        @gameKeyEventFactory = ::Org::Allbinary::Game::Input::Event::GameKeyEventFactory.getInstance()
        @SOURCE_ID = @gameKeyEventFactory.MOTION_GESTURE_SOURCE_ID
        @gameKey = ::Org::Allbinary::Game::Input::GameKey::NULL_GAME_KEY
        @gameKeyEvent = ::Org::Allbinary::Game::Input::Event::GameKeyEvent::NONE
        @inputToGameKeyMapping = nil unless instance_variable_defined?(:@inputToGameKeyMapping)
    end
    

    def initialize(name, motionGestureInput, inputToGameKeyMapping)
        super(name, motionGestureInput)
        jfields_org_allbinary_game_input_motion_action_GameKeyCompleteMotionGestureInputEvent
        @inputToGameKeyMapping = inputToGameKeyMapping
        GameKeyCompleteMotionGestureInputEventFactory.getInstance().add(self)
        self.update()
    end
    

    def getSourceId()
        return @SOURCE_ID
    end
    java_overload :getSourceId, 0
    

    def update()
        begin
            self.setGameKey(@inputToGameKeyMapping.getInstance(self.getMotionGestureInput().getId()))
            self.setGameKeyEvent(@gameKeyEventFactory.getInstanceForInput(self, self.getGameKey()))
        rescue StandardError => e
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.UPDATE, e)
        end
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
module ::Org; module Allbinary; module Game; module Input; module Event; autoload :GameKeyEventFactory, "org/allbinary/game/input/event/GameKeyEventFactory" unless const_defined?(:GameKeyEventFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Input; module Mapping; autoload :InputToGameKeyMapping, "org/allbinary/game/input/mapping/InputToGameKeyMapping" unless const_defined?(:InputToGameKeyMapping, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Gesture; autoload :MotionGestureInput, "org/allbinary/input/motion/gesture/MotionGestureInput" unless const_defined?(:MotionGestureInput, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :GameKeyCompleteMotionGestureInputEventFactory, "org/allbinary/game/input/motion/action/GameKeyCompleteMotionGestureInputEventFactory" unless const_defined?(:GameKeyCompleteMotionGestureInputEventFactory, false)

end; end; end; end; end; end

