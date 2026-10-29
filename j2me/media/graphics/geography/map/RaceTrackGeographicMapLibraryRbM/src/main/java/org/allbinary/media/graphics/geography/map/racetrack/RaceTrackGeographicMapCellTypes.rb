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


class RaceTrackGeographicMapCellTypes
    attr_accessor :BOTTOM_LEFT_TURN_ROAD_CELL_TYPE, :BOTTOM_RIGHT_TURN_ROAD_CELL_TYPE, :TOP_LEFT_TURN_ROAD_CELL_TYPE, :TOP_RIGHT_TURN_ROAD_CELL_TYPE, :HORIZONTAL_STRAIGHT_ROAD_CELL_TYPE, :VERTICAL_STRAIGHT_ROAD_CELL_TYPE, :START_LINE_ROAD_CELL_TYPE, :DEFAULT_FINISH_LINE_ROAD_CELL_TYPE

    def initialize_fields
        @BOTTOM_LEFT_TURN_ROAD_CELL_TYPE = nil
        @BOTTOM_RIGHT_TURN_ROAD_CELL_TYPE = nil
        @TOP_LEFT_TURN_ROAD_CELL_TYPE = nil
        @TOP_RIGHT_TURN_ROAD_CELL_TYPE = nil
        @HORIZONTAL_STRAIGHT_ROAD_CELL_TYPE = nil
        @VERTICAL_STRAIGHT_ROAD_CELL_TYPE = nil
        @START_LINE_ROAD_CELL_TYPE = nil
        @DEFAULT_FINISH_LINE_ROAD_CELL_TYPE = nil
    end
    

    def self.getInstance()
        return RaceTrackGeographicMapCellTypes.instance
    end
    

    def initialize()
        initialize_fields
        @BOTTOM_LEFT_TURN_ROAD_CELL_TYPE = RaceTrackGeographicMapCellType.new("Bottom Left Turn", 1, 1, 0)
        @BOTTOM_RIGHT_TURN_ROAD_CELL_TYPE = RaceTrackGeographicMapCellType.new("Bottom Right Turn", 2, 1, 0)
        @TOP_LEFT_TURN_ROAD_CELL_TYPE = RaceTrackGeographicMapCellType.new("Top Left Turn", 3, 1, 0)
        @TOP_RIGHT_TURN_ROAD_CELL_TYPE = RaceTrackGeographicMapCellType.new("Top Right Turne", 4, 1, 0)
        @HORIZONTAL_STRAIGHT_ROAD_CELL_TYPE = RaceTrackGeographicMapCellType.new("Horizontal Straight", 5, 1, 0)
        @VERTICAL_STRAIGHT_ROAD_CELL_TYPE = RaceTrackGeographicMapCellType.new("Vertical Straight", 6, 1, 0)
        @START_LINE_ROAD_CELL_TYPE = RaceTrackGeographicMapCellType.new("Start Line", 7, 1, 0)
        @DEFAULT_FINISH_LINE_ROAD_CELL_TYPE = RaceTrackGeographicMapCellType.new("Finish Line", 8, 1, 0)
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackGeographicMapCellType"

class RaceTrackGeographicMapCellTypes
    @@instance = RaceTrackGeographicMapCellTypes.new()
end

