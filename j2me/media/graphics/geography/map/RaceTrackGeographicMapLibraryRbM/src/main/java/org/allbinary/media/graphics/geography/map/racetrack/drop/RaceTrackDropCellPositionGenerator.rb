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

require "org/allbinary/media/graphics/geography/map/drop/BaseDropCellPositionGenerator"

class RaceTrackDropCellPositionGenerator < BaseDropCellPositionGenerator
    attr_accessor :list, :timeDelayHelper, :STRAIGHTAWAY, :raceTrackGeographicMap, :raceTrackGeographicMapCellTypeFactory, :basicArrayListUtil

    def initialize_fields
        @list = BasicArrayListD.new()
        @timeDelayHelper = nil
        @STRAIGHTAWAY = 4
        @raceTrackGeographicMap = NullRaceTrackGeographicMap::NULL_RACE_TRACK_GEOGRAPHIC_MAP
        @raceTrackGeographicMapCellTypeFactory = GeographicMapCellTypeFactory.getInstance()
        @basicArrayListUtil = BasicArrayListUtil.getInstance()
    end
    

    def initialize()
        super()
        initialize_fields
        @timeDelayHelper = TimeDelayHelper.new(10000)
    end
    

    def init()
        @list.clear()
    end
    

    # throws Exception
    def isDropAllowedAt(geographicMapCellPosition)
        raceTrackGeographicMapCellType = @raceTrackGeographicMap.getCellTypeAt(geographicMapCellPosition)
        raceTrackGeographicMapCellTypeFactory = @raceTrackGeographicMapCellTypeFactory
        if raceTrackGeographicMapCellType == raceTrackGeographicMapCellTypeFactory.HORIZONTAL_STRAIGHT_ROAD_CELL_TYPE || raceTrackGeographicMapCellType == raceTrackGeographicMapCellTypeFactory.VERTICAL_STRAIGHT_ROAD_CELL_TYPE
            return true
        end
        return false
    end
    

    # throws Exception
    def update(allBinaryGameLayerManager, geographicMapInterface)
        self.init()
        baseRaceTrackGeographicMap = geographicMapInterface
        @raceTrackGeographicMap = baseRaceTrackGeographicMap
        @raceTrackGeographicMapCellTypeFactory = baseRaceTrackGeographicMap.getGeographicMapCellTypeFactory()
        roadGeographicMapCellHistory = RaceTrackRoadsGeographicMapCellHistoryFactory.getInstance()
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
    

    # throws Exception
    def processTick(allBinaryLayerManager)
        if @timeDelayHelper.isTime(GameTickTimeDelayHelperFactory.getInstance().startTime)
            index = @basicArrayListUtil.getRandomIndex(@list)
            self.drop(allBinaryLayerManager, index)
        end
    end
    

    # throws Exception
    def drop(allBinaryLayerManager, index)
        raise StandardError.new(CommonStrings.getInstance().NOT_IMPLEMENTED)
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/util/BasicArrayListUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/game/layer/AllBinaryGameLayerManager"
require "org/allbinary/layer/AllBinaryLayerManager"
require "org/allbinary/media/graphics/geography/map/BasicGeographicMap"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellHistory"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellTypeFactory"
require "org/allbinary/media/graphics/geography/map/racetrack/BaseRaceTrackGeographicMap"
require "org/allbinary/media/graphics/geography/map/racetrack/NullRaceTrackGeographicMap"
require "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackGeographicMapCellType"
require "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackGeographicMapCellTypeFactory"
require "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackGeographicMapInterface"
require "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackRoadsGeographicMapCellHistoryFactory"
require "org/allbinary/time/GameTickTimeDelayHelperFactory"
require "org/allbinary/time/TimeDelayHelper"

