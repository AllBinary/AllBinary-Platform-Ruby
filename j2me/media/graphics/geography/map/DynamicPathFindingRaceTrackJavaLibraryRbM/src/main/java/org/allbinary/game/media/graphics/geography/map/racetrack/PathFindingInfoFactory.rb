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

class PathFindingInfoFactory < ::Org::Allbinary::Media::Graphics::Geography::Map::Racetrack::BasePathFindingInfoFactory
    attr_accessor :MAX_DIRECTIONS, :pathFindingInfo, :basicGeographicMapGraph, :basicGeographicMapPathFinder, :pathFinderGraphVisitorFactoryInterface

    def jfields_org_allbinary_game_media_graphics_geography_map_racetrack_PathFindingInfoFactory
        @MAX_DIRECTIONS = 4
        @pathFindingInfo = nil unless instance_variable_defined?(:@pathFindingInfo)
        @basicGeographicMapGraph = nil unless instance_variable_defined?(:@basicGeographicMapGraph)
        @basicGeographicMapPathFinder = nil unless instance_variable_defined?(:@basicGeographicMapPathFinder)
        @pathFinderGraphVisitorFactoryInterface = nil unless instance_variable_defined?(:@pathFinderGraphVisitorFactoryInterface)
    end
    

    def self.getInstance()
        return PathFindingInfoFactory.instance
    end
    

    def self.initMax(max)
        PathFindingInfoFactory.instance = PathFindingInfoFactory.new(SimplePathFinderGraphVisitorFactory.new(1, 1, 2147483647), max)
    end
    

    def initialize(pathFinderGraphVisitorFactoryInterface, max)
        super()
        jfields_org_allbinary_game_media_graphics_geography_map_racetrack_PathFindingInfoFactory
        commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put("Using Dynamic Path Finding", self, commonStrings.GET_INSTANCE)
        @basicGeographicMapPathFinder = ::Org::Allbinary::Media::Graphics::Geography::Pathfinding::BasicGeographicMapPathFinder.new(max)
        @pathFindingInfo = ::Org::Allbinary::Media::Graphics::Geography::Pathfinding::PathFindingInfo.new(::Org::Allbinary::Media::Graphics::Geography::Pathfinding::PathFindingNodeCostInfoFactory.new(max), ::Org::Allbinary::Util::BasicArrayListS.new(1), ::Org::Allbinary::Util::BasicArrayListS.new(1))
        @basicGeographicMapGraph = ::Org::Allbinary::Media::Graphics::Geography::Pathfinding::BasicGeographicMapGraph.new(@pathFindingInfo.getPathFindingNodeCostInfoFactoryInterface())
        @pathFinderGraphVisitorFactoryInterface = pathFinderGraphVisitorFactoryInterface
    end
    

    # throws Exception
    def getInstancePathFindingInfo(geographicMapInterface, mapArray)
        pathFindingInfo = ::Org::Allbinary::Media::Graphics::Geography::Pathfinding::PathFindingInfo.new(@pathFindingInfo.getPathFindingNodeCostInfoFactoryInterface(), ::Org::Allbinary::Util::BasicArrayListS.new(1), ::Org::Allbinary::Util::BasicArrayListS.new(1))
        ::Org::Allbinary::Media::Graphics::Geography::Map::Racetrack::RaceTrackRoadsGeographicMapCellHistoryFactory.getInstance().init()
        self.init(geographicMapInterface, pathFindingInfo, mapArray)
        @basicGeographicMapPathFinder.init(geographicMapInterface, @basicGeographicMapGraph, @pathFinderGraphVisitorFactoryInterface.getInstance(geographicMapInterface))
        pathFindingInfo.setPathFinder(@basicGeographicMapPathFinder)
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
        geographicMapCellPositionFactory = geographicMapInterface.getGeographicMapCellPositionFactory()
        cellTypeId = mapArray[cellPosition.getRow()][cellPosition.getColumn()]
        geographicMapCellType = ::Org::Allbinary::Media::Graphics::Geography::Map::GeographicMapCellTypeFactory.getInstance().get(geographicMapInterface.getCellTypeFromMapCellTypeInt(cellTypeId))
        raceTrackGeographicMapCellType = geographicMapCellType
        allBinaryTiledLayer = geographicMapInterface.getAllBinaryTiledLayer()
        pathFindingNodeCostInfoFactoryInterface = pathFindingInfo.getPathFindingNodeCostInfoFactoryInterface()
        basicGeographicMapUtil = ::Org::Allbinary::Media::Graphics::Geography::Map::BasicGeographicMapUtil.getInstance()
        row = 0
        column = 0
        goingToGeographicMapCellPosition = nil
        costFromStart = 0
        costToEnd = 0
        (0...@MAX_DIRECTIONS).each do |index|
            row = basicGeographicMapUtil.getBorderingRow(index, cellPosition)
            column = basicGeographicMapUtil.getBorderingColumn(index, cellPosition)
            if row < allBinaryTiledLayer.getRows() && column < allBinaryTiledLayer.getColumns() && row >= 0 && column >= 0
                goingToGeographicMapCellPosition = geographicMapCellPositionFactory.getAt(column, row)
                costFromStart = raceTrackGeographicMapCellType.getTravelCost()
                costToEnd = costFromStart
                pathFindingNodeCostInfoFactoryInterface.create(geographicMapInterface, goingToGeographicMapCellPosition, cellPosition, costFromStart, costToEnd)
            end
        end
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
        begin
            @@instance = nil
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "PathFindingInfoFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil" unless const_defined?(:PreLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :AllBinaryTiledLayer, "org/allbinary/game/layer/AllBinaryTiledLayer" unless const_defined?(:AllBinaryTiledLayer, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :BasicGeographicMap, "org/allbinary/media/graphics/geography/map/BasicGeographicMap" unless const_defined?(:BasicGeographicMap, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :BasicGeographicMapCellPositionFactory, "org/allbinary/media/graphics/geography/map/BasicGeographicMapCellPositionFactory" unless const_defined?(:BasicGeographicMapCellPositionFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :BasicGeographicMapUtil, "org/allbinary/media/graphics/geography/map/BasicGeographicMapUtil" unless const_defined?(:BasicGeographicMapUtil, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellPosition, "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition" unless const_defined?(:GeographicMapCellPosition, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellType, "org/allbinary/media/graphics/geography/map/GeographicMapCellType" unless const_defined?(:GeographicMapCellType, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellTypeFactory, "org/allbinary/media/graphics/geography/map/GeographicMapCellTypeFactory" unless const_defined?(:GeographicMapCellTypeFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; module Racetrack; autoload :RaceTrackGeographicMapCellType, "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackGeographicMapCellType" unless const_defined?(:RaceTrackGeographicMapCellType, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; module Racetrack; autoload :RaceTrackRoadsGeographicMapCellHistoryFactory, "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackRoadsGeographicMapCellHistoryFactory" unless const_defined?(:RaceTrackRoadsGeographicMapCellHistoryFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Pathfinding; autoload :PathFindingNodeCostInfoFactoryBase, "org/allbinary/media/graphics/geography/pathfinding/PathFindingNodeCostInfoFactoryBase" unless const_defined?(:PathFindingNodeCostInfoFactoryBase, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Pathfinding; autoload :BasicGeographicMapGraph, "org/allbinary/media/graphics/geography/pathfinding/BasicGeographicMapGraph" unless const_defined?(:BasicGeographicMapGraph, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Pathfinding; autoload :BasicGeographicMapPathFinder, "org/allbinary/media/graphics/geography/pathfinding/BasicGeographicMapPathFinder" unless const_defined?(:BasicGeographicMapPathFinder, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Pathfinding; autoload :PathFinderGraphVisitorFactoryBase, "org/allbinary/media/graphics/geography/pathfinding/PathFinderGraphVisitorFactoryBase" unless const_defined?(:PathFinderGraphVisitorFactoryBase, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Pathfinding; autoload :PathFindingInfo, "org/allbinary/media/graphics/geography/pathfinding/PathFindingInfo" unless const_defined?(:PathFindingInfo, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Pathfinding; autoload :PathFindingNodeCostInfoFactory, "org/allbinary/media/graphics/geography/pathfinding/PathFindingNodeCostInfoFactory" unless const_defined?(:PathFindingNodeCostInfoFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListS, "org/allbinary/util/BasicArrayListS" unless const_defined?(:BasicArrayListS, false); end; end; end
autoload :SimplePathFinderGraphVisitorFactory, "org/allbinary/game/media/graphics/geography/map/racetrack/SimplePathFinderGraphVisitorFactory" unless const_defined?(:SimplePathFinderGraphVisitorFactory, false)

begin
    PathFindingInfoFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end; end; end

