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
require "java/lang/JavaOverload"
require "org/allbinary/logic/util/event/handler/BasicEventHandler"

module ::Org; module Allbinary; module Game; module Layer; module Hud; module Event

class GameNotificationEventHandler < ::Org::Allbinary::Logic::Util::Event::Handler::BasicEventHandler
    attr_accessor :enabled

    def jfields_org_allbinary_game_layer_hud_event_GameNotificationEventHandler
        @enabled = true
    end
    

    def initialize()
        super()
        jfields_org_allbinary_game_layer_hud_event_GameNotificationEventHandler
    end
    

    def removeAllListeners()
        java_monitor.synchronize do
        eventListenerInterface = ::Org::Allbinary::Logic::Util::Event::NullEventListener::NULL_EVENT_LISTENER
        list = @eventListenerInterfaceList
        if list.size() > 0
            eventListenerInterface = list.objectArray[0]
        end
        GameNotificationEventHandler.superclass.java_super_method(:removeAllListeners, 0).bind(self).call()
        if eventListenerInterface != ::Org::Allbinary::Logic::Util::Event::NullEventListener::NULL_EVENT_LISTENER
            self.addListenerInterface(eventListenerInterface)
        end
        end
    end
    java_overload :removeAllListeners, 0
    

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
    java_overload :process, 2

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

module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :AllBinaryEventObject, "org/allbinary/logic/util/event/AllBinaryEventObject" unless const_defined?(:AllBinaryEventObject, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :EventListenerInterface, "org/allbinary/logic/util/event/EventListenerInterface" unless const_defined?(:EventListenerInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :NullEventListener, "org/allbinary/logic/util/event/NullEventListener" unless const_defined?(:NullEventListener, false); end; end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
autoload :GameNotificationEvent, "org/allbinary/game/layer/hud/event/GameNotificationEvent" unless const_defined?(:GameNotificationEvent, false)
autoload :GameNotificationListenerInterface, "org/allbinary/game/layer/hud/event/GameNotificationListenerInterface" unless const_defined?(:GameNotificationListenerInterface, false)

begin
    GameNotificationEventHandler.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

