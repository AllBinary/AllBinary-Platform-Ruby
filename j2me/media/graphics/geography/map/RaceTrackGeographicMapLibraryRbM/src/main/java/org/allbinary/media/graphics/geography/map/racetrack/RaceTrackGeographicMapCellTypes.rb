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


module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; module Racetrack

class RaceTrackGeographicMapCellTypes
    attr_accessor :BOTTOM_LEFT_TURN_ROAD_CELL_TYPE, :BOTTOM_RIGHT_TURN_ROAD_CELL_TYPE, :TOP_LEFT_TURN_ROAD_CELL_TYPE, :TOP_RIGHT_TURN_ROAD_CELL_TYPE, :HORIZONTAL_STRAIGHT_ROAD_CELL_TYPE, :VERTICAL_STRAIGHT_ROAD_CELL_TYPE, :START_LINE_ROAD_CELL_TYPE, :DEFAULT_FINISH_LINE_ROAD_CELL_TYPE

    def jfields_org_allbinary_media_graphics_geography_map_racetrack_RaceTrackGeographicMapCellTypes
        @BOTTOM_LEFT_TURN_ROAD_CELL_TYPE = nil unless instance_variable_defined?(:@BOTTOM_LEFT_TURN_ROAD_CELL_TYPE)
        @BOTTOM_RIGHT_TURN_ROAD_CELL_TYPE = nil unless instance_variable_defined?(:@BOTTOM_RIGHT_TURN_ROAD_CELL_TYPE)
        @TOP_LEFT_TURN_ROAD_CELL_TYPE = nil unless instance_variable_defined?(:@TOP_LEFT_TURN_ROAD_CELL_TYPE)
        @TOP_RIGHT_TURN_ROAD_CELL_TYPE = nil unless instance_variable_defined?(:@TOP_RIGHT_TURN_ROAD_CELL_TYPE)
        @HORIZONTAL_STRAIGHT_ROAD_CELL_TYPE = nil unless instance_variable_defined?(:@HORIZONTAL_STRAIGHT_ROAD_CELL_TYPE)
        @VERTICAL_STRAIGHT_ROAD_CELL_TYPE = nil unless instance_variable_defined?(:@VERTICAL_STRAIGHT_ROAD_CELL_TYPE)
        @START_LINE_ROAD_CELL_TYPE = nil unless instance_variable_defined?(:@START_LINE_ROAD_CELL_TYPE)
        @DEFAULT_FINISH_LINE_ROAD_CELL_TYPE = nil unless instance_variable_defined?(:@DEFAULT_FINISH_LINE_ROAD_CELL_TYPE)
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def initialize()
        jfields_org_allbinary_media_graphics_geography_map_racetrack_RaceTrackGeographicMapCellTypes
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
        RaceTrackGeographicMapCellTypes.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        RaceTrackGeographicMapCellTypes.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = RaceTrackGeographicMapCellTypes.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "RaceTrackGeographicMapCellTypes"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :RaceTrackGeographicMapCellType, "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackGeographicMapCellType" unless const_defined?(:RaceTrackGeographicMapCellType, false)

begin
    RaceTrackGeographicMapCellTypes.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end; end

