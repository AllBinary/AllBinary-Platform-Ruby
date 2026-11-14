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

autoload :ForcedLogUtil, "org/allbinary/logic/communication/log/ForcedLogUtil"
autoload :AllBinaryEventObject, "org/allbinary/logic/util/event/AllBinaryEventObject"
autoload :EventStrings, "org/allbinary/logic/util/event/EventStrings"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"
autoload :TerrainEvent, "org/allbinary/game/terrain/TerrainEvent"

