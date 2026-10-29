# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.game.terrain

require "org/allbinary/game/terrain/TerrainEventListenerInterface"

class TerrainEventListener
    include TerrainEventListenerInterface
    attr_accessor :list

    def initialize_fields
        @list = BasicArrayListD.new()
    end

    def initialize
        initialize_fields
    end
    

    def onEvent(eventObject)
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, self)
    end
    

    def onTerrainEvent(terrainEvent)
        @list.clear()
        @list.add(terrainEvent)
    end
    

    def getList()
        return @list
    end
end

require "org/allbinary/logic/communication/log/ForcedLogUtil"
require "org/allbinary/logic/util/event/AllBinaryEventObject"
require "org/allbinary/logic/util/event/EventStrings"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/game/terrain/TerrainEvent"

