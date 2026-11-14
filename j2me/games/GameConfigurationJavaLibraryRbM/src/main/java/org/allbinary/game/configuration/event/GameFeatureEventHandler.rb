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
# package org.allbinary.game.configuration.event

require "org/allbinary/logic/util/event/handler/BasicEventHandler"

class GameFeatureEventHandler < BasicEventHandler
    

    def initialize()
        super()
    end
    

    def self.getInstance()
        return GameFeatureEventHandler.gameKeyEventHandler
    end
    

    # throws Exception
    def process(eventObject, eventListenerInterface)
        gameFeatureListenerInterface = (eventListenerInterface)
        gameFeatureListenerInterface.onGameFeatureChange(eventObject)
    end

    def self.gameKeyEventHandler()
        GameFeatureEventHandler.java_static_fields unless @java_static_fields_started
        return defined?(@@gameKeyEventHandler) ? @@gameKeyEventHandler : nil
    end

    def self.gameKeyEventHandler=(value)
        GameFeatureEventHandler.java_static_fields unless @java_static_fields_started
        @@gameKeyEventHandler = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@gameKeyEventHandler = GameFeatureEventHandler.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "GameFeatureEventHandler"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :AllBinaryEventObject, "org/allbinary/logic/util/event/AllBinaryEventObject"
autoload :EventListenerInterface, "org/allbinary/logic/util/event/EventListenerInterface"
autoload :GameFeatureEvent, "org/allbinary/game/configuration/event/GameFeatureEvent"
autoload :GameFeatureListenerInterface, "org/allbinary/game/configuration/event/GameFeatureListenerInterface"

begin
    GameFeatureEventHandler.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

