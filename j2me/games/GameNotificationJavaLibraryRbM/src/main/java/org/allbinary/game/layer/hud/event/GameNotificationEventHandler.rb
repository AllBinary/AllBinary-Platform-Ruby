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
        GameNotificationEventHandler.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        GameNotificationEventHandler.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = GameNotificationEventHandler.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "GameNotificationEventHandler"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :AllBinaryEventObject, "org/allbinary/logic/util/event/AllBinaryEventObject"
autoload :EventListenerInterface, "org/allbinary/logic/util/event/EventListenerInterface"
autoload :NullEventListener, "org/allbinary/logic/util/event/NullEventListener"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :GameNotificationEvent, "org/allbinary/game/layer/hud/event/GameNotificationEvent"
autoload :GameNotificationListenerInterface, "org/allbinary/game/layer/hud/event/GameNotificationListenerInterface"

begin
    GameNotificationEventHandler.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

