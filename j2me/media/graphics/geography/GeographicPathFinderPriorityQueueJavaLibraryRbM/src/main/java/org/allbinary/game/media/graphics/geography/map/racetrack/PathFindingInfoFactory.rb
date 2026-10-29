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
# package org.allbinary.game.media.graphics.geography.map.racetrack

require "org/allbinary/media/graphics/geography/map/racetrack/BasePathFindingInfoFactory"

#1.4.2
class PathFindingInfoFactory < BasePathFindingInfoFactory
    attr_accessor :pathFindingInfo, :pathFinder

    def initialize_fields
        @pathFindingInfo = nil
        @pathFinder = nil
    end
    

    def self.getInstance()
        return PathFindingInfoFactory.instance
    end
    

    def self.initMax(max)
        PathFindingInfoFactory::MAX = max
    end
    

    def initialize()
        super()
        initialize_fields
        @pathFindingInfo = PathFindingInfo.new(PathFindingNodeCostInfoFactory.new(PathFindingInfoFactory::MAX), BasicArrayListS.new(1), BasicArrayListS.new(1))
        @pathFinder = PathFinder.new()
    end
    

    # throws Exception
    def getInstancePathFindingInfo(geographicMapInterface, mapArray)
        pathFindingInfo = PathFindingInfo.new(@pathFindingInfo.getPathFindingNodeCostInfoFactoryInterface(), BasicArrayListS.new(1), BasicArrayListS.new(1))
        RaceTrackRoadsGeographicMapCellHistoryFactory.getInstance().init()
        self.init(geographicMapInterface, pathFindingInfo, mapArray)
        @pathFinder.init(geographicMapInterface)
        pathFindingInfo.setPathFinder(@pathFinder)
        return pathFindingInfo
    end
    

    # throws Exception
    def init(geographicMapInterface, pathFindingInfo, mapArray)
        super(geographicMapInterface, pathFindingInfo, mapArray)
        self.buildPathFindingNodes(geographicMapInterface, pathFindingInfo, mapArray)
    end
    

    # throws Exception
    def buildPathFindingNodesForCellPosition(geographicMapInterface, pathFindingInfo, mapArray, cellPosition)
    end
    

    # throws Exception
    def buildPathFindingNodes(geographicMapInterface, pathFindingInfo, mapArray)
        geographicMapCellPositionFactory = geographicMapInterface.getGeographicMapCellPositionFactory()
        allBinaryTiledLayer = geographicMapInterface.getAllBinaryTiledLayer()
        totalColumns = allBinaryTiledLayer.getColumns()
        totalRows = allBinaryTiledLayer.getRows()
        (0...totalColumns).each do |column|
            (0...totalRows).each do |row|
                self.buildPathFindingNodesForCellPosition(geographicMapInterface, pathFindingInfo, mapArray, geographicMapCellPositionFactory.getAt(column, row))
            end
        end
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/game/layer/AllBinaryTiledLayer"
require "org/allbinary/media/graphics/geography/map/BasicGeographicMap"
require "org/allbinary/media/graphics/geography/map/BasicGeographicMapCellPositionFactory"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition"
require "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackRoadsGeographicMapCellHistoryFactory"
require "org/allbinary/media/graphics/geography/pathfinding/PathFinder"
require "org/allbinary/media/graphics/geography/pathfinding/PathFindingInfo"
require "org/allbinary/media/graphics/geography/pathfinding/PathFindingNodeCostInfoFactory"
require "org/allbinary/util/BasicArrayListS"

class PathFindingInfoFactory
    @@instance = PathFindingInfoFactory.new()
    MAX = 32768
end

