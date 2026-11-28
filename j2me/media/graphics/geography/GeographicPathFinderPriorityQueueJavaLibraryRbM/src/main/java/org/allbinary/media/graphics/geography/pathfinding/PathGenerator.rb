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
require "org/allbinary/media/graphics/geography/pathfinding/PathGeneratorInterface"

module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Pathfinding

class PathGenerator
    include PathGeneratorInterface
    

    def self.getInstance()
        return SINGLETON
    end
    

    def initialize()
    end
    

    # throws Exception
    def init(geographicMapInterface, totalPaths)
    end
    java_overload :init, 2
    

    # throws Exception
    def getInstanceNoCache(geographicMapInterface, pathFindingInfo, totalPaths)
        geographicMapCellPositionBasicArrayList = self.create(geographicMapInterface, pathFindingInfo, totalPaths)
        return geographicMapCellPositionBasicArrayList
    end
    java_overload :getInstanceNoCache, 3
    

    # throws Exception
    def createList(geographicMapInterface, geographicMapCellHistory, pathFindingInfo, totalPaths)
        raise RuntimeError.new()
    end
    java_overload :createList, 4
    

    # throws Exception
    def create(geographicMapInterface, pathFindingInfo, totalPaths)
        startPathFindingNodeList = pathFindingInfo.getStartPathFindingNodeList()
        endPathFindingNodeList = pathFindingInfo.getEndPathFindingNodeList()
        geographicPathFinderInterface = pathFindingInfo.getPathFinder()
        geographicMapCellPositionBasicArrayList = geographicPathFinderInterface.searchTotalPath(startPathFindingNodeList, endPathFindingNodeList, totalPaths)
        return geographicMapCellPositionBasicArrayList
    end
    java_overload :create, 3
    

    # throws Exception
    def createN(geographicMapInterface, pathFindingInfo, totalPaths, multipassState)
        startPathFindingNodeList = pathFindingInfo.getStartPathFindingNodeList()
        endPathFindingNodeList = pathFindingInfo.getEndPathFindingNodeList()
        geographicPathFinderInterface = pathFindingInfo.getPathFinder()
        geographicMapCellPositionBasicArrayList = geographicPathFinderInterface.searchTotalPathN(startPathFindingNodeList, endPathFindingNodeList, totalPaths, multipassState)
        return geographicMapCellPositionBasicArrayList
    end
    java_overload :createN, 4
    

    # throws Exception
    def isValid(pathList, geographicMapCellHistory)
        raise RuntimeError.new()
    end
    java_overload :isValid, 2

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:SINGLETON, PathGenerator.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "PathGenerator"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:SINGLETON].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :BasicGeographicMap, "org/allbinary/media/graphics/geography/map/BasicGeographicMap" unless const_defined?(:BasicGeographicMap, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellHistory, "org/allbinary/media/graphics/geography/map/GeographicMapCellHistory" unless const_defined?(:GeographicMapCellHistory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
autoload :GeographicPathFinderBase, "org/allbinary/media/graphics/geography/pathfinding/GeographicPathFinderBase" unless const_defined?(:GeographicPathFinderBase, false)
autoload :MultipassState, "org/allbinary/media/graphics/geography/pathfinding/MultipassState" unless const_defined?(:MultipassState, false)
autoload :PathFindingInfo, "org/allbinary/media/graphics/geography/pathfinding/PathFindingInfo" unless const_defined?(:PathFindingInfo, false)

begin
    PathGenerator.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

