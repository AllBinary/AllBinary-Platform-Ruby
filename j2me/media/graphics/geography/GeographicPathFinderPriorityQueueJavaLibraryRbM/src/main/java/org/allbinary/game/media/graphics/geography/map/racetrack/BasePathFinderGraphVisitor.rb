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

require "org/allbinary/media/graphics/geography/pathfinding/PathFinderGraphVisitorBase"

#1.4.2
class BasePathFinderGraphVisitor < PathFinderGraphVisitorBase
    attr_accessor :geographicMapInterface, :edgeMinimum, :minPathWeight, :maxPathWeight

    def initialize_fields
        @geographicMapInterface = nil
        @edgeMinimum = nil
        @minPathWeight = nil
        @maxPathWeight = nil
    end
    

    def initialize(geographicMapInterface, edgeMinimum, minPathWeight, maxPathWeight)
        super()
        initialize_fields
        @geographicMapInterface = geographicMapInterface
        @edgeMinimum = edgeMinimum
        @minPathWeight = minPathWeight
        @maxPathWeight = maxPathWeight
    end
    

    # throws Exception
    def visit(graph, startPathFindingNodeList, endPathFindingNodeList)
    end
    

    # throws Exception
    def fixPath(startPathFindingNodeList, endPathFindingNodeList, pathList)
        startPathFindingNode = nil
        (startPathFindingNodeList.size() - 1).step(0, -(1)) do |index|
            startPathFindingNode = startPathFindingNodeList.get(index)
            pathList.remove(startPathFindingNode.geographicMapCellPosition)
            pathList.addAt(0, startPathFindingNode.geographicMapCellPosition)
        end
    end
    

    def isValid(graphPath)
        return false
    end
    

    def getInvalidReason(graphPath)
        return StringUtil.getInstance().EMPTY_STRING
    end
end

require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/media/graphics/geography/map/BasicGeographicMap"
require "org/allbinary/media/graphics/geography/pathfinding/PathFindingNode"
require "org/allbinary/util/BasicArrayList"

