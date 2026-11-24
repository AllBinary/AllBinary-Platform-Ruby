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
# package org.allbinary.game.input

require "java/lang/Object"
require "java/lang/JavaOverload"
require "org/allbinary/game/input/event/GameKeyEventListenerInterface"
require "org/allbinary/game/input/GameInput"

module ::Org; module Allbinary; module Game; module Input

class PlayerGameInput < GameInput
    include ::Org::Allbinary::Game::Input::Event::GameKeyEventListenerInterface
    attr_accessor :gameInputStrings, :playerInputId

    def jfields_org_allbinary_game_input_PlayerGameInput
        @gameInputStrings = GameInputStrings.getInstance()
        @playerInputId = nil unless instance_variable_defined?(:@playerInputId)
    end
    

    def initialize(gameKeyEventList, removalGameKeyEventList, playerInputId)
        super(gameKeyEventList, removalGameKeyEventList)
        jfields_org_allbinary_game_input_PlayerGameInput
        @playerInputId = playerInputId
    end
    

    def onPressGameKeyEvent(gameKeyEvent)
        java_monitor.synchronize do
        self.add(gameKeyEvent)
        self.addForRemoval(gameKeyEvent)
        end
    end
    java_overload :onPressGameKeyEvent, 1
    

    def onDownGameKeyEvent(gameKeyEvent)
        java_monitor.synchronize do
        self.add(gameKeyEvent)
        end
    end
    java_overload :onDownGameKeyEvent, 1
    

    def onDownKeyEvent(gameKeyEvent)
        java_monitor.synchronize do
        self.add(gameKeyEvent)
        self.addForRemoval(gameKeyEvent)
        end
    end
    java_overload :onDownKeyEvent, 1
    

    def onDownKey(gameKeyEvent)
        java_monitor.synchronize do
        ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(::Org::Allbinary::StringPackage::CommonLabels.getInstance().START_LABEL).append(gameKeyEvent.to_s).to_s, self, @gameInputStrings.ON_DOWN_GAME_KEY)
        end
    end
    java_overload :onDownKey, 1
    

    def onUpGameKeyEvent(gameKeyEvent)
        java_monitor.synchronize do
        self.addForRemoval(gameKeyEvent)
        end
    end
    java_overload :onUpGameKeyEvent, 1
    

    def onUpKeyEvent(gameKeyEvent)
        java_monitor.synchronize do
        end
    end
    java_overload :onUpKeyEvent, 1
    

    def onEvent(eventObject)
        ::Org::Allbinary::Logic::Communication::Log::ForcedLogUtil.log(::Org::Allbinary::Logic::Util::Event::EventStrings.getInstance().PERFORMANCE_MESSAGE, self)
    end
    java_overload :onEvent, 1
    

    def getPlayerInputId()
        return @playerInputId
    end
    java_overload :getPlayerInputId, 0
end

module ::Org; module Allbinary; module Game; module Input; module Event; autoload :GameKeyEvent, "org/allbinary/game/input/event/GameKeyEvent" unless const_defined?(:GameKeyEvent, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :ForcedLogUtil, "org/allbinary/logic/communication/log/ForcedLogUtil" unless const_defined?(:ForcedLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil" unless const_defined?(:PreLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :AllBinaryEventObject, "org/allbinary/logic/util/event/AllBinaryEventObject" unless const_defined?(:AllBinaryEventObject, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :EventStrings, "org/allbinary/logic/util/event/EventStrings" unless const_defined?(:EventStrings, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonLabels, "org/allbinary/string/CommonLabels" unless const_defined?(:CommonLabels, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
autoload :GameInputStrings, "org/allbinary/game/input/GameInputStrings" unless const_defined?(:GameInputStrings, false)

end; end; end; end

