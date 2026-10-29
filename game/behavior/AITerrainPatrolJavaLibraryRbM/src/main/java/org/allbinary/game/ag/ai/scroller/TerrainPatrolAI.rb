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
# package org.allbinary.game.ag.ai.scroller

require "org/allbinary/game/ag/ai/scroller/PacePatrolAI"

class TerrainPatrolAI < PacePatrolAI
    attr_accessor :terrainEventListener, :DOWN, :CLIFF

    def initialize_fields
        @terrainEventListener = TerrainEventListener.new()
        @DOWN = AngleFactory.getInstance().DOWN
        @CLIFF = BasicTerrainInfo.new(@DOWN)
    end
    

    def initialize(hashtable, ownerLayerInterface, gameInput)
        super(hashtable, ownerLayerInterface, gameInput)
        initialize_fields
        TerrainEventHandler.getInstance(ownerLayerInterface).addListener(@terrainEventListener)
        @terrainEventListener.onTerrainEvent(TerrainEventCircularStaticPool.getInstance().getNext(@CLIFF))
    end
    

    def update()
        super()
        self.changeDirectionIfCliffReached()
    end
    

    def changeDirectionIfCliffReached()
        list = @terrainEventListener.getList()
        size = list.size()
        (0...size).each do |index|
            terrainEvent = list.removeAt(index)
            basicTerrainInfo = terrainEvent.getBasicTerrainInfo()
            angle = basicTerrainInfo.getAngle()
            if angle == @DOWN
                self.nextDirection()
                if !@isFollowLimitedByTerrain
                    @logUtil.putF("Following Limited", self, "onTerrainEvent")
                    @isFollowLimitedByTerrain = true
                end
            end
        end
    end
end

require "org/allbinary/game/input/GameInput"
require "org/allbinary/game/terrain/BasicTerrainInfo"
require "org/allbinary/game/terrain/TerrainEvent"
require "org/allbinary/game/terrain/TerrainEventCircularStaticPool"
require "org/allbinary/game/terrain/TerrainEventHandler"
require "org/allbinary/game/terrain/TerrainEventListener"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/math/Angle"
require "org/allbinary/math/AngleFactory"
require "org/allbinary/util/ABHashtable"
require "org/allbinary/util/BasicArrayList"

