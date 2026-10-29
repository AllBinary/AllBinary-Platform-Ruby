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

require "org/allbinary/media/graphics/geography/pathfinding/PathGeneratorInterface"

class PathGenerator
    include PathGeneratorInterface
    

    def self.getInstance()
        return PathGenerator::SINGLETON
    end
    

    def initialize()
    end
    

    # throws Exception
    def init(geographicMapInterface, totalPaths)
    end
    

    # throws Exception
    def getInstanceNoCache(geographicMapInterface, pathFindingInfo, totalPaths)
        geographicMapCellPositionBasicArrayList = self.create(geographicMapInterface, pathFindingInfo, totalPaths)
        return geographicMapCellPositionBasicArrayList
    end
    

    # throws Exception
    def createList(geographicMapInterface, geographicMapCellHistory, pathFindingInfo, totalPaths)
        raise RuntimeError.new()
    end
    

    # throws Exception
    def create(geographicMapInterface, pathFindingInfo, totalPaths)
        startPathFindingNodeList = pathFindingInfo.getStartPathFindingNodeList()
        endPathFindingNodeList = pathFindingInfo.getEndPathFindingNodeList()
        geographicPathFinderInterface = pathFindingInfo.getPathFinder()
        geographicMapCellPositionBasicArrayList = geographicPathFinderInterface.searchTotalPath(startPathFindingNodeList, endPathFindingNodeList, totalPaths)
        return geographicMapCellPositionBasicArrayList
    end
    

    # throws Exception
    def createN(geographicMapInterface, pathFindingInfo, totalPaths, multipassState)
        startPathFindingNodeList = pathFindingInfo.getStartPathFindingNodeList()
        endPathFindingNodeList = pathFindingInfo.getEndPathFindingNodeList()
        geographicPathFinderInterface = pathFindingInfo.getPathFinder()
        geographicMapCellPositionBasicArrayList = geographicPathFinderInterface.searchTotalPathN(startPathFindingNodeList, endPathFindingNodeList, totalPaths, multipassState)
        return geographicMapCellPositionBasicArrayList
    end
    

    # throws Exception
    def isValid(pathList, geographicMapCellHistory)
        raise RuntimeError.new()
    end
end

require "org/allbinary/media/graphics/geography/map/BasicGeographicMap"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellHistory"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/media/graphics/geography/pathfinding/GeographicPathFinderBase"
require "org/allbinary/media/graphics/geography/pathfinding/MultipassState"
require "org/allbinary/media/graphics/geography/pathfinding/PathFindingInfo"

class PathGenerator
    SINGLETON = PathGenerator.new()
end

