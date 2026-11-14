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

autoload :GameInput, "org/allbinary/game/input/GameInput"
autoload :BasicTerrainInfo, "org/allbinary/game/terrain/BasicTerrainInfo"
autoload :TerrainEvent, "org/allbinary/game/terrain/TerrainEvent"
autoload :TerrainEventCircularStaticPool, "org/allbinary/game/terrain/TerrainEventCircularStaticPool"
autoload :TerrainEventHandler, "org/allbinary/game/terrain/TerrainEventHandler"
autoload :TerrainEventListener, "org/allbinary/game/terrain/TerrainEventListener"
autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer"
autoload :Angle, "org/allbinary/math/Angle"
autoload :AngleFactory, "org/allbinary/math/AngleFactory"
autoload :ABHashtable, "org/allbinary/util/ABHashtable"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"

