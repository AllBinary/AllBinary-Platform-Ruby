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

require "java/lang/JavaOverload"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellTypeFactory"

module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; module Racetrack

class RaceTrackGeographicMapCellTypeFactory < ::Org::Allbinary::Media::Graphics::Geography::Map::GeographicMapCellTypeFactory
    attr_accessor :EMPTY_CELL_TYPE, :EASY_CELL_TYPE, :BOTTOM_LEFT_TURN_ROAD_CELL_TYPE, :BOTTOM_RIGHT_TURN_ROAD_CELL_TYPE, :TOP_LEFT_TURN_ROAD_CELL_TYPE, :TOP_RIGHT_TURN_ROAD_CELL_TYPE, :HORIZONTAL_STRAIGHT_ROAD_CELL_TYPE, :VERTICAL_STRAIGHT_ROAD_CELL_TYPE, :START_LINE_ROAD_CELL_TYPE, :DEFAULT_FINISH_LINE_ROAD_CELL_TYPE, :FINISH_LINE_ROAD_CELL_TYPE

    def jfields_org_allbinary_media_graphics_geography_map_racetrack_RaceTrackGeographicMapCellTypeFactory
        @EMPTY_CELL_TYPE = ::Org::Allbinary::Media::Graphics::Geography::Map::GeographicMapCellType.new(0, -1)
        @EASY_CELL_TYPE = @EMPTY_CELL_TYPE
        @BOTTOM_LEFT_TURN_ROAD_CELL_TYPE = nil unless instance_variable_defined?(:@BOTTOM_LEFT_TURN_ROAD_CELL_TYPE)
        @BOTTOM_RIGHT_TURN_ROAD_CELL_TYPE = nil unless instance_variable_defined?(:@BOTTOM_RIGHT_TURN_ROAD_CELL_TYPE)
        @TOP_LEFT_TURN_ROAD_CELL_TYPE = nil unless instance_variable_defined?(:@TOP_LEFT_TURN_ROAD_CELL_TYPE)
        @TOP_RIGHT_TURN_ROAD_CELL_TYPE = nil unless instance_variable_defined?(:@TOP_RIGHT_TURN_ROAD_CELL_TYPE)
        @HORIZONTAL_STRAIGHT_ROAD_CELL_TYPE = nil unless instance_variable_defined?(:@HORIZONTAL_STRAIGHT_ROAD_CELL_TYPE)
        @VERTICAL_STRAIGHT_ROAD_CELL_TYPE = nil unless instance_variable_defined?(:@VERTICAL_STRAIGHT_ROAD_CELL_TYPE)
        @START_LINE_ROAD_CELL_TYPE = nil unless instance_variable_defined?(:@START_LINE_ROAD_CELL_TYPE)
        @DEFAULT_FINISH_LINE_ROAD_CELL_TYPE = nil unless instance_variable_defined?(:@DEFAULT_FINISH_LINE_ROAD_CELL_TYPE)
        @FINISH_LINE_ROAD_CELL_TYPE = ::Org::Allbinary::Media::Graphics::Geography::Map::GeographicMapCellType::NULL_GEOGRAPHIC_MAP_CELL_TYPE
    end
    

    def self.getInstance()
        return @@instanceC
    end
    

    def initialize()
        super()
        jfields_org_allbinary_media_graphics_geography_map_racetrack_RaceTrackGeographicMapCellTypeFactory
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
    java_overload :getStartType, 0
    

    def getEndType()
        return @FINISH_LINE_ROAD_CELL_TYPE.getType()
    end
    java_overload :getEndType, 0
    

    def getEmptyType()
        return @EMPTY_CELL_TYPE.getType()
    end
    java_overload :getEmptyType, 0
    

    def isPath(cellType)
        if cellType != @EMPTY_CELL_TYPE && cellType != @EASY_CELL_TYPE
            return true
        end
        return false
    end
    java_overload :isPath, 1

    def self.instanceC()
        RaceTrackGeographicMapCellTypeFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instanceC) ? @@instanceC : nil
    end

    def self.instanceC=(value)
        RaceTrackGeographicMapCellTypeFactory.java_static_fields unless @java_static_fields_started
        @@instanceC = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instanceC = RaceTrackGeographicMapCellTypeFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "RaceTrackGeographicMapCellTypeFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellType, "org/allbinary/media/graphics/geography/map/GeographicMapCellType" unless const_defined?(:GeographicMapCellType, false); end; end; end; end; end; end
autoload :RaceTrackGeographicMapCellType, "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackGeographicMapCellType" unless const_defined?(:RaceTrackGeographicMapCellType, false)
autoload :RaceTrackGeographicMapCellTypes, "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackGeographicMapCellTypes" unless const_defined?(:RaceTrackGeographicMapCellTypes, false)

begin
    RaceTrackGeographicMapCellTypeFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end; end

