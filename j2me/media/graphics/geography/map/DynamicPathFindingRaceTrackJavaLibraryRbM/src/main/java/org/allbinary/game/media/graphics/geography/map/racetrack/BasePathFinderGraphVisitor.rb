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
require "org/allbinary/media/graphics/geography/pathfinding/PathFinderGraphVisitorBase"

module ::Org; module Allbinary; module Game; module Media; module Graphics; module Geography; module Map; module Racetrack

class BasePathFinderGraphVisitor < ::Org::Allbinary::Media::Graphics::Geography::Pathfinding::PathFinderGraphVisitorBase
    attr_accessor :geographicMapInterface, :edgeMinimum, :minPathWeight, :maxPathWeight

    def jfields_org_allbinary_game_media_graphics_geography_map_racetrack_BasePathFinderGraphVisitor
        @geographicMapInterface = nil unless instance_variable_defined?(:@geographicMapInterface)
        @edgeMinimum = nil unless instance_variable_defined?(:@edgeMinimum)
        @minPathWeight = nil unless instance_variable_defined?(:@minPathWeight)
        @maxPathWeight = nil unless instance_variable_defined?(:@maxPathWeight)
    end
    

    def initialize(geographicMapInterface, edgeMinimum, minPathWeight, maxPathWeight)
        super()
        jfields_org_allbinary_game_media_graphics_geography_map_racetrack_BasePathFinderGraphVisitor
        @geographicMapInterface = geographicMapInterface
        @edgeMinimum = edgeMinimum
        @minPathWeight = minPathWeight
        @maxPathWeight = maxPathWeight
    end
    

    # throws Exception
    def visit(graph, startPathFindingNodeList, endPathFindingNodeList)
    end
    java_overload :visit, 3
    

    # throws Exception
    def fixPath(startPathFindingNodeList, endPathFindingNodeList, pathList)
        (startPathFindingNodeList.size() - 1).step(0, -(1)) do |index|
            startPathFindingNode = startPathFindingNodeList.get(index)
            pathList.remove(startPathFindingNode.geographicMapCellPosition)
            pathList.addAt(0, startPathFindingNode.geographicMapCellPosition)
        end
    end
    java_overload :fixPath, 3
    

    def isValid(graphPath)
        if graphPath.getEdgeList().size() > @edgeMinimum && graphPath.getWeight() < @maxPathWeight && graphPath.getWeight() > @minPathWeight
            return true
        else
            return false
        end
    end
    java_overload :isValid, 1
    

    def getInvalidReason(graphPath)
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        if graphPath.getEdgeList().size() < @edgeMinimum
            stringBuffer.append("Ignoring Small: " + (graphPath.getEdgeList().size()).to_s)
        end
        if graphPath.getWeight() <= @minPathWeight
            stringBuffer.append(" Low Weighted Path: " + (graphPath.getWeight()).to_s)
        end
        if graphPath.getWeight() >= @maxPathWeight
            stringBuffer.append(" To High Weighted Path: " + (graphPath.getWeight()).to_s)
        end
        return stringBuffer.to_s
    end
    java_overload :getInvalidReason, 1
end

module ::Org; module Jgrapht; autoload :GraphPath, "org/jgrapht/GraphPath" unless const_defined?(:GraphPath, false); end; end
module ::Org; module Jgrapht; module Graph; autoload :SimpleWeightedGraph, "org/jgrapht/graph/SimpleWeightedGraph" unless const_defined?(:SimpleWeightedGraph, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :BasicGeographicMap, "org/allbinary/media/graphics/geography/map/BasicGeographicMap" unless const_defined?(:BasicGeographicMap, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Pathfinding; autoload :PathFindingNode, "org/allbinary/media/graphics/geography/pathfinding/PathFindingNode" unless const_defined?(:PathFindingNode, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end

end; end; end; end; end; end; end; end

