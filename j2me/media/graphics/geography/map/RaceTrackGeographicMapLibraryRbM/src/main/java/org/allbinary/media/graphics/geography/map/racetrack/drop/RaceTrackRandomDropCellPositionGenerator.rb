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
# package org.allbinary.media.graphics.geography.map.racetrack.drop

require "org/allbinary/media/graphics/geography/map/racetrack/drop/RaceTrackDropCellPositionGenerator"

class RaceTrackRandomDropCellPositionGenerator < RaceTrackDropCellPositionGenerator
    attr_accessor :myRandomFactory, :cellsPerRowOrColumn, :totalCells, :rowArray, :columnArray, :cellWidth, :cellHeight

    def initialize_fields
        @myRandomFactory = MyRandomFactory.getInstance()
        @cellsPerRowOrColumn = 3
        @totalCells = @cellsPerRowOrColumn * @cellsPerRowOrColumn
        @rowArray = [0, 1, 2, 0, 1, 2, 0, 1, 2]
        @columnArray = [0, 0, 0, 1, 1, 1, 2, 2, 2]
        @cellWidth = 0
        @cellHeight = 0
    end
    

    def self.getInstance()
        return RaceTrackRandomDropCellPositionGenerator::SINGLETON
    end
    

    def initialize()
        super()
        initialize_fields
    end
    

    # throws Exception
    def update(allBinaryGameLayerManager, geographicMapInterface)
        super(allBinaryGameLayerManager, geographicMapInterface)
        tiledLayer = geographicMapInterface.getAllBinaryTiledLayer()
        @cellWidth = tiledLayer.getCellWidth() / @cellsPerRowOrColumn
        @cellHeight = tiledLayer.getCellHeight() / @cellsPerRowOrColumn
    end
    

    # throws Exception
    def drop(allBinaryLayerManager, index)
        geographicMapCellPosition = @list.get(index)
        point = geographicMapCellPosition.getPoint()
        randomCell = @myRandomFactory.getAbsoluteNextInt(@totalCells)
        row = @rowArray[randomCell]
        column = @columnArray[randomCell]
        x = point.getX() + (row * @cellWidth)
        y = point.getY() + (column * @cellHeight)
        pickedUpLayerInterfaceFactory = DropLayerFactory.getInstance().getRandomInstance()
        tiledLayer = @raceTrackGeographicMap.getAllBinaryTiledLayer()
        pickupLayer = PickupLayerCircularStaticPool.getInstance().getInstanceXYZ(pickedUpLayerInterfaceFactory, x, y, tiledLayer.getZP() + 3)
        pickupLayer.setTiledLayer(tiledLayer)
        allBinaryLayerManager.append(pickupLayer)
    end
end

require "org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryInterface"
require "org/allbinary/game/layer/AllBinaryGameLayerManager"
require "org/allbinary/game/layer/AllBinaryTiledLayer"
require "org/allbinary/game/layer/drop/DropLayerFactory"
require "org/allbinary/game/layer/pickup/PickupLayerCircularStaticPool"
require "org/allbinary/game/layer/pickup/RaceTrackPickupLayer"
require "org/allbinary/game/rand/MyRandomFactory"
require "org/allbinary/graphics/GPoint"
require "org/allbinary/layer/AllBinaryLayerManager"
require "org/allbinary/media/graphics/geography/map/BasicGeographicMap"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition"

class RaceTrackRandomDropCellPositionGenerator
    SINGLETON = RaceTrackRandomDropCellPositionGenerator.new()
end

