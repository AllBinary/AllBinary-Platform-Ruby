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
# package org.allbinary.media.graphics.geography.map.racetrack

require "org/allbinary/media/graphics/geography/map/GeographicMapCellTypeFactory"

class RaceTrackGeographicMapCellTypeFactory < GeographicMapCellTypeFactory
    attr_accessor :EMPTY_CELL_TYPE, :EASY_CELL_TYPE, :BOTTOM_LEFT_TURN_ROAD_CELL_TYPE, :BOTTOM_RIGHT_TURN_ROAD_CELL_TYPE, :TOP_LEFT_TURN_ROAD_CELL_TYPE, :TOP_RIGHT_TURN_ROAD_CELL_TYPE, :HORIZONTAL_STRAIGHT_ROAD_CELL_TYPE, :VERTICAL_STRAIGHT_ROAD_CELL_TYPE, :START_LINE_ROAD_CELL_TYPE, :DEFAULT_FINISH_LINE_ROAD_CELL_TYPE, :FINISH_LINE_ROAD_CELL_TYPE

    def initialize_fields
        @EMPTY_CELL_TYPE = GeographicMapCellType.new(0, -1)
        @EASY_CELL_TYPE = @EMPTY_CELL_TYPE
        @BOTTOM_LEFT_TURN_ROAD_CELL_TYPE = nil
        @BOTTOM_RIGHT_TURN_ROAD_CELL_TYPE = nil
        @TOP_LEFT_TURN_ROAD_CELL_TYPE = nil
        @TOP_RIGHT_TURN_ROAD_CELL_TYPE = nil
        @HORIZONTAL_STRAIGHT_ROAD_CELL_TYPE = nil
        @VERTICAL_STRAIGHT_ROAD_CELL_TYPE = nil
        @START_LINE_ROAD_CELL_TYPE = nil
        @DEFAULT_FINISH_LINE_ROAD_CELL_TYPE = nil
        @FINISH_LINE_ROAD_CELL_TYPE = GeographicMapCellType::NULL_GEOGRAPHIC_MAP_CELL_TYPE
    end
    

    def self.getInstance()
        return RaceTrackGeographicMapCellTypeFactory.instanceC
    end
    

    def initialize()
        super()
        initialize_fields
        raceTrackGeographicMapCellTypes = RaceTrackGeographicMapCellTypes.getInstance()
        @BOTTOM_LEFT_TURN_ROAD_CELL_TYPE = raceTrackGeographicMapCellTypes.BOTTOM_LEFT_TURN_ROAD_CELL_TYPE
        @BOTTOM_RIGHT_TURN_ROAD_CELL_TYPE = raceTrackGeographicMapCellTypes.BOTTOM_RIGHT_TURN_ROAD_CELL_TYPE
        @TOP_LEFT_TURN_ROAD_CELL_TYPE = raceTrackGeographicMapCellTypes.TOP_LEFT_TURN_ROAD_CELL_TYPE
        @TOP_RIGHT_TURN_ROAD_CELL_TYPE = raceTrackGeographicMapCellTypes.TOP_RIGHT_TURN_ROAD_CELL_TYPE
        @HORIZONTAL_STRAIGHT_ROAD_CELL_TYPE = raceTrackGeographicMapCellTypes.HORIZONTAL_STRAIGHT_ROAD_CELL_TYPE
        @VERTICAL_STRAIGHT_ROAD_CELL_TYPE = raceTrackGeographicMapCellTypes.VERTICAL_STRAIGHT_ROAD_CELL_TYPE
        @START_LINE_ROAD_CELL_TYPE = raceTrackGeographicMapCellTypes.START_LINE_ROAD_CELL_TYPE
        @DEFAULT_FINISH_LINE_ROAD_CELL_TYPE = raceTrackGeographicMapCellTypes.DEFAULT_FINISH_LINE_ROAD_CELL_TYPE
    end
    

    def getStartType()
        return @START_LINE_ROAD_CELL_TYPE.getType()
    end
    

    def getEndType()
        return @FINISH_LINE_ROAD_CELL_TYPE.getType()
    end
    

    def getEmptyType()
        return @EMPTY_CELL_TYPE.getType()
    end
    

    def isPath(cellType)
        if cellType != @EMPTY_CELL_TYPE && cellType != @EASY_CELL_TYPE
            return true
        end
        return false
    end

    def self.instanceC()
        return defined?(@@instanceC) ? @@instanceC : nil
    end

    def self.instanceC=(value)
        @@instanceC = value
    end
end

require "org/allbinary/media/graphics/geography/map/GeographicMapCellType"
require "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackGeographicMapCellType"
require "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackGeographicMapCellTypes"

class RaceTrackGeographicMapCellTypeFactory
    @@instanceC = RaceTrackGeographicMapCellTypeFactory.new()
end

