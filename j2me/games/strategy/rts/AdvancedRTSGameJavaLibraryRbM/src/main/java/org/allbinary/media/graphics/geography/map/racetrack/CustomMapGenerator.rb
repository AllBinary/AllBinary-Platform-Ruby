# 
# AllBinary Open License Version 1 
# Copyright (c) 2006 AllBinary 
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
# package org.allbinary.media.graphics.geography.map.racetrack

require "org/allbinary/media/graphics/geography/map/racetrack/CustomMapGeneratorBase"

class CustomMapGenerator < CustomMapGeneratorBase
    attr_accessor :customMapArray, :raceTrackGeographicMap, :geographicMapCellTypeFactory, :dropCellPositionHistory

    def initialize_fields
        @customMapArray = nil
        @raceTrackGeographicMap = nil
        @geographicMapCellTypeFactory = nil
        @dropCellPositionHistory = DropCellPositionHistory.getInstance()
    end
    

    def initialize(raceTrackGeographicMap)
        super()
        initialize_fields
        @raceTrackGeographicMap = raceTrackGeographicMap
        @geographicMapCellTypeFactory = @raceTrackGeographicMap.getGeographicMapCellTypeFactory()
        mapArray = raceTrackGeographicMap.getRaceTrackData().getMapArray()
        size2 = mapArray[0].length
        @customMapArray = Array.new(mapArray.length) { Array.new(size2, 0) }
        if mapArray.length != @customMapArray.length || mapArray[0].length != @customMapArray[0].length
            raise StandardError.new("Array Incorrect")
        end
    end
    

    # throws Exception
    def copyMapIntoCustomMap()
        mapArray = @raceTrackGeographicMap.getRaceTrackData().getMapArray()
        startIndex2 = mapArray[0].length - 1
        (mapArray.length - 1).step(0, -(1)) do |index|
            (startIndex2).step(0, -(1)) do |index2|
                @customMapArray[index][index2] = self.getCustomType(index2, index, mapArray[index][index2])
            end
        end
    end
    

    # throws Exception
    def getCustomType(column, row, currentType)
        emptyType = @geographicMapCellTypeFactory.getEmptyType()
        geographicMapCellPositionFactory = @raceTrackGeographicMap.getGeographicMapCellPositionFactory()
        cellPosition = geographicMapCellPositionFactory.getAt(column, row)
        if @dropCellPositionHistory.isCellPositionWithDrop(cellPosition)
            layer = @dropCellPositionHistory.getLayerInterface(cellPosition)
            if layer == AllBinaryLayer::NULL_ALLBINARY_LAYER
                return emptyType
            end
            rtsLayer = layer
            if !(rtsLayer.getType() == WaypointLayer.getStaticType())
                return emptyType
            end
        end
        return currentType
    end
    

    def getCustomMapArray()
        return @customMapArray
    end
end

require "org/allbinary/game/layer/AdvancedRTSGameLayer"
require "org/allbinary/game/layer/waypoint/WaypointLayer"
require "org/allbinary/graphics/CellPosition"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/media/graphics/geography/map/BasicGeographicMapCellPositionFactory"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellTypeFactory"
require "org/allbinary/media/graphics/geography/map/drop/DropCellPositionHistory"
require "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackGeographicMap"

