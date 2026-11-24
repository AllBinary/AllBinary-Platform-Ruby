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
require "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackGeographicMapCellTypeFactory"

module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; module Racetrack

class CloseLoopRaceTrackGeographicMapCellTypeFactory < RaceTrackGeographicMapCellTypeFactory
    

    def self.getInstance()
        return CloseLoopRaceTrackGeographicMapCellTypeFactory.instanceC
    end
    

    def initialize()
        super()
        @EMPTY_CELL_TYPE = EmptyRaceRaceTrackGeographicMapCellTypeFactory.getInstance().EMPTY_CELL_TYPE
        @EASY_CELL_TYPE = @EMPTY_CELL_TYPE
        @FINISH_LINE_ROAD_CELL_TYPE = @START_LINE_ROAD_CELL_TYPE
    end

    def self.instanceC()
        CloseLoopRaceTrackGeographicMapCellTypeFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instanceC) ? @@instanceC : nil
    end

    def self.instanceC=(value)
        CloseLoopRaceTrackGeographicMapCellTypeFactory.java_static_fields unless @java_static_fields_started
        @@instanceC = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instanceC = CloseLoopRaceTrackGeographicMapCellTypeFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "CloseLoopRaceTrackGeographicMapCellTypeFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :EmptyRaceRaceTrackGeographicMapCellTypeFactory, "org/allbinary/media/graphics/geography/map/racetrack/EmptyRaceRaceTrackGeographicMapCellTypeFactory" unless const_defined?(:EmptyRaceRaceTrackGeographicMapCellTypeFactory, false)

begin
    CloseLoopRaceTrackGeographicMapCellTypeFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end; end

