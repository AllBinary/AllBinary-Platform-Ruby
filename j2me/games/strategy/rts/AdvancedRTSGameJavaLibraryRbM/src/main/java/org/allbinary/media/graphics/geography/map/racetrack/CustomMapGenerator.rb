# 
# AllBinary Open License Version 1 
# Copyright (c) 2006 AllBinary 
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
# package org.allbinary.media.graphics.geography.map.racetrack

require "java/lang/JavaOverload"
require "org/allbinary/media/graphics/geography/map/racetrack/CustomMapGeneratorBase"

module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; module Racetrack

class CustomMapGenerator < CustomMapGeneratorBase
    attr_accessor :customMapArray, :raceTrackGeographicMap, :geographicMapCellTypeFactory, :dropCellPositionHistory

    def jfields_org_allbinary_media_graphics_geography_map_racetrack_CustomMapGenerator
        @customMapArray = nil unless instance_variable_defined?(:@customMapArray)
        @raceTrackGeographicMap = nil unless instance_variable_defined?(:@raceTrackGeographicMap)
        @geographicMapCellTypeFactory = nil unless instance_variable_defined?(:@geographicMapCellTypeFactory)
        @dropCellPositionHistory = ::Org::Allbinary::Media::Graphics::Geography::Map::Drop::DropCellPositionHistory.getInstance()
    end
    

    def initialize(raceTrackGeographicMap)
        super()
        jfields_org_allbinary_media_graphics_geography_map_racetrack_CustomMapGenerator
        @raceTrackGeographicMap = raceTrackGeographicMap
        @geographicMapCellTypeFactory = @raceTrackGeographicMap.getGeographicMapCellTypeFactory()
        mapArray = raceTrackGeographicMap.getRaceTrackData().getMapArray()
        size2 = mapArray[0].length
        @customMapArray = Array.new(mapArray.length) { Array.new(size2, 0) }
        if mapArray.length != @customMapArray.length || mapArray[0].length != @customMapArray[0].length
            raise StandardError.new("Array Incorrect")
        end
    end
    

    # throws Exception
    def copyMapIntoCustomMap()
        mapArray = @raceTrackGeographicMap.getRaceTrackData().getMapArray()
        startIndex2 = mapArray[0].length - 1
        (mapArray.length - 1).step(0, -(1)) do |index|
            (startIndex2).step(0, -(1)) do |index2|
                @customMapArray[index][index2] = self.getCustomType(index2, index, mapArray[index][index2])
            end
        end
    end
    java_overload :copyMapIntoCustomMap, 0
    

    # throws Exception
    def getCustomType(column, row, currentType)
        emptyType = @geographicMapCellTypeFactory.getEmptyType()
        geographicMapCellPositionFactory = @raceTrackGeographicMap.getGeographicMapCellPositionFactory()
        cellPosition = geographicMapCellPositionFactory.getAt(column, row)
        if @dropCellPositionHistory.isCellPositionWithDrop(cellPosition)
            layer = @dropCellPositionHistory.getLayerInterface(cellPosition)
            if layer == ::Org::Allbinary::Layer::AllBinaryLayer::NULL_ALLBINARY_LAYER
                return emptyType
            end
            rtsLayer = layer
            if !rtsLayer.getType() == ::Org::Allbinary::Game::Layer::Waypoint::WaypointLayer.getStaticType()
                return emptyType
            end
        end
        return currentType
    end
    java_overload :getCustomType, 3
    

    def getCustomMapArray()
        return @customMapArray
    end
    java_overload :getCustomMapArray, 0
end

module ::Org; module Allbinary; module Game; module Layer; autoload :AdvancedRTSGameLayer, "org/allbinary/game/layer/AdvancedRTSGameLayer" unless const_defined?(:AdvancedRTSGameLayer, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Waypoint; autoload :WaypointLayer, "org/allbinary/game/layer/waypoint/WaypointLayer" unless const_defined?(:WaypointLayer, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; autoload :CellPosition, "org/allbinary/graphics/CellPosition" unless const_defined?(:CellPosition, false); end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :BasicGeographicMapCellPositionFactory, "org/allbinary/media/graphics/geography/map/BasicGeographicMapCellPositionFactory" unless const_defined?(:BasicGeographicMapCellPositionFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellTypeFactory, "org/allbinary/media/graphics/geography/map/GeographicMapCellTypeFactory" unless const_defined?(:GeographicMapCellTypeFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; module Drop; autoload :DropCellPositionHistory, "org/allbinary/media/graphics/geography/map/drop/DropCellPositionHistory" unless const_defined?(:DropCellPositionHistory, false); end; end; end; end; end; end; end
autoload :RaceTrackGeographicMap, "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackGeographicMap" unless const_defined?(:RaceTrackGeographicMap, false)

end; end; end; end; end; end; end

