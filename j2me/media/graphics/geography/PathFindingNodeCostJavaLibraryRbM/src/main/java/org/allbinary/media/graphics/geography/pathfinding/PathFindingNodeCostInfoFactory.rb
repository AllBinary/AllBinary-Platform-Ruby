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

require "java/lang/JavaOverload"
require "org/allbinary/media/graphics/geography/pathfinding/PathFindingNodeCostInfoFactoryBase"

module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Pathfinding

class PathFindingNodeCostInfoFactory < PathFindingNodeCostInfoFactoryBase
    attr_accessor :pathFindingNodeCostInfoAdjacencyList

    def jfields_org_allbinary_media_graphics_geography_pathfinding_PathFindingNodeCostInfoFactory
        @pathFindingNodeCostInfoAdjacencyList = nil unless instance_variable_defined?(:@pathFindingNodeCostInfoAdjacencyList)
    end
    

    def initialize(max)
        super()
        jfields_org_allbinary_media_graphics_geography_pathfinding_PathFindingNodeCostInfoFactory
        @pathFindingNodeCostInfoAdjacencyList = Array.new(max) { Array.new(max, nil) }
    end
    

    # throws Exception
    def create(geographicMapInterface, goingToGeographicMapCellPosition, geographicMapCellPosition, costFromStart, costToEnd)
        self.getInstance(goingToGeographicMapCellPosition, geographicMapCellPosition, costFromStart, costToEnd)
    end
    java_overload :create, 5
    

    # throws Exception
    def getInstance_j4(goingToGeographicMapCellPosition, geographicMapCellPosition, costFromStart, costToEnd)
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
    

    def getInstance_j2(goingToFromGeographicMapCellPosition, geographicMapCellPosition)
        return @pathFindingNodeCostInfoAdjacencyList[geographicMapCellPosition.getId()][goingToFromGeographicMapCellPosition.getId()]
    end

    def getInstance(*java_overload_args)
        return getInstance_j4(*java_overload_args) if java_overload_args.length == 4
        return getInstance_j2(*java_overload_args) if java_overload_args.length == 2
        raise ArgumentError, "No method getInstance takes #{java_overload_args.length} arguments"
    end
    

    def getTotalCost(geographicMapInterface, comingFromGeographicMapCellPosition, geographicMapCellPosition)
        return self.getInstance(comingFromGeographicMapCellPosition, geographicMapCellPosition).totalCostP
    end
    java_overload :getTotalCost, 3
end

module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :BasicGeographicMap, "org/allbinary/media/graphics/geography/map/BasicGeographicMap" unless const_defined?(:BasicGeographicMap, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellPosition, "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition" unless const_defined?(:GeographicMapCellPosition, false); end; end; end; end; end; end
autoload :PathFindingNodeCostInfo, "org/allbinary/media/graphics/geography/pathfinding/PathFindingNodeCostInfo" unless const_defined?(:PathFindingNodeCostInfo, false)

end; end; end; end; end; end

