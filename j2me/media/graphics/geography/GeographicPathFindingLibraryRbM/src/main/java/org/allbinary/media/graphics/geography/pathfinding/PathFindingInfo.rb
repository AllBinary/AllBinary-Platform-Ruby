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

require "java/lang/JavaOverload"
require "org/allbinary/media/graphics/geography/pathfinding/PathFindingInfoInterface"

module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Pathfinding

class PathFindingInfo
    include PathFindingInfoInterface
    attr_accessor :pathFinder, :startPathFindingNodeList, :endPathFindingNodeList, :pathFindingNodeCostInfoFactoryInterface

    def jfields_org_allbinary_media_graphics_geography_pathfinding_PathFindingInfo
        @pathFinder = GeographicPathFinderBase::NULL_GEOGRAPHIC_PATH_FINDER_BASE
        @startPathFindingNodeList = nil unless instance_variable_defined?(:@startPathFindingNodeList)
        @endPathFindingNodeList = nil unless instance_variable_defined?(:@endPathFindingNodeList)
        @pathFindingNodeCostInfoFactoryInterface = nil unless instance_variable_defined?(:@pathFindingNodeCostInfoFactoryInterface)
    end
    

    def initialize(pathFindingNodeCostInfoFactoryInterface, startPathFindingNodeList, endPathFindingNodeList)
        jfields_org_allbinary_media_graphics_geography_pathfinding_PathFindingInfo
        @pathFindingNodeCostInfoFactoryInterface = pathFindingNodeCostInfoFactoryInterface
        @startPathFindingNodeList = startPathFindingNodeList
        @endPathFindingNodeList = endPathFindingNodeList
    end
    

    def getStartPathFindingNodeList()
        return @startPathFindingNodeList
    end
    java_overload :getStartPathFindingNodeList, 0
    

    def getEndPathFindingNodeList()
        return @endPathFindingNodeList
    end
    java_overload :getEndPathFindingNodeList, 0
    

    def getPathFinder()
        return @pathFinder
    end
    java_overload :getPathFinder, 0
    

    def addStartPathFindingNode(startPathFindingNode)
        @startPathFindingNodeList.add(startPathFindingNode)
    end
    java_overload :addStartPathFindingNode, 1
    

    def addEndPathFindingNode(endPathFindingNode)
        @endPathFindingNodeList.add(endPathFindingNode)
    end
    java_overload :addEndPathFindingNode, 1
    

    def setPathFinder(pathFinder)
        @pathFinder = pathFinder
    end
    java_overload :setPathFinder, 1
    

    def getPathFindingNodeCostInfoFactoryInterface()
        return @pathFindingNodeCostInfoFactoryInterface
    end
    java_overload :getPathFindingNodeCostInfoFactoryInterface, 0

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_PATH_FINDING_INFO, PathFindingInfo.new(PathFindingNodeCostInfoFactoryBase::NULL_PATH_FINDING_NODE_COST_INFO_FACTORY_BASE, ::Org::Allbinary::Util::BasicArrayListUtil.getInstance().getImmutableInstance(), ::Org::Allbinary::Util::BasicArrayListUtil.getInstance().getImmutableInstance()))
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "PathFindingInfo"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_PATH_FINDING_INFO].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListUtil, "org/allbinary/util/BasicArrayListUtil" unless const_defined?(:BasicArrayListUtil, false); end; end; end
autoload :GeographicPathFinderBase, "org/allbinary/media/graphics/geography/pathfinding/GeographicPathFinderBase" unless const_defined?(:GeographicPathFinderBase, false)
autoload :PathFindingNode, "org/allbinary/media/graphics/geography/pathfinding/PathFindingNode" unless const_defined?(:PathFindingNode, false)
autoload :PathFindingNodeCostInfoFactoryBase, "org/allbinary/media/graphics/geography/pathfinding/PathFindingNodeCostInfoFactoryBase" unless const_defined?(:PathFindingNodeCostInfoFactoryBase, false)

begin
    PathFindingInfo.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

