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

require "java/lang/JavaOverload"
require "org/allbinary/game/media/graphics/geography/map/racetrack/BasePathFinderGraphVisitor"

module ::Org; module Allbinary; module Game; module Media; module Graphics; module Geography; module Map; module Racetrack

class PathFinderGraphHackVisitor < BasePathFinderGraphVisitor
    attr_accessor :logUtil

    def jfields_org_allbinary_game_media_graphics_geography_map_racetrack_PathFinderGraphHackVisitor
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end
    

    def initialize(geographicMapInterface, edgeMinimum, minPathWeight, maxPathWeight)
        super(geographicMapInterface, edgeMinimum, minPathWeight, maxPathWeight)
        jfields_org_allbinary_game_media_graphics_geography_map_racetrack_PathFinderGraphHackVisitor
    end
    

    # throws Exception
    def visit(graph, startPathFindingNodeList, endPathFindingNodeList)
        self.fixStart(graph, startPathFindingNodeList)
        self.fixEnd(graph, endPathFindingNodeList)
        self.fixOverPassEdges(graph)
    end
    java_overload :visit, 3
    

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
    java_overload :fixStart, 2
    

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
    java_overload :fixEnd, 2
    

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
    java_overload :fixOverPassEdges, 1
    

    # throws Exception
    def fixPath(startPathFindingNodeList, endPathFindingNodeList, pathList)
        (startPathFindingNodeList.size() - 1).step(0, -(1)) do |index|
            endPathFindingNode = endPathFindingNodeList.get(index)
            startPathFindingNode = startPathFindingNodeList.get(index)
            if ::Org::Allbinary::Media::Graphics::Geography::Map::BasicGeographicMapUtil.getInstance().isSameCellPosition(startPathFindingNode.geographicMapCellPosition, endPathFindingNode.geographicMapCellPosition)
                if pathList.remove(endPathFindingNode.geographicMapCellPosition)
                    pathList.remove(startPathFindingNode.geographicMapCellPosition)
                    pathList.addAt(0, startPathFindingNode.geographicMapCellPosition)
                end
            end
        end
        self.removeOverPassEdges(pathList)
    end
    java_overload :fixPath, 3
    

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
    java_overload :removeOverPassEdges, 1
    

    def isValid(graphPath)
        if graphPath.getEdgeList().size() > @edgeMinimum && graphPath.getWeight() < @maxPathWeight && graphPath.getWeight() > @minPathWeight
            return true
        else
            return false
        end
    end
    java_overload :isValid, 1
end

module ::Org; module Jgrapht; autoload :GraphPath, "org/jgrapht/GraphPath" unless const_defined?(:GraphPath, false); end; end
module ::Org; module Jgrapht; module Graph; autoload :DefaultWeightedEdge, "org/jgrapht/graph/DefaultWeightedEdge" unless const_defined?(:DefaultWeightedEdge, false); end; end; end
module ::Org; module Jgrapht; module Graph; autoload :SimpleWeightedGraph, "org/jgrapht/graph/SimpleWeightedGraph" unless const_defined?(:SimpleWeightedGraph, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :AllBinaryTiledLayer, "org/allbinary/game/layer/AllBinaryTiledLayer" unless const_defined?(:AllBinaryTiledLayer, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; autoload :CellPosition, "org/allbinary/graphics/CellPosition" unless const_defined?(:CellPosition, false); end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :BasicGeographicMap, "org/allbinary/media/graphics/geography/map/BasicGeographicMap" unless const_defined?(:BasicGeographicMap, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :BasicGeographicMapCellPositionFactory, "org/allbinary/media/graphics/geography/map/BasicGeographicMapCellPositionFactory" unless const_defined?(:BasicGeographicMapCellPositionFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :BasicGeographicMapUtil, "org/allbinary/media/graphics/geography/map/BasicGeographicMapUtil" unless const_defined?(:BasicGeographicMapUtil, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellPosition, "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition" unless const_defined?(:GeographicMapCellPosition, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; module Racetrack; autoload :RaceTrackGeographicMap, "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackGeographicMap" unless const_defined?(:RaceTrackGeographicMap, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Pathfinding; autoload :PathFindingNode, "org/allbinary/media/graphics/geography/pathfinding/PathFindingNode" unless const_defined?(:PathFindingNode, false); end; end; end; end; end; end

end; end; end; end; end; end; end; end

