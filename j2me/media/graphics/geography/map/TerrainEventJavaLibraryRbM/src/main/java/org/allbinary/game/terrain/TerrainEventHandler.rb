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
# package org.allbinary.game.terrain

require "org/allbinary/logic/util/event/handler/BasicEventHandler"

class TerrainEventHandler < BasicEventHandler
    attr_accessor :list

    def initialize_fields
        @list = BasicArrayListD.new()
    end
    

    def self.init()
        TerrainEventHandler.hashtable = StdUtil.getInstance().createHashtable()
    end
    

    def self.getInstance(anyType)
        eventHandlerCanBeNull = TerrainEventHandler.hashtable.get(anyType)
        if eventHandlerCanBeNull == nil
            eventHandlerCanBeNull = TerrainEventHandler.new()
            TerrainEventHandler.hashtable.put(anyType, eventHandlerCanBeNull)
        end
        return eventHandlerCanBeNull
    end
    

    def initialize()
        super()
        initialize_fields
    end
    

    def addListener(terrainEventListener)
        if !@list.contains(terrainEventListener)
            @list.add(terrainEventListener)
        end
    end
    

    def removeAllListeners()
        @list.clear()
        super()
    end
    

    def removeListener(eventListenerInterface)
        @list.remove(eventListenerInterface)
        super(eventListenerInterface)
    end
    

    # throws Exception
    def fireEvent(eventObject)
        index = @list.size()
        while (index -= 1) >= 0
            begin
                terrainEventListener = @list.get(index)
                terrainEventListener.onTerrainEvent(eventObject)
            rescue StandardError => e
                @logUtil.put(@commonStrings.EXCEPTION, self, EventStrings.getInstance().FIRE_EVENT, e)
            end
        end
        super(eventObject)
    end
    

    # throws Exception
    def process(eventObject, eventListenerInterface)
        terrainEventListenerInterface = eventListenerInterface
        terrainEventListenerInterface.onTerrainEvent(eventObject)
    end

    def self.hashtable()
        TerrainEventHandler.java_static_fields unless @java_static_fields_started
        return defined?(@@hashtable) ? @@hashtable : nil
    end

    def self.hashtable=(value)
        TerrainEventHandler.java_static_fields unless @java_static_fields_started
        @@hashtable = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@hashtable = StdUtil.getInstance().NULL_TABLE
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "TerrainEventHandler"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :StdUtil, "org/allbinary/logic/StdUtil"
autoload :AllBinaryEventObject, "org/allbinary/logic/util/event/AllBinaryEventObject"
autoload :EventListenerInterface, "org/allbinary/logic/util/event/EventListenerInterface"
autoload :EventStrings, "org/allbinary/logic/util/event/EventStrings"
autoload :ABHashtable, "org/allbinary/util/ABHashtable"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"
autoload :TerrainEvent, "org/allbinary/game/terrain/TerrainEvent"
autoload :TerrainEventListener, "org/allbinary/game/terrain/TerrainEventListener"
autoload :TerrainEventListenerInterface, "org/allbinary/game/terrain/TerrainEventListenerInterface"

begin
    TerrainEventHandler.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

