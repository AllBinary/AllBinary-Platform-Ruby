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
# package org.allbinary.game.input.event


module ::Org; module Allbinary; module Game; module Input; module Event

class GameKeyEventFactory
    attr_accessor :logUtil, :TOUCH_BUTTON_SOURCE_ID, :MOTION_GESTURE_SOURCE_ID, :MAX_SOURCES, :ARRAY

    def jfields_org_allbinary_game_input_event_GameKeyEventFactory
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @TOUCH_BUTTON_SOURCE_ID = 2
        @MOTION_GESTURE_SOURCE_ID = 3
        @MAX_SOURCES = 4
        @ARRAY = Array.new(@MAX_SOURCES) { Array.new(::Org::Allbinary::Game::Input::InputFactory.getInstance().MAX, nil) }
    end
    

    def self.getInstance()
        if @@instance == ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT
            @@instance = GameKeyEventFactory.new()
        end
        return @@instance
    end
    

    def initialize()
        jfields_org_allbinary_game_input_event_GameKeyEventFactory
    end
    

    def init()
        nullUtil = ::Org::Allbinary::Logic::NullUtil.getInstance()
        size = ::Org::Allbinary::Game::Input::InputFactory.getInstance().MAX
        index = @MAX_SOURCES
        while (index -= 1) >= 0
            index2 = size
            while (index2 -= 1) >= 0
                @ARRAY[index][index2] = GameKeyEvent.createEvent(nullUtil.NULL_OBJECT, index, index2)
            end
        end
    end
    

    # throws Exception
    def getInstanceForKey(anyType, key)
        gameKeyEvent = @ARRAY[anyType.getSourceId()][key]
        return gameKeyEvent
    end
    

    # throws Exception
    def getInstanceForInput(anyType, input)
        gameKeyEvent = @ARRAY[anyType.getSourceId()][input.getId()]
        return gameKeyEvent
    end

    def self.instance()
        GameKeyEventFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        GameKeyEventFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "GameKeyEventFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Game; module Input; autoload :GameKeyEventSourceInterface, "org/allbinary/game/input/GameKeyEventSourceInterface" unless const_defined?(:GameKeyEventSourceInterface, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Input; autoload :Input, "org/allbinary/game/input/Input" unless const_defined?(:Input, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Input; autoload :InputFactory, "org/allbinary/game/input/InputFactory" unless const_defined?(:InputFactory, false); end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
autoload :GameKeyEvent, "org/allbinary/game/input/event/GameKeyEvent" unless const_defined?(:GameKeyEvent, false)

begin
    GameKeyEventFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

