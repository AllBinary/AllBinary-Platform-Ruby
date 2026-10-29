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

require "org/allbinary/media/graphics/geography/pathfinding/PathFindingInfoInterface"

class PathFindingInfo
    include PathFindingInfoInterface
    attr_accessor :pathFinder, :startPathFindingNodeList, :endPathFindingNodeList, :pathFindingNodeCostInfoFactoryInterface

    def initialize_fields
        @pathFinder = GeographicPathFinderBase::NULL_GEOGRAPHIC_PATH_FINDER_BASE
        @startPathFindingNodeList = nil
        @endPathFindingNodeList = nil
        @pathFindingNodeCostInfoFactoryInterface = nil
    end
    

    def initialize(pathFindingNodeCostInfoFactoryInterface, startPathFindingNodeList, endPathFindingNodeList)
        initialize_fields
        @pathFindingNodeCostInfoFactoryInterface = pathFindingNodeCostInfoFactoryInterface
        @startPathFindingNodeList = startPathFindingNodeList
        @endPathFindingNodeList = endPathFindingNodeList
    end
    

    def getStartPathFindingNodeList()
        return @startPathFindingNodeList
    end
    

    def getEndPathFindingNodeList()
        return @endPathFindingNodeList
    end
    

    def getPathFinder()
        return @pathFinder
    end
    

    def addStartPathFindingNode(startPathFindingNode)
        @startPathFindingNodeList.add(startPathFindingNode)
    end
    

    def addEndPathFindingNode(endPathFindingNode)
        @endPathFindingNodeList.add(endPathFindingNode)
    end
    

    def setPathFinder(pathFinder)
        @pathFinder = pathFinder
    end
    

    def getPathFindingNodeCostInfoFactoryInterface()
        return @pathFindingNodeCostInfoFactoryInterface
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListUtil"
require "org/allbinary/media/graphics/geography/pathfinding/GeographicPathFinderBase"
require "org/allbinary/media/graphics/geography/pathfinding/PathFindingNode"
require "org/allbinary/media/graphics/geography/pathfinding/PathFindingNodeCostInfoFactoryBase"

class PathFindingInfo
    NULL_PATH_FINDING_INFO = PathFindingInfo.new(PathFindingNodeCostInfoFactoryBase::NULL_PATH_FINDING_NODE_COST_INFO_FACTORY_BASE, BasicArrayListUtil.getInstance().getImmutableInstance(), BasicArrayListUtil.getInstance().getImmutableInstance())
end

