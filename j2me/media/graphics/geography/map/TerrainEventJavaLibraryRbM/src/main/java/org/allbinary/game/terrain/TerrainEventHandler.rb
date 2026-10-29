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
        return defined?(@@hashtable) ? @@hashtable : nil
    end

    def self.hashtable=(value)
        @@hashtable = value
    end
end

require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/util/event/AllBinaryEventObject"
require "org/allbinary/logic/util/event/EventListenerInterface"
require "org/allbinary/logic/util/event/EventStrings"
require "org/allbinary/util/ABHashtable"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/game/terrain/TerrainEvent"
require "org/allbinary/game/terrain/TerrainEventListener"
require "org/allbinary/game/terrain/TerrainEventListenerInterface"

class TerrainEventHandler
    @@hashtable = StdUtil.getInstance().NULL_TABLE
end

