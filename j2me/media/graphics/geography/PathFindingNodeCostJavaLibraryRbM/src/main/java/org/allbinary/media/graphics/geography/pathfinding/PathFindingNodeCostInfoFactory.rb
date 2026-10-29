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
# package org.allbinary.media.graphics.geography.pathfinding

require "org/allbinary/media/graphics/geography/pathfinding/PathFindingNodeCostInfoFactoryBase"

class PathFindingNodeCostInfoFactory < PathFindingNodeCostInfoFactoryBase
    attr_accessor :pathFindingNodeCostInfoAdjacencyList

    def initialize_fields
        @pathFindingNodeCostInfoAdjacencyList = nil
    end
    

    def initialize(max)
        super()
        initialize_fields
        @pathFindingNodeCostInfoAdjacencyList = Array.new(max) { Array.new(max, nil) }
    end
    

    # throws Exception
    def create(geographicMapInterface, goingToGeographicMapCellPosition, geographicMapCellPosition, costFromStart, costToEnd)
        self.getInstance(goingToGeographicMapCellPosition, geographicMapCellPosition, costFromStart, costToEnd)
    end
    

    # throws Exception
    def getInstance(goingToGeographicMapCellPosition, geographicMapCellPosition, costFromStart, costToEnd)
        pathFindingNodeCostInfo = self.getInstance(goingToGeographicMapCellPosition, geographicMapCellPosition)
        if pathFindingNodeCostInfo == nil
            pathFindingNodeCostInfo = PathFindingNodeCostInfo.new(costFromStart, costToEnd)
            pathFindingNodeCostInfo.setCalculatedTotalCost()
            @pathFindingNodeCostInfoAdjacencyList[geographicMapCellPosition.getId()][goingToGeographicMapCellPosition.getId()] = pathFindingNodeCostInfo
        else
            pathFindingNodeCostInfo.setCostFromStart(costFromStart)
            pathFindingNodeCostInfo.setCostToEnd(costToEnd)
            pathFindingNodeCostInfo.setCalculatedTotalCost()
        end
        return pathFindingNodeCostInfo
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def getInstance(goingToFromGeographicMapCellPosition, geographicMapCellPosition)
        return @pathFindingNodeCostInfoAdjacencyList[geographicMapCellPosition.getId()][goingToFromGeographicMapCellPosition.getId()]
    end
    

    def getTotalCost(geographicMapInterface, comingFromGeographicMapCellPosition, geographicMapCellPosition)
        return self.getInstance(comingFromGeographicMapCellPosition, geographicMapCellPosition).totalCostP
    end
end

require "org/allbinary/media/graphics/geography/map/BasicGeographicMap"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition"
require "org/allbinary/media/graphics/geography/pathfinding/PathFindingNodeCostInfo"

