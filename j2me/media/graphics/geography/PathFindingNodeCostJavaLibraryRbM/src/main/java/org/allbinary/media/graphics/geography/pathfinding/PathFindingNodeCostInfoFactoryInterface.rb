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

require "org/allbinary/media/graphics/geography/pathfinding/PathFindingNodeCostInfoFactoryBaseInterface"

module PathFindingNodeCostInfoFactoryInterface
    include PathFindingNodeCostInfoFactoryBaseInterface
    

    # throws Exception
    def getInstance(comingFromGeographicMapCellPosition, geographicMapCellPosition, costFromStart, costToEnd)
        raise NotImplementedError
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def getInstance(comingFromGeographicMapCellPosition, geographicMapCellPosition)
        raise NotImplementedError
    end
    

    def getTotalCost(comingFromGeographicMapCellPosition, geographicMapCellPosition)
        raise NotImplementedError
    end
end

require "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition"
require "org/allbinary/media/graphics/geography/pathfinding/PathFindingNodeCostInfo"

