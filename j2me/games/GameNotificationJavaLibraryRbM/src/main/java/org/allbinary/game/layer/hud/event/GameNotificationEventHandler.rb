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
# package org.allbinary.game.layer.hud.event

require "java/lang/Object"
require "org/allbinary/logic/util/event/handler/BasicEventHandler"

class GameNotificationEventHandler < BasicEventHandler
    attr_accessor :enabled

    def initialize_fields
        @enabled = true
    end
    

    def initialize()
        super()
        initialize_fields
    end
    

    def removeAllListeners()
        java_monitor.synchronize do
        eventListenerInterface = NullEventListener::NULL_EVENT_LISTENER
        list = @eventListenerInterfaceList
        if list.size() > 0
            eventListenerInterface = list.objectArray[0]
        end
        super()
        if eventListenerInterface != NullEventListener::NULL_EVENT_LISTENER
            self.addListenerInterface(eventListenerInterface)
        end
        end
    end
    

    def self.getInstance()
        return GameNotificationEventHandler.instance
    end
    

    # throws Exception
    def process(eventObject, eventListenerInterface)
        if !@enabled
            return
        end
        gameNotificationListenerInterface = eventListenerInterface
        gameNotificationListenerInterface.onGameNotificationEvent(eventObject)
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/util/event/AllBinaryEventObject"
require "org/allbinary/logic/util/event/EventListenerInterface"
require "org/allbinary/logic/util/event/NullEventListener"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/game/layer/hud/event/GameNotificationEvent"
require "org/allbinary/game/layer/hud/event/GameNotificationListenerInterface"

class GameNotificationEventHandler
    @@instance = GameNotificationEventHandler.new()
end

