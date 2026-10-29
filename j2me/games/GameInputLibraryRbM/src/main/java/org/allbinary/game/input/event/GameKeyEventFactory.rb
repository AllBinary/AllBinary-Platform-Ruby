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


class GameKeyEventFactory
    attr_accessor :logUtil, :TOUCH_BUTTON_SOURCE_ID, :MOTION_GESTURE_SOURCE_ID, :MAX_SOURCES, :ARRAY

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @TOUCH_BUTTON_SOURCE_ID = 2
        @MOTION_GESTURE_SOURCE_ID = 3
        @MAX_SOURCES = 4
        @ARRAY = Array.new(@MAX_SOURCES) { Array.new(InputFactory.getInstance().MAX, nil) }
    end
    

    def self.getInstance()
        if GameKeyEventFactory.instance == NullUtil.getInstance().NULL_OBJECT
            GameKeyEventFactory.instance = GameKeyEventFactory.new()
        end
        return GameKeyEventFactory.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    def init()
        nullUtil = NullUtil.getInstance()
        size = InputFactory.getInstance().MAX
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
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/game/input/GameKeyEventSourceInterface"
require "org/allbinary/game/input/Input"
require "org/allbinary/game/input/InputFactory"
require "org/allbinary/logic/NullUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/game/input/event/GameKeyEvent"

class GameKeyEventFactory
    @@instance = NullUtil.getInstance().NULL_OBJECT
end

