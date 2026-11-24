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
# package org.allbinary.media.graphics.geography.map.racetrack.drop

require "java/lang/JavaOverload"
require "org/allbinary/media/graphics/geography/map/drop/BaseDropCellPositionGenerator"

module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; module Racetrack; module Drop

class RaceTrackDropCellPositionGenerator < ::Org::Allbinary::Media::Graphics::Geography::Map::Drop::BaseDropCellPositionGenerator
    attr_accessor :list, :timeDelayHelper, :STRAIGHTAWAY, :raceTrackGeographicMap, :raceTrackGeographicMapCellTypeFactory, :basicArrayListUtil

    def jfields_org_allbinary_media_graphics_geography_map_racetrack_drop_RaceTrackDropCellPositionGenerator
        @list = ::Org::Allbinary::Util::BasicArrayListD.new()
        @timeDelayHelper = nil unless instance_variable_defined?(:@timeDelayHelper)
        @STRAIGHTAWAY = 4
        @raceTrackGeographicMap = ::Org::Allbinary::Media::Graphics::Geography::Map::Racetrack::NullRaceTrackGeographicMap::NULL_RACE_TRACK_GEOGRAPHIC_MAP
        @raceTrackGeographicMapCellTypeFactory = ::Org::Allbinary::Media::Graphics::Geography::Map::GeographicMapCellTypeFactory.getInstance()
        @basicArrayListUtil = ::Org::Allbinary::Util::BasicArrayListUtil.getInstance()
    end
    

    def initialize()
        super()
        jfields_org_allbinary_media_graphics_geography_map_racetrack_drop_RaceTrackDropCellPositionGenerator
        @timeDelayHelper = ::Org::Allbinary::TimePackage::TimeDelayHelper.new(10000)
    end
    

    def init()
        @list.clear()
    end
    java_overload :init, 0
    

    # throws Exception
    def isDropAllowedAt(geographicMapCellPosition)
        raceTrackGeographicMapCellType = @raceTrackGeographicMap.getCellTypeAt(geographicMapCellPosition)
        raceTrackGeographicMapCellTypeFactory = @raceTrackGeographicMapCellTypeFactory
        if raceTrackGeographicMapCellType == raceTrackGeographicMapCellTypeFactory.HORIZONTAL_STRAIGHT_ROAD_CELL_TYPE || raceTrackGeographicMapCellType == raceTrackGeographicMapCellTypeFactory.VERTICAL_STRAIGHT_ROAD_CELL_TYPE
            return true
        end
        return false
    end
    java_overload :isDropAllowedAt, 1
    

    # throws Exception
    def update(allBinaryGameLayerManager, geographicMapInterface)
        self.init()
        baseRaceTrackGeographicMap = geographicMapInterface
        @raceTrackGeographicMap = baseRaceTrackGeographicMap
        @raceTrackGeographicMapCellTypeFactory = baseRaceTrackGeographicMap.getGeographicMapCellTypeFactory()
        roadGeographicMapCellHistory = ::Org::Allbinary::Media::Graphics::Geography::Map::Racetrack::RaceTrackRoadsGeographicMapCellHistoryFactory.getInstance()
        trackedList = roadGeographicMapCellHistory.getTracked()
        geographicMapCellPosition = nil
        lastIndex = trackedList.size() - 1
        total = 0
        ahead = 0
        (lastIndex).step(0 + 1, -(1)) do |index|
            geographicMapCellPosition = trackedList.get(index)
            total = 0
            ahead = index
            while self.isDropAllowedAt(trackedList.get(ahead))
                total += 1
                if total > @STRAIGHTAWAY
                    @list.add(geographicMapCellPosition)
                    break
                end
                ahead += 1
                if ahead > lastIndex
                    break
                end
            end
        end
        size = @list.size()
        (size - 1).step(0, -(1)) do |index|
            self.drop(allBinaryGameLayerManager, index)
        end
    end
    java_overload :update, 2
    

    # throws Exception
    def processTick(allBinaryLayerManager)
        if @timeDelayHelper.isTime(::Org::Allbinary::TimePackage::GameTickTimeDelayHelperFactory.getInstance().startTime)
            index = @basicArrayListUtil.getRandomIndex(@list)
            self.drop(allBinaryLayerManager, index)
        end
    end
    java_overload :processTick, 1
    

    # throws Exception
    def drop(allBinaryLayerManager, index)
        raise StandardError.new(::Org::Allbinary::StringPackage::CommonStrings.getInstance().NOT_IMPLEMENTED)
    end
    java_overload :drop, 2
end

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListUtil, "org/allbinary/util/BasicArrayListUtil" unless const_defined?(:BasicArrayListUtil, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :AllBinaryGameLayerManager, "org/allbinary/game/layer/AllBinaryGameLayerManager" unless const_defined?(:AllBinaryGameLayerManager, false); end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager" unless const_defined?(:AllBinaryLayerManager, false); end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :BasicGeographicMap, "org/allbinary/media/graphics/geography/map/BasicGeographicMap" unless const_defined?(:BasicGeographicMap, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellHistory, "org/allbinary/media/graphics/geography/map/GeographicMapCellHistory" unless const_defined?(:GeographicMapCellHistory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellPosition, "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition" unless const_defined?(:GeographicMapCellPosition, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellTypeFactory, "org/allbinary/media/graphics/geography/map/GeographicMapCellTypeFactory" unless const_defined?(:GeographicMapCellTypeFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; module Racetrack; autoload :BaseRaceTrackGeographicMap, "org/allbinary/media/graphics/geography/map/racetrack/BaseRaceTrackGeographicMap" unless const_defined?(:BaseRaceTrackGeographicMap, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; module Racetrack; autoload :NullRaceTrackGeographicMap, "org/allbinary/media/graphics/geography/map/racetrack/NullRaceTrackGeographicMap" unless const_defined?(:NullRaceTrackGeographicMap, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; module Racetrack; autoload :RaceTrackGeographicMapCellType, "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackGeographicMapCellType" unless const_defined?(:RaceTrackGeographicMapCellType, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; module Racetrack; autoload :RaceTrackGeographicMapCellTypeFactory, "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackGeographicMapCellTypeFactory" unless const_defined?(:RaceTrackGeographicMapCellTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; module Racetrack; autoload :RaceTrackGeographicMapInterface, "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackGeographicMapInterface" unless const_defined?(:RaceTrackGeographicMapInterface, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; module Racetrack; autoload :RaceTrackRoadsGeographicMapCellHistoryFactory, "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackRoadsGeographicMapCellHistoryFactory" unless const_defined?(:RaceTrackRoadsGeographicMapCellHistoryFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module TimePackage; autoload :GameTickTimeDelayHelperFactory, "org/allbinary/time/GameTickTimeDelayHelperFactory" unless const_defined?(:GameTickTimeDelayHelperFactory, false); end; end; end
module ::Org; module Allbinary; module TimePackage; autoload :TimeDelayHelper, "org/allbinary/time/TimeDelayHelper" unless const_defined?(:TimeDelayHelper, false); end; end; end

end; end; end; end; end; end; end; end

