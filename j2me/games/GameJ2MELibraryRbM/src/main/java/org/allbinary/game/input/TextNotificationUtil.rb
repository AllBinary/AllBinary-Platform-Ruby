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


class TextNotificationUtil
    attr_accessor :TWO, :FALSE, :gameNotificationEventHandler

    def initialize_fields
        @TWO = SmallIntegerSingletonFactory.getInstance().getAt(2)
        @FALSE = BooleanFactory.getInstance().FALSE
        @gameNotificationEventHandler = GameNotificationEventHandler.getInstance()
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return TextNotificationUtil.instance
    end
    

    # throws Exception
    def fireError(message)
        PrimaryPlayerQueueFactory.getInstance().add(ErrorSound.getInstance())
        self.fire(message)
    end
    

    # throws Exception
    def fireNew(message)
        PrimaryPlayerQueueFactory.getInstance().add(SelectSound.getInstance())
        self.fire(message)
    end
    

    # throws Exception
    def fireSuccess(message)
        PrimaryPlayerQueueFactory.getInstance().add(SelectSound.getInstance())
        self.fire(message)
    end
    

    # throws Exception
    def fire(message)
        gameNotificationEvent = GameNotificationEvent.new(self, message, @TWO, BasicColorFactory.getInstance().RED, @FALSE)
        @gameNotificationEventHandler.fireEvent(gameNotificationEvent)
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/game/layer/hud/event/GameNotificationEvent"
require "org/allbinary/game/layer/hud/event/GameNotificationEventHandler"
require "org/allbinary/graphics/color/BasicColorFactory"
require "org/allbinary/logic/java/bool/BooleanFactory"
require "org/allbinary/logic/math/SmallIntegerSingletonFactory"
require "org/allbinary/media/audio/ErrorSound"
require "org/allbinary/media/audio/PrimaryPlayerQueueFactory"
require "org/allbinary/media/audio/SelectSound"

class TextNotificationUtil
    @@instance = TextNotificationUtil.new()
end

