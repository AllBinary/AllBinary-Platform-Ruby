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

require "org/allbinary/game/media/graphics/geography/map/racetrack/BasePathFinderGraphVisitor"

class PathFinderGraphHackVisitor < BasePathFinderGraphVisitor
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end
    

    def initialize(geographicMapInterface, edgeMinimum, minPathWeight, maxPathWeight)
        super(geographicMapInterface, edgeMinimum, minPathWeight, maxPathWeight)
        initialize_fields
    end
    

    # throws Exception
    def visit(graph, startPathFindingNodeList, endPathFindingNodeList)
        self.fixStart(graph, startPathFindingNodeList)
        self.fixEnd(graph, endPathFindingNodeList)
        self.fixOverPassEdges(graph)
    end
    

    # throws Exception
    def fixStart(graph, startPathFindingNodeList)
        geographicMapCellPositionFactory = @geographicMapInterface.getGeographicMapCellPositionFactory()
        tiledLayer = @geographicMapInterface.getAllBinaryTiledLayer()
        (startPathFindingNodeList.size() - 1).step(0, -(1)) do |index|
            startPathFindingNode = startPathFindingNodeList.get(index)
            geographicMapCellPosition = startPathFindingNode.geographicMapCellPosition
            column = geographicMapCellPosition.getColumn()
            row = geographicMapCellPosition.getRow()
            nextRow = row + 1
            if tiledLayer.isOnTileLayer(column, nextRow)
                geographicMapCellPositionNeighbor = geographicMapCellPositionFactory.getAt(column, nextRow)
                graph.removeEdge(geographicMapCellPosition, geographicMapCellPositionNeighbor)
            end
        end
    end
    

    # throws Exception
    def fixEnd(graph, endPathFindingNodeList)
        geographicMapCellPositionFactory = @geographicMapInterface.getGeographicMapCellPositionFactory()
        tiledLayer = @geographicMapInterface.getAllBinaryTiledLayer()
        (endPathFindingNodeList.size() - 1).step(0, -(1)) do |index|
            endPathFindingNode = endPathFindingNodeList.get(index)
            geographicMapCellPosition = endPathFindingNode.geographicMapCellPosition
            graph.addVertex(geographicMapCellPosition)
            column = geographicMapCellPosition.getColumn()
            row = geographicMapCellPosition.getRow()
            nextRow = row + 1
            if tiledLayer.isOnTileLayer(column, nextRow)
                geographicMapCellPositionNeighbor = geographicMapCellPositionFactory.getAt(column, nextRow)
                graph.addEdge(geographicMapCellPosition, geographicMapCellPositionNeighbor)
            end
        end
    end
    

    # throws Exception
    def fixOverPassEdges(graph)
        geographicMapCellPositionFactory = @geographicMapInterface.getGeographicMapCellPositionFactory()
        raceTrackGeographicMap = @geographicMapInterface
        _CellPositionArray = raceTrackGeographicMap.getRaceTrackData().getOverPassGeographicMapCellPositionArray()
        (_CellPositionArray.length - 1).step(0, -(1)) do |index|
            overPassGeographicMapCellPosition = _CellPositionArray[index]
            @logUtil.putF("Fixing Over Pass: " + (overPassGeographicMapCellPosition.getColumn()).to_s + ", " + (overPassGeographicMapCellPosition.getRow()).to_s, self, "fixOverPassEdges")
            underPassGeographicMapCellPosition = geographicMapCellPositionFactory.getAt(overPassGeographicMapCellPosition.getColumn(), overPassGeographicMapCellPosition.getRow())
            rightUnderPassGeographicMapCellPosition = geographicMapCellPositionFactory.getAt(overPassGeographicMapCellPosition.getColumn() + 1, overPassGeographicMapCellPosition.getRow())
            leftUnderPassGeographicMapCellPosition = geographicMapCellPositionFactory.getAt(overPassGeographicMapCellPosition.getColumn() - 1, overPassGeographicMapCellPosition.getRow())
            graph.removeEdge(underPassGeographicMapCellPosition, rightUnderPassGeographicMapCellPosition)
            graph.removeEdge(underPassGeographicMapCellPosition, leftUnderPassGeographicMapCellPosition)
            graph.addVertex(overPassGeographicMapCellPosition)
            graph.addEdge(overPassGeographicMapCellPosition, rightUnderPassGeographicMapCellPosition)
            graph.addEdge(overPassGeographicMapCellPosition, leftUnderPassGeographicMapCellPosition)
        end
    end
    

    # throws Exception
    def fixPath(startPathFindingNodeList, endPathFindingNodeList, pathList)
        (startPathFindingNodeList.size() - 1).step(0, -(1)) do |index|
            endPathFindingNode = endPathFindingNodeList.get(index)
            startPathFindingNode = startPathFindingNodeList.get(index)
            if BasicGeographicMapUtil.getInstance().isSameCellPosition(startPathFindingNode.geographicMapCellPosition, endPathFindingNode.geographicMapCellPosition)
                if pathList.remove(endPathFindingNode.geographicMapCellPosition)
                    pathList.remove(startPathFindingNode.geographicMapCellPosition)
                    pathList.addAt(0, startPathFindingNode.geographicMapCellPosition)
                end
            end
        end
        self.removeOverPassEdges(pathList)
    end
    

    # throws Exception
    def removeOverPassEdges(pathList)
        geographicMapCellPositionFactory = @geographicMapInterface.getGeographicMapCellPositionFactory()
        raceTrackGeographicMap = @geographicMapInterface
        _CellPositionArray = raceTrackGeographicMap.getRaceTrackData().getOverPassGeographicMapCellPositionArray()
        (_CellPositionArray.length - 1).step(0, -(1)) do |index|
            overPassGeographicMapCellPosition = _CellPositionArray[index]
            underPassGeographicMapCellPosition = geographicMapCellPositionFactory.getAt(overPassGeographicMapCellPosition.getColumn(), overPassGeographicMapCellPosition.getRow())
            indexOf = pathList.indexOf(overPassGeographicMapCellPosition)
            if indexOf != -1
                pathList.set(indexOf, underPassGeographicMapCellPosition)
            end
        end
    end
    

    def isValid(graphPath)
        if graphPath.getEdgeList().size() > @edgeMinimum && graphPath.getWeight() < @maxPathWeight && graphPath.getWeight() > @minPathWeight
            return true
        else
            return false
        end
    end
end

require "org/jgrapht/GraphPath"
require "org/jgrapht/graph/DefaultWeightedEdge"
require "org/jgrapht/graph/SimpleWeightedGraph"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/game/layer/AllBinaryTiledLayer"
require "org/allbinary/graphics/CellPosition"
require "org/allbinary/media/graphics/geography/map/BasicGeographicMap"
require "org/allbinary/media/graphics/geography/map/BasicGeographicMapCellPositionFactory"
require "org/allbinary/media/graphics/geography/map/BasicGeographicMapUtil"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition"
require "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackGeographicMap"
require "org/allbinary/media/graphics/geography/pathfinding/PathFindingNode"

