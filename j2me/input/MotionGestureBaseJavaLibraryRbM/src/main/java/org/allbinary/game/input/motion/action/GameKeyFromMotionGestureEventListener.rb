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
require "org/allbinary/game/input/CompleteMotionGestureInputEventListener"

module ::Org; module Allbinary; module Game; module Input; module Motion; module Action

class GameKeyFromMotionGestureEventListener < ::Org::Allbinary::Game::Input::CompleteMotionGestureInputEventListener
    attr_accessor :logUtil, :previousGameKeyEvent

    def jfields_org_allbinary_game_input_motion_action_GameKeyFromMotionGestureEventListener
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @previousGameKeyEvent = ::Org::Allbinary::Game::Input::Event::GameKeyEvent::NONE
    end

    def initialize
        super()
        jfields_org_allbinary_game_input_motion_action_GameKeyFromMotionGestureEventListener
    end
    

    def onEvent(eventObject)
        ::Org::Allbinary::Logic::Communication::Log::ForcedLogUtil.log(::Org::Allbinary::Logic::Util::Event::EventStrings.getInstance().PERFORMANCE_MESSAGE, self)
    end
    java_overload :onEvent, 1
    

    def onCompleteMotionGestureInputEvent(completeMotionGestureInputEvent)
        begin
            gameKeyCompleteMotionGestureInputEvent = completeMotionGestureInputEvent
            gameKeyEvent = gameKeyCompleteMotionGestureInputEvent.getGameKeyEvent()
            if gameKeyEvent != @previousGameKeyEvent
                if @previousGameKeyEvent != ::Org::Allbinary::Game::Input::Event::GameKeyEvent::NONE
                    ::Org::Allbinary::Game::Input::Event::UpGameKeyEventHandler.getInstance().fireEvent(@previousGameKeyEvent)
                end
                @previousGameKeyEvent = gameKeyEvent
                if gameKeyEvent != nil && gameKeyEvent != ::Org::Allbinary::Game::Input::Event::GameKeyEvent::NONE
                    ::Org::Allbinary::Game::Input::Event::DownGameKeyEventHandler.getInstance().fireEvent(gameKeyEvent)
                end
            end
        rescue StandardError => e
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, "onCompleteMotionGestureInputEvent", e)
        end
    end
    java_overload :onCompleteMotionGestureInputEvent, 1
end

module ::Org; module Allbinary; module Game; module Input; autoload :CompleteMotionGestureInputEvent, "org/allbinary/game/input/CompleteMotionGestureInputEvent" unless const_defined?(:CompleteMotionGestureInputEvent, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Input; module Event; autoload :DownGameKeyEventHandler, "org/allbinary/game/input/event/DownGameKeyEventHandler" unless const_defined?(:DownGameKeyEventHandler, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Input; module Event; autoload :GameKeyEvent, "org/allbinary/game/input/event/GameKeyEvent" unless const_defined?(:GameKeyEvent, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Input; module Event; autoload :UpGameKeyEventHandler, "org/allbinary/game/input/event/UpGameKeyEventHandler" unless const_defined?(:UpGameKeyEventHandler, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :ForcedLogUtil, "org/allbinary/logic/communication/log/ForcedLogUtil" unless const_defined?(:ForcedLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :AllBinaryEventObject, "org/allbinary/logic/util/event/AllBinaryEventObject" unless const_defined?(:AllBinaryEventObject, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :EventStrings, "org/allbinary/logic/util/event/EventStrings" unless const_defined?(:EventStrings, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :GameKeyCompleteMotionGestureInputEvent, "org/allbinary/game/input/motion/action/GameKeyCompleteMotionGestureInputEvent" unless const_defined?(:GameKeyCompleteMotionGestureInputEvent, false)

end; end; end; end; end; end

