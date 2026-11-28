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
require "org/allbinary/media/graphics/geography/map/racetrack/BasePathFindingInfoFactory"

module ::Org; module Allbinary; module Game; module Media; module Graphics; module Geography; module Map; module Racetrack

#1.4.2
class PathFindingInfoFactory < ::Org::Allbinary::Media::Graphics::Geography::Map::Racetrack::BasePathFindingInfoFactory
    attr_accessor :pathFindingInfo, :pathFinder

    def jfields_org_allbinary_game_media_graphics_geography_map_racetrack_PathFindingInfoFactory
        @pathFindingInfo = nil unless instance_variable_defined?(:@pathFindingInfo)
        @pathFinder = nil unless instance_variable_defined?(:@pathFinder)
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def self.initMax(max)
        (PathFindingInfoFactory.instance_exec(max) { |java_value| remove_const(:MAX) if const_defined?(:MAX, false); const_set(:MAX, java_value) })
    end
    

    def initialize()
        super()
        jfields_org_allbinary_game_media_graphics_geography_map_racetrack_PathFindingInfoFactory
        @pathFindingInfo = ::Org::Allbinary::Media::Graphics::Geography::Pathfinding::PathFindingInfo.new(::Org::Allbinary::Media::Graphics::Geography::Pathfinding::PathFindingNodeCostInfoFactory.new(MAX), ::Org::Allbinary::Util::BasicArrayListS.new(1), ::Org::Allbinary::Util::BasicArrayListS.new(1))
        @pathFinder = ::Org::Allbinary::Media::Graphics::Geography::Pathfinding::PathFinder.new()
    end
    

    # throws Exception
    def getInstancePathFindingInfo(geographicMapInterface, mapArray)
        pathFindingInfo = ::Org::Allbinary::Media::Graphics::Geography::Pathfinding::PathFindingInfo.new(@pathFindingInfo.getPathFindingNodeCostInfoFactoryInterface(), ::Org::Allbinary::Util::BasicArrayListS.new(1), ::Org::Allbinary::Util::BasicArrayListS.new(1))
        ::Org::Allbinary::Media::Graphics::Geography::Map::Racetrack::RaceTrackRoadsGeographicMapCellHistoryFactory.getInstance().init()
        self.init(geographicMapInterface, pathFindingInfo, mapArray)
        @pathFinder.init(geographicMapInterface)
        pathFindingInfo.setPathFinder(@pathFinder)
        return pathFindingInfo
    end
    java_overload :getInstancePathFindingInfo, 2
    

    # throws Exception
    def init(geographicMapInterface, pathFindingInfo, mapArray)
        PathFindingInfoFactory.superclass.java_super_method(:init, 3).bind(self).call(geographicMapInterface, pathFindingInfo, mapArray)
        self.buildPathFindingNodes(geographicMapInterface, pathFindingInfo, mapArray)
    end
    java_overload :init, 3
    

    # throws Exception
    def buildPathFindingNodesForCellPosition(geographicMapInterface, pathFindingInfo, mapArray, cellPosition)
    end
    java_overload :buildPathFindingNodesForCellPosition, 4
    

    # throws Exception
    def buildPathFindingNodes(geographicMapInterface, pathFindingInfo, mapArray)
        geographicMapCellPositionFactory = geographicMapInterface.getGeographicMapCellPositionFactory()
        allBinaryTiledLayer = geographicMapInterface.getAllBinaryTiledLayer()
        totalColumns = allBinaryTiledLayer.getColumns()
        totalRows = allBinaryTiledLayer.getRows()
        (0...totalColumns).each do |column|
            (0...totalRows).each do |row|
                self.buildPathFindingNodesForCellPosition(geographicMapInterface, pathFindingInfo, mapArray, geographicMapCellPositionFactory.getAt(column, row))
            end
        end
    end
    java_overload :buildPathFindingNodes, 3

    def self.instance()
        PathFindingInfoFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        PathFindingInfoFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:MAX, 32768)
        begin
            @@instance = PathFindingInfoFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "PathFindingInfoFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:MAX].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Game; module Layer; autoload :AllBinaryTiledLayer, "org/allbinary/game/layer/AllBinaryTiledLayer" unless const_defined?(:AllBinaryTiledLayer, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :BasicGeographicMap, "org/allbinary/media/graphics/geography/map/BasicGeographicMap" unless const_defined?(:BasicGeographicMap, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :BasicGeographicMapCellPositionFactory, "org/allbinary/media/graphics/geography/map/BasicGeographicMapCellPositionFactory" unless const_defined?(:BasicGeographicMapCellPositionFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellPosition, "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition" unless const_defined?(:GeographicMapCellPosition, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; module Racetrack; autoload :RaceTrackRoadsGeographicMapCellHistoryFactory, "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackRoadsGeographicMapCellHistoryFactory" unless const_defined?(:RaceTrackRoadsGeographicMapCellHistoryFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Pathfinding; autoload :PathFinder, "org/allbinary/media/graphics/geography/pathfinding/PathFinder" unless const_defined?(:PathFinder, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Pathfinding; autoload :PathFindingInfo, "org/allbinary/media/graphics/geography/pathfinding/PathFindingInfo" unless const_defined?(:PathFindingInfo, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Pathfinding; autoload :PathFindingNodeCostInfoFactory, "org/allbinary/media/graphics/geography/pathfinding/PathFindingNodeCostInfoFactory" unless const_defined?(:PathFindingNodeCostInfoFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListS, "org/allbinary/util/BasicArrayListS" unless const_defined?(:BasicArrayListS, false); end; end; end

begin
    PathFindingInfoFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end; end; end

