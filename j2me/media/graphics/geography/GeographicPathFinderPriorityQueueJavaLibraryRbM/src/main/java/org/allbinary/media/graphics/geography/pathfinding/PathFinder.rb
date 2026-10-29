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
# package org.allbinary.media.graphics.geography.pathfinding

# require "java/util/HashSet"
# require "java/util/PriorityQueue"
require "org/allbinary/media/graphics/geography/pathfinding/GeographicPathFinderBase"

class PathFinder < GeographicPathFinderBase
    attr_accessor :logUtil, :basicArrayListUtil, :mathUtil, :openPriorityQueue, :closedSet, :geographicMapInterface, :costArray

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @basicArrayListUtil = BasicArrayListUtil.getInstance()
        @mathUtil = MathUtil.getInstance()
        @openPriorityQueue = PriorityQueue.new()
        @closedSet = HashSet.new()
        @geographicMapInterface = NullUtil.getInstance().NULL_OBJECT
        @costArray = PathFindingNodeCost::NULL_PATH_FINDING_NODE_COST_ARRAY_ARRAY
    end

    def initialize
        super()
        initialize_fields
    end
    

    # throws Exception
    def init(geographicMapInterface)
        @geographicMapInterface = geographicMapInterface
        tiledLayer = geographicMapInterface.getAllBinaryTiledLayer()
        @costArray = Array.new(tiledLayer.getColumns()) { Array.new(tiledLayer.getRows(), nil) }
        basicGeographicMapCellPositionFactory = geographicMapInterface.getGeographicMapCellPositionFactory()
        node = nil
        sizeX = @costArray.length
        sizeY = @costArray[0].length
        (0...sizeX).each do |column|
            (0...sizeY).each do |row|
                geographicMapCellType = geographicMapInterface.getCellTypeAt(basicGeographicMapCellPositionFactory.getAt(column, row))
                raceTrackGeographicMapCellType = geographicMapCellType
                node = PathFindingNodeCost.new(NullUtil.getInstance().NULL_OBJECT, basicGeographicMapCellPositionFactory.getAt(column, row), PathFindingNodeCostInfo.new((raceTrackGeographicMapCellType.getTravelCost()).to_i, -1))
                @costArray[column][row] = node
            end
        end
    end
    

    def searchTotalPath(startPathFindingNodeList, endPathFindingNodeList, totalPaths)
        begin
            return self.search(startPathFindingNodeList.get(0), endPathFindingNodeList.get(0))
        rescue StandardError => e
            commonStrings = CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, "search", e)
            return @basicArrayListUtil.getImmutableInstance()
        end
    end
    

    # throws Exception
    def searchTotalPathN(startPathFindingNodeList, endPathFindingNodeList, totalPaths, multipassState)
        if multipassState.step == 0
            multipassState.step += 1
        elsif multipassState.step == 1
            self.searchStart(startPathFindingNodeList.get(0), endPathFindingNodeList.get(0), multipassState)
        elsif multipassState.step == 2
            return self.searchN(startPathFindingNodeList.get(0), endPathFindingNodeList.get(0), multipassState)
        end
        return @basicArrayListUtil.getImmutableInstance()
    end
    

    # throws Exception
    def search(startPathFindingNode, endPathFindingNode)
        list = self.findPath(startPathFindingNode.geographicMapCellPosition, endPathFindingNode.geographicMapCellPosition)
        pathList = BasicArrayListD.new()
        pathList.add(list)
        return pathList
    end
    

    # throws Exception
    def searchStart(startPathFindingNode, endPathFindingNode, multipassState)
        self.findPathStart(startPathFindingNode.geographicMapCellPosition, endPathFindingNode.geographicMapCellPosition, multipassState)
    end
    

    # throws Exception
    def searchN(startPathFindingNode, endPathFindingNode, multipassState)
        list = self.findPathEnd(startPathFindingNode.geographicMapCellPosition, endPathFindingNode.geographicMapCellPosition, multipassState)
        if list == nil
            return @basicArrayListUtil.getImmutableInstance()
        end
        pathList = BasicArrayListD.new()
        pathList.add(list)
        multipassState.iteration = 0
        multipassState.step = 0
        return pathList
    end
    

    # throws Exception
    def findPath(start, target)
        @openPriorityQueue.clear()
        @closedSet.clear()
        discoveryCalculation = 0
        node = nil
        targetColumn = target.getColumn()
        targetRow = target.getRow()
        sizeX = @costArray.length
        sizeY = @costArray[0].length
        (0...sizeX).each do |column|
            (0...sizeY).each do |row|
                discoveryCalculation = (@mathUtil.abs(column - targetColumn)).to_i + @mathUtil.abs(row - targetRow)
                node = @costArray[column][row]
                node.pathFindingNodeCostInfoP.totalCostP = 0
                node.pathFindingNodeCostInfoP.costToEndP = discoveryCalculation
            end
        end
        startNode = @costArray[start.getColumn()][start.getRow()]
        @openPriorityQueue.add(startNode)
        geographicMapInterface = @geographicMapInterface
        basicGeographicMapCellPositionFactory = geographicMapInterface.getGeographicMapCellPositionFactory()
        allBinaryTiledLayer = geographicMapInterface.getAllBinaryTiledLayer()
        targetNode = @costArray[target.getColumn()][target.getRow()]
        current = nil
        loop do
            current = @openPriorityQueue.poll()
            @closedSet.add(current)
            if current.equals(targetNode)
                return self.extractPath(start, current)
            end
            neighbor = nil
            neighborInfo = nil
            calculatedCost = 0
            (current.geographicMapCellPosition.getColumn() - 1...current.geographicMapCellPosition.getColumn() + 2).each do |column|
                (current.geographicMapCellPosition.getRow() - 1...current.geographicMapCellPosition.getRow() + 2).each do |row|
                    if column > 0 && row > 0 && column < allBinaryTiledLayer.getColumns() && row < allBinaryTiledLayer.getRows() && geographicMapInterface.isOnMap(basicGeographicMapCellPositionFactory.getAt(column, row))
                        neighbor = @costArray[column][row]
                        if @closedSet.contains(neighbor)
                            next
                        end
                        neighborInfo = neighbor.pathFindingNodeCostInfoP
                        calculatedCost = neighborInfo.costToEndP + neighborInfo.costFromStartP + current.pathFindingNodeCostInfoP.totalCostP
                        if calculatedCost < neighborInfo.totalCostP || !@openPriorityQueue.contains(neighbor)
                            neighborInfo.totalCostP = calculatedCost
                            neighbor.parent = current
                            if !@openPriorityQueue.contains(neighbor)
                                if geographicMapInterface.isOfFourDirections(current.geographicMapCellPosition, neighbor.geographicMapCellPosition)
                                    @openPriorityQueue.add(neighbor)
                                end
                            end
                        end
                    end
                end
            end
            break unless !@openPriorityQueue.isEmpty()
        end
        raise RuntimeError.new()
    end
    

    # throws Exception
    def findPathStart(start, target, multipassState)
        @openPriorityQueue.clear()
        @closedSet.clear()
        discoveryCalculation = 0
        node = nil
        targetColumn = target.getColumn()
        targetRow = target.getRow()
        sizeX = @costArray.length
        sizeY = @costArray[0].length
        (0...sizeX).each do |column|
            (0...sizeY).each do |row|
                discoveryCalculation = (@mathUtil.abs(column - targetColumn)).to_i + @mathUtil.abs(row - targetRow)
                node = @costArray[column][row]
                node.pathFindingNodeCostInfoP.totalCostP = 0
                node.pathFindingNodeCostInfoP.costToEndP = discoveryCalculation
            end
        end
        startNode = @costArray[start.getColumn()][start.getRow()]
        @openPriorityQueue.add(startNode)
        multipassState.step += 1
    end
    

    # throws Exception
    def findPathEnd(start, target, multipassState)
        geographicMapInterface = @geographicMapInterface
        basicGeographicMapCellPositionFactory = geographicMapInterface.getGeographicMapCellPositionFactory()
        allBinaryTiledLayer = geographicMapInterface.getAllBinaryTiledLayer()
        targetNode = @costArray[target.getColumn()][target.getRow()]
        current = nil
        total = 0
        loop do
            current = @openPriorityQueue.poll()
            @closedSet.add(current)
            if current.equals(targetNode)
                return self.extractPath(start, current)
            end
            neighbor = nil
            neighborInfo = nil
            calculatedCost = 0
            (current.geographicMapCellPosition.getColumn() - 1...current.geographicMapCellPosition.getColumn() + 2).each do |column|
                (current.geographicMapCellPosition.getRow() - 1...current.geographicMapCellPosition.getRow() + 2).each do |row|
                    if column > 0 && row > 0 && column < allBinaryTiledLayer.getColumns() && row < allBinaryTiledLayer.getRows() && geographicMapInterface.isOnMap(basicGeographicMapCellPositionFactory.getAt(column, row))
                        neighbor = @costArray[column][row]
                        if @closedSet.contains(neighbor)
                            next
                        end
                        neighborInfo = neighbor.pathFindingNodeCostInfoP
                        calculatedCost = neighborInfo.costToEndP + neighborInfo.costFromStartP + current.pathFindingNodeCostInfoP.totalCostP
                        if calculatedCost < neighborInfo.totalCostP || !@openPriorityQueue.contains(neighbor)
                            neighborInfo.totalCostP = calculatedCost
                            neighbor.parent = current
                            if !@openPriorityQueue.contains(neighbor)
                                if geographicMapInterface.isOfFourDirections(current.geographicMapCellPosition, neighbor.geographicMapCellPosition)
                                    @openPriorityQueue.add(neighbor)
                                end
                            end
                        end
                    end
                end
            end
            total += 1
            if total > 10
                return @basicArrayListUtil.getImmutableInstance()
            end
            break unless !@openPriorityQueue.isEmpty()
        end
        raise RuntimeError.new()
    end
    

    def extractPath(start, current)
        path = BasicArrayListD.new()
        while current.parent != NullUtil.getInstance().NULL_OBJECT
            path.add(current.geographicMapCellPosition)
            current = current.parent
        end
        path.add(start)
        @basicArrayListUtil.reverse(path)
        return path
    end
end

require "org/allbinary/game/layer/AllBinaryTiledLayer"
require "org/allbinary/logic/NullUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/math/MathUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/media/graphics/geography/map/BasicGeographicMap"
require "org/allbinary/media/graphics/geography/map/BasicGeographicMapCellPositionFactory"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellType"
require "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackGeographicMapCellType"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/util/BasicArrayListUtil"
require "org/allbinary/media/graphics/geography/pathfinding/MultipassState"
require "org/allbinary/media/graphics/geography/pathfinding/PathFindingNode"
require "org/allbinary/media/graphics/geography/pathfinding/PathFindingNodeCost"
require "org/allbinary/media/graphics/geography/pathfinding/PathFindingNodeCostInfo"

