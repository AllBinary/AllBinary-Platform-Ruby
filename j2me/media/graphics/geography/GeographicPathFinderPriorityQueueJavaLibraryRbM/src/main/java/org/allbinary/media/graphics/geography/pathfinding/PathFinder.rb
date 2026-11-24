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

require "java/lang/Object"
require "java/lang/JavaOverload"
require "org/allbinary/media/graphics/geography/pathfinding/GeographicPathFinderBase"

module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Pathfinding

class PathFinder < GeographicPathFinderBase
    attr_accessor :logUtil, :basicArrayListUtil, :mathUtil, :openPriorityQueue, :closedSet, :geographicMapInterface, :costArray

    def jfields_org_allbinary_media_graphics_geography_pathfinding_PathFinder
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @basicArrayListUtil = ::Org::Allbinary::Util::BasicArrayListUtil.getInstance()
        @mathUtil = ::Org::Allbinary::Logic::MathPackage::MathUtil.getInstance()
        @openPriorityQueue = ::Org::Allbinary::Util::ABPriorityQueue.new()
        @closedSet = ::Org::Allbinary::Util::ABHashSet.new()
        @geographicMapInterface = ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT
        @costArray = PathFindingNodeCost::NULL_PATH_FINDING_NODE_COST_ARRAY_ARRAY
    end

    def initialize
        super()
        jfields_org_allbinary_media_graphics_geography_pathfinding_PathFinder
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
                node = PathFindingNodeCost.new(::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT, basicGeographicMapCellPositionFactory.getAt(column, row), PathFindingNodeCostInfo.new(((raceTrackGeographicMapCellType.getTravelCost()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }), -1))
                @costArray[column][row] = node
            end
        end
    end
    java_overload :init, 1
    

    def searchTotalPath(startPathFindingNodeList, endPathFindingNodeList, totalPaths)
        begin
            return self.search(startPathFindingNodeList.get(0), endPathFindingNodeList.get(0))
        rescue StandardError => e
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, "search", e)
            return @basicArrayListUtil.getImmutableInstance()
        end
    end
    java_overload :searchTotalPath, 3
    

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
    java_overload :searchTotalPathN, 4
    

    # throws Exception
    def search(startPathFindingNode, endPathFindingNode)
        list = self.findPath(startPathFindingNode.geographicMapCellPosition, endPathFindingNode.geographicMapCellPosition)
        pathList = ::Org::Allbinary::Util::BasicArrayListD.new()
        pathList.add(list)
        return pathList
    end
    java_overload :search, 2
    

    # throws Exception
    def searchStart(startPathFindingNode, endPathFindingNode, multipassState)
        self.findPathStart(startPathFindingNode.geographicMapCellPosition, endPathFindingNode.geographicMapCellPosition, multipassState)
    end
    java_overload :searchStart, 3
    

    # throws Exception
    def searchN(startPathFindingNode, endPathFindingNode, multipassState)
        list = self.findPathEnd(startPathFindingNode.geographicMapCellPosition, endPathFindingNode.geographicMapCellPosition, multipassState)
        if list == nil
            return @basicArrayListUtil.getImmutableInstance()
        end
        pathList = ::Org::Allbinary::Util::BasicArrayListD.new()
        pathList.add(list)
        multipassState.iteration = 0
        multipassState.step = 0
        return pathList
    end
    java_overload :searchN, 3
    

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
                discoveryCalculation = ((@mathUtil.abs(column - targetColumn)).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }) + @mathUtil.abs(row - targetRow)
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
    java_overload :findPath, 2
    

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
                discoveryCalculation = ((@mathUtil.abs(column - targetColumn)).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }) + @mathUtil.abs(row - targetRow)
                node = @costArray[column][row]
                node.pathFindingNodeCostInfoP.totalCostP = 0
                node.pathFindingNodeCostInfoP.costToEndP = discoveryCalculation
            end
        end
        startNode = @costArray[start.getColumn()][start.getRow()]
        @openPriorityQueue.add(startNode)
        multipassState.step += 1
    end
    java_overload :findPathStart, 3
    

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
    java_overload :findPathEnd, 3
    

    def extractPath(start, current)
        path = ::Org::Allbinary::Util::BasicArrayListD.new()
        while current.parent != ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT
            path.add(current.geographicMapCellPosition)
            current = current.parent
        end
        path.add(start)
        @basicArrayListUtil.reverse(path)
        return path
    end
    java_overload :extractPath, 2
end

module ::Org; module Allbinary; module Game; module Layer; autoload :AllBinaryTiledLayer, "org/allbinary/game/layer/AllBinaryTiledLayer" unless const_defined?(:AllBinaryTiledLayer, false); end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :MathUtil, "org/allbinary/logic/math/MathUtil" unless const_defined?(:MathUtil, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :BasicGeographicMap, "org/allbinary/media/graphics/geography/map/BasicGeographicMap" unless const_defined?(:BasicGeographicMap, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :BasicGeographicMapCellPositionFactory, "org/allbinary/media/graphics/geography/map/BasicGeographicMapCellPositionFactory" unless const_defined?(:BasicGeographicMapCellPositionFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellPosition, "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition" unless const_defined?(:GeographicMapCellPosition, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellType, "org/allbinary/media/graphics/geography/map/GeographicMapCellType" unless const_defined?(:GeographicMapCellType, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; module Racetrack; autoload :RaceTrackGeographicMapCellType, "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackGeographicMapCellType" unless const_defined?(:RaceTrackGeographicMapCellType, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Util; autoload :ABHashSet, "org/allbinary/util/ABHashSet" unless const_defined?(:ABHashSet, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :ABPriorityQueue, "org/allbinary/util/ABPriorityQueue" unless const_defined?(:ABPriorityQueue, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListUtil, "org/allbinary/util/BasicArrayListUtil" unless const_defined?(:BasicArrayListUtil, false); end; end; end
autoload :MultipassState, "org/allbinary/media/graphics/geography/pathfinding/MultipassState" unless const_defined?(:MultipassState, false)
autoload :PathFindingNode, "org/allbinary/media/graphics/geography/pathfinding/PathFindingNode" unless const_defined?(:PathFindingNode, false)
autoload :PathFindingNodeCost, "org/allbinary/media/graphics/geography/pathfinding/PathFindingNodeCost" unless const_defined?(:PathFindingNodeCost, false)
autoload :PathFindingNodeCostInfo, "org/allbinary/media/graphics/geography/pathfinding/PathFindingNodeCostInfo" unless const_defined?(:PathFindingNodeCostInfo, false)

end; end; end; end; end; end

