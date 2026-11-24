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

require "java/lang/JavaOverload"
require "org/allbinary/game/media/graphics/geography/map/racetrack/BasePathFinderGraphVisitor"

module ::Org; module Allbinary; module Game; module Media; module Graphics; module Geography; module Map; module Racetrack

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
    java_overload :visit, 3
    

    # throws Exception
    def fixStart(graph, startPathFindingNodeList)
    end
    java_overload :fixStart, 2
    

    # throws Exception
    def fixEnd(graph, endPathFindingNodeList)
    end
    java_overload :fixEnd, 2
    

    # throws Exception
    def fixOverPassEdges(graph)
    end
    java_overload :fixOverPassEdges, 1
    

    # throws Exception
    def fixPath(startPathFindingNodeList, endPathFindingNodeList, pathList)
    end
    java_overload :fixPath, 3
    

    # throws Exception
    def removeOverPassEdges(pathList)
    end
    java_overload :removeOverPassEdges, 1
    

    def isValid(graphPath)
        return false
    end
    java_overload :isValid, 1
end

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :BasicGeographicMap, "org/allbinary/media/graphics/geography/map/BasicGeographicMap" unless const_defined?(:BasicGeographicMap, false); end; end; end; end; end; end

end; end; end; end; end; end; end; end

