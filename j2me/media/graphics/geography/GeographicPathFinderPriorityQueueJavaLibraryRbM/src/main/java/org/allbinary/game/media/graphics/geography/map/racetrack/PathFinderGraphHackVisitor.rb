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

require "org/allbinary/game/media/graphics/geography/map/racetrack/BasePathFinderGraphVisitor"

#1.4.2
class PathFinderGraphHackVisitor < BasePathFinderGraphVisitor
    

    def initialize(geographicMapInterface, edgeMinimum, minPathWeight, maxPathWeight)
        super(geographicMapInterface, edgeMinimum, minPathWeight, maxPathWeight)
    end
    

    # throws Exception
    def visit(graph, startPathFindingNodeList, endPathFindingNodeList)
        self.fixStart(graph, startPathFindingNodeList)
        self.fixEnd(graph, endPathFindingNodeList)
        self.fixOverPassEdges(graph)
    end
    

    # throws Exception
    def fixStart(graph, startPathFindingNodeList)
    end
    

    # throws Exception
    def fixEnd(graph, endPathFindingNodeList)
    end
    

    # throws Exception
    def fixOverPassEdges(graph)
    end
    

    # throws Exception
    def fixPath(startPathFindingNodeList, endPathFindingNodeList, pathList)
    end
    

    # throws Exception
    def removeOverPassEdges(pathList)
    end
    

    def isValid(graphPath)
        return false
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/media/graphics/geography/map/BasicGeographicMap"

