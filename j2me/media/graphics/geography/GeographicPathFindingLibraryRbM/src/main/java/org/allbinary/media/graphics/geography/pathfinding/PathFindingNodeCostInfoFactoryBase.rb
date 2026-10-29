# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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

require "org/allbinary/media/graphics/geography/pathfinding/PathFindingNodeCostInfoFactoryBaseInterface"

class PathFindingNodeCostInfoFactoryBase
    include PathFindingNodeCostInfoFactoryBaseInterface
    

    # throws Exception
    def create(geographicMapInterface, comingFromGeographicMapCellPosition, geographicMapCellPosition, costFromStart, costToEnd)
        raise RuntimeError.new()
    end
    

    # throws Exception
    def getTotalCost(geographicMapInterface, comingFromGeographicMapCellPosition, geographicMapCellPosition)
        raise RuntimeError.new()
    end
end

require "org/allbinary/media/graphics/geography/map/BasicGeographicMap"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition"

class PathFindingNodeCostInfoFactoryBase
    NULL_PATH_FINDING_NODE_COST_INFO_FACTORY_BASE = PathFindingNodeCostInfoFactoryBase.new()
end

