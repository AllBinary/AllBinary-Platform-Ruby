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

require "java/lang/Object"

class TerrainEventCircularStaticPool
    attr_accessor :EVENT_POOL

    def initialize_fields
        @EVENT_POOL = AllBinaryEventCircularPool.new(20)
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return TerrainEventCircularStaticPool.instance
    end
    

    def init()
        @EVENT_POOL.initAllBinaryEventCircularPool(TerrainEventFactory.new())
    end
    

    # throws Exception
    def getNext(basicTerrainInfo)
        java_monitor.synchronize do
        trackingEvent = @EVENT_POOL.getNextInstance()
        trackingEvent.setBasicTerrainInfoForCircularStaticPool(basicTerrainInfo)
        return trackingEvent
        end
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/util/event/AllBinaryEventCircularPool"
require "org/allbinary/game/terrain/BasicTerrainInfo"
require "org/allbinary/game/terrain/TerrainEvent"
require "org/allbinary/game/terrain/TerrainEventFactory"

class TerrainEventCircularStaticPool
    @@instance = TerrainEventCircularStaticPool.new()
end

