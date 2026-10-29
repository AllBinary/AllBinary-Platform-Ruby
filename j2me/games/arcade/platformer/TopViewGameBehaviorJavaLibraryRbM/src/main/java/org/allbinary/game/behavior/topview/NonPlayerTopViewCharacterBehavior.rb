# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.game.behavior.topview

require "org/allbinary/game/behavior/topview/TopViewCharacterBehavior"

class NonPlayerTopViewCharacterBehavior < TopViewCharacterBehavior
    attr_accessor :geographicMapBehavior, :CLIFF

    def initialize_fields
        @geographicMapBehavior = MultiGeographicMapBehavior.new()
        @CLIFF = BasicTerrainInfo.new(AngleFactory.getInstance().DOWN)
    end

    def initialize
        super()
        initialize_fields
    end
    

    # throws Exception
    def terrainEvent(layer, direction, x, y, geographicMapInterfaceArray, geographicMapCellTypeArray, geographicMapCellPosition)
        maxColumns = geographicMapInterfaceArray[0].getAllBinaryTiledLayer().getColumns()
        if geographicMapCellPosition.getColumn() > 0 && geographicMapCellPosition.getColumn() < maxColumns
            nextTerrainGeographicMapCellPosition = SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
            geographicMapCellPositionFactory = geographicMapInterfaceArray[0].getGeographicMapCellPositionFactory()
            if direction == DirectionFactory.getInstance().LEFT
                nextTerrainGeographicMapCellPosition = geographicMapCellPositionFactory.getAt(geographicMapCellPosition.getColumn() - 1, geographicMapCellPosition.getRow())
            elsif direction == DirectionFactory.getInstance().RIGHT
                nextTerrainGeographicMapCellPosition = geographicMapCellPositionFactory.getAt(geographicMapCellPosition.getColumn() + 1, geographicMapCellPosition.getRow())
            end
            @geographicMapBehavior.getCellTypeAt(geographicMapInterfaceArray, geographicMapCellTypeArray, nextTerrainGeographicMapCellPosition)
            hasSolidBlock = self.hasSolidBlock(geographicMapInterfaceArray, geographicMapCellTypeArray)
            if !hasSolidBlock
                terrainEvent = TerrainEventCircularStaticPool.getInstance().getNext(@CLIFF)
                TerrainEventHandler.getInstance(layer).fireEvent(terrainEvent)
            end
        end
    end
    

    def terrainMove(layer, geographicMapInterfaceArray, x, y)
        layer.moveDXY(x, y)
    end
end

require "org/allbinary/media/graphics/geography/map/MultiGeographicMapBehavior"
require "org/allbinary/direction/Direction"
require "org/allbinary/direction/DirectionFactory"
require "org/allbinary/game/terrain/BasicTerrainInfo"
require "org/allbinary/game/terrain/TerrainEvent"
require "org/allbinary/game/terrain/TerrainEventCircularStaticPool"
require "org/allbinary/game/terrain/TerrainEventHandler"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/math/AngleFactory"
require "org/allbinary/media/graphics/geography/map/BasicGeographicMap"
require "org/allbinary/media/graphics/geography/map/BasicGeographicMapCellPositionFactory"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellType"
require "org/allbinary/media/graphics/geography/map/SimpleGeographicMapCellPositionFactory"

