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

module ::Org; module Allbinary; module Game; module Terrain

class TerrainEventCircularStaticPool
    attr_accessor :EVENT_POOL

    def jfields_org_allbinary_game_terrain_TerrainEventCircularStaticPool
        @EVENT_POOL = ::Org::Allbinary::Logic::Util::Event::AllBinaryEventCircularPool.new(20)
    end

    def initialize
        jfields_org_allbinary_game_terrain_TerrainEventCircularStaticPool
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
        TerrainEventCircularStaticPool.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        TerrainEventCircularStaticPool.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = TerrainEventCircularStaticPool.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "TerrainEventCircularStaticPool"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :AllBinaryEventCircularPool, "org/allbinary/logic/util/event/AllBinaryEventCircularPool" unless const_defined?(:AllBinaryEventCircularPool, false); end; end; end; end; end
autoload :BasicTerrainInfo, "org/allbinary/game/terrain/BasicTerrainInfo" unless const_defined?(:BasicTerrainInfo, false)
autoload :TerrainEvent, "org/allbinary/game/terrain/TerrainEvent" unless const_defined?(:TerrainEvent, false)
autoload :TerrainEventFactory, "org/allbinary/game/terrain/TerrainEventFactory" unless const_defined?(:TerrainEventFactory, false)

begin
    TerrainEventCircularStaticPool.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

