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

class PathFindingInfoFactory < BasePathFindingInfoFactory
    attr_accessor :MAX_DIRECTIONS, :pathFindingInfo, :basicGeographicMapGraph, :basicGeographicMapPathFinder, :pathFinderGraphVisitorFactoryInterface

    def initialize_fields
        @MAX_DIRECTIONS = 4
        @pathFindingInfo = nil
        @basicGeographicMapGraph = nil
        @basicGeographicMapPathFinder = nil
        @pathFinderGraphVisitorFactoryInterface = nil
    end
    

    def self.getInstance()
        return PathFindingInfoFactory.instance
    end
    

    def self.initMax(max)
        PathFindingInfoFactory.instance = PathFindingInfoFactory.new(SimplePathFinderGraphVisitorFactory.new(1, 1, 2147483647), max)
    end
    

    def initialize(pathFinderGraphVisitorFactoryInterface, max)
        super()
        initialize_fields
        commonStrings = CommonStrings.getInstance()
        PreLogUtil.put("Using Dynamic Path Finding", self, commonStrings.GET_INSTANCE)
        @basicGeographicMapPathFinder = BasicGeographicMapPathFinder.new(max)
        @pathFindingInfo = PathFindingInfo.new(PathFindingNodeCostInfoFactory.new(max), BasicArrayListS.new(1), BasicArrayListS.new(1))
        @basicGeographicMapGraph = BasicGeographicMapGraph.new(@pathFindingInfo.getPathFindingNodeCostInfoFactoryInterface())
        @pathFinderGraphVisitorFactoryInterface = pathFinderGraphVisitorFactoryInterface
    end
    

    # throws Exception
    def getInstancePathFindingInfo(geographicMapInterface, mapArray)
        pathFindingInfo = PathFindingInfo.new(@pathFindingInfo.getPathFindingNodeCostInfoFactoryInterface(), BasicArrayListS.new(1), BasicArrayListS.new(1))
        RaceTrackRoadsGeographicMapCellHistoryFactory.getInstance().init()
        self.init(geographicMapInterface, pathFindingInfo, mapArray)
        @basicGeographicMapPathFinder.init(geographicMapInterface, @basicGeographicMapGraph, @pathFinderGraphVisitorFactoryInterface.getInstance(geographicMapInterface))
        pathFindingInfo.setPathFinder(@basicGeographicMapPathFinder)
        return pathFindingInfo
    end
    

    # throws Exception
    def init(geographicMapInterface, pathFindingInfo, mapArray)
        super(geographicMapInterface, pathFindingInfo, mapArray)
        self.buildPathFindingNodes(geographicMapInterface, pathFindingInfo, mapArray)
    end
    

    # throws Exception
    def buildPathFindingNodesForCellPosition(geographicMapInterface, pathFindingInfo, mapArray, cellPosition)
        geographicMapCellPositionFactory = geographicMapInterface.getGeographicMapCellPositionFactory()
        cellTypeId = mapArray[cellPosition.getRow()][cellPosition.getColumn()]
        geographicMapCellType = GeographicMapCellTypeFactory.getInstance().get(geographicMapInterface.getCellTypeFromMapCellTypeInt(cellTypeId))
        raceTrackGeographicMapCellType = geographicMapCellType
        allBinaryTiledLayer = geographicMapInterface.getAllBinaryTiledLayer()
        pathFindingNodeCostInfoFactoryInterface = pathFindingInfo.getPathFindingNodeCostInfoFactoryInterface()
        basicGeographicMapUtil = BasicGeographicMapUtil.getInstance()
        row = 0
        column = 0
        goingToGeographicMapCellPosition = nil
        costFromStart = 0
        costToEnd = 0
        (0...@MAX_DIRECTIONS).each do |index|
            row = basicGeographicMapUtil.getBorderingRow(index, cellPosition)
            column = basicGeographicMapUtil.getBorderingColumn(index, cellPosition)
            if row < allBinaryTiledLayer.getRows() && column < allBinaryTiledLayer.getColumns() && row >= 0 && column >= 0
                goingToGeographicMapCellPosition = geographicMapCellPositionFactory.getAt(column, row)
                costFromStart = raceTrackGeographicMapCellType.getTravelCost()
                costToEnd = costFromStart
                pathFindingNodeCostInfoFactoryInterface.create(geographicMapInterface, goingToGeographicMapCellPosition, cellPosition, costFromStart, costToEnd)
            end
        end
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

require "org/allbinary/string/CommonStrings"
require "org/allbinary/logic/communication/log/PreLogUtil"
require "org/allbinary/game/layer/AllBinaryTiledLayer"
require "org/allbinary/media/graphics/geography/map/BasicGeographicMap"
require "org/allbinary/media/graphics/geography/map/BasicGeographicMapCellPositionFactory"
require "org/allbinary/media/graphics/geography/map/BasicGeographicMapUtil"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellType"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellTypeFactory"
require "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackGeographicMapCellType"
require "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackRoadsGeographicMapCellHistoryFactory"
require "org/allbinary/media/graphics/geography/pathfinding/PathFindingNodeCostInfoFactoryBase"
require "org/allbinary/media/graphics/geography/pathfinding/BasicGeographicMapGraph"
require "org/allbinary/media/graphics/geography/pathfinding/BasicGeographicMapPathFinder"
require "org/allbinary/media/graphics/geography/pathfinding/PathFinderGraphVisitorFactoryBase"
require "org/allbinary/media/graphics/geography/pathfinding/PathFindingInfo"
require "org/allbinary/media/graphics/geography/pathfinding/PathFindingNodeCostInfoFactory"
require "org/allbinary/util/BasicArrayListS"
require "org/allbinary/game/media/graphics/geography/map/racetrack/SimplePathFinderGraphVisitorFactory"

class PathFindingInfoFactory
    @@instance = nil
end

