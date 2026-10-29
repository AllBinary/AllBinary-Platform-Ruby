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

class RaceTrackAdjacentDropCellPositionGenerator < RaceTrackDropCellPositionGenerator
    attr_accessor :layerCoveringCellPositionsUtil, :groupCommonFactory, :surroundingCellPositions, :hashtable, :geographicMapDirectionUtil

    def initialize_fields
        @layerCoveringCellPositionsUtil = LayerCoveringCellPositionsUtil.getInstance()
        @groupCommonFactory = GroupCommonFactory.getInstance()
        @surroundingCellPositions = Array.new(4, nil)
        @hashtable = StdUtil.getInstance().createHashtable()
        @geographicMapDirectionUtil = GeographicMapDirectionUtil.getInstance()
    end
    

    def self.getInstance()
        return RaceTrackAdjacentDropCellPositionGenerator::SINGLETON
    end
    

    def initialize()
        super()
        initialize_fields
    end
    

    # throws Exception
    def getFirstNonRoadAdjacentCellPosition(column, row)
        nonRoadGeographicMapCellPosition = SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
        geographicMapCellPositionFactory = @raceTrackGeographicMap.getGeographicMapCellPositionFactory()
        @surroundingCellPositions[0] = geographicMapCellPositionFactory.getAt(column, row - 1)
        @surroundingCellPositions[1] = geographicMapCellPositionFactory.getAt(column, row + 1)
        @surroundingCellPositions[2] = geographicMapCellPositionFactory.getAt(column - 1, row)
        @surroundingCellPositions[3] = geographicMapCellPositionFactory.getAt(column + 1, row)
        baseRaceTrackGeographicMap = @raceTrackGeographicMap
        raceTrackGeographicMapCellTypeFactory = baseRaceTrackGeographicMap.getGeographicMapCellTypeFactory()
        geographicMapCellPosition = nil
        raceTrackGeographicMapCellType = nil
        index = @surroundingCellPositions.length
        while (index -= 1) >= 0
            geographicMapCellPosition = @surroundingCellPositions[index]
            raceTrackGeographicMapCellType = @raceTrackGeographicMap.getCellTypeAt(geographicMapCellPosition)
            if !raceTrackGeographicMapCellTypeFactory.isPath(raceTrackGeographicMapCellType)
                nonRoadGeographicMapCellPosition = geographicMapCellPosition
                break
            end
        end
        return nonRoadGeographicMapCellPosition
    end
    

    # throws Exception
    def update(allBinaryGameLayerManager, geographicMapInterface)
        @hashtable.put(AllBinaryGameLayerManager::ID, allBinaryGameLayerManager)
        super(allBinaryGameLayerManager, geographicMapInterface)
    end
    

    # throws Exception
    def drop(allBinaryLayerManager, index)
        geographicMapCellPosition = @list.get(index)
        randomGeographicMapCellPosition = self.getFirstNonRoadAdjacentCellPosition(geographicMapCellPosition.getColumn(), geographicMapCellPosition.getRow())
        if randomGeographicMapCellPosition == nil
            return
        end
        dropCellPositionHistory = DropCellPositionHistory.getInstance()
        if !dropCellPositionHistory.isCellPositionWithDrop(geographicMapCellPosition)
            direction = @geographicMapDirectionUtil.getDirectionFromCellPositionToAdjacentCellPosition(randomGeographicMapCellPosition, geographicMapCellPosition)
            objectCanBeNull = @hashtable.get(@groupCommonFactory.ID)
            if objectCanBeNull != nil
            else
                @hashtable.put(@groupCommonFactory.ID, BasicGroupFactory.getInstance().NONE_ARRAY)
            end
            @hashtable.put(DirectionFactory.getInstance().NAME, direction)
            point = randomGeographicMapCellPosition.getPoint()
            x = point.getX()
            y = point.getY()
            z = point.getZ()
            layerInterface = RaceTrackAdjacentDropLayerFactory.getInstance().getRandomInstance().getNextInstance(@hashtable, x, y, z)
            baseRaceTrackGeographicMap = @raceTrackGeographicMap
            list = @layerCoveringCellPositionsUtil.getAll(baseRaceTrackGeographicMap, randomGeographicMapCellPosition, layerInterface, BasicArrayListD.new())
            if dropCellPositionHistory.anyCellPositionWithDrop(list)
                return
            end
            geographicMapCellType = nil
            index2 = list.size()
            while (index2 -= 1) >= 0
                geographicMapCellType = @raceTrackGeographicMap.getCellTypeAt(list.get(index2))
                if @raceTrackGeographicMapCellTypeFactory.isPath(geographicMapCellType)
                    return
                end
            end
            dropCellPositionHistory.addAll(list, layerInterface)
            allBinaryLayerManager.append(layerInterface)
        end
    end
end

require "org/allbinary/game/identification/GroupCommonFactory"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/direction/Direction"
require "org/allbinary/direction/DirectionFactory"
require "org/allbinary/game/identification/BasicGroupFactory"
require "org/allbinary/game/layer/AllBinaryGameLayerManager"
require "org/allbinary/game/layer/geographic/map/LayerCoveringCellPositionsUtil"
require "org/allbinary/graphics/GPoint"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/layer/AllBinaryLayerManager"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/media/graphics/geography/map/BasicGeographicMap"
require "org/allbinary/media/graphics/geography/map/BasicGeographicMapCellPositionFactory"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellType"
require "org/allbinary/media/graphics/geography/map/GeographicMapDirectionUtil"
require "org/allbinary/media/graphics/geography/map/SimpleGeographicMapCellPositionFactory"
require "org/allbinary/media/graphics/geography/map/drop/DropCellPositionGeneratorInterface"
require "org/allbinary/media/graphics/geography/map/drop/DropCellPositionHistory"
require "org/allbinary/media/graphics/geography/map/racetrack/BaseRaceTrackGeographicMap"
require "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackGeographicMapCellType"
require "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackGeographicMapCellTypeFactory"
require "org/allbinary/util/ABHashtable"
require "org/allbinary/media/graphics/geography/map/racetrack/drop/RaceTrackAdjacentDropLayerFactory"

class RaceTrackAdjacentDropCellPositionGenerator
    SINGLETON = RaceTrackAdjacentDropCellPositionGenerator.new()
end

