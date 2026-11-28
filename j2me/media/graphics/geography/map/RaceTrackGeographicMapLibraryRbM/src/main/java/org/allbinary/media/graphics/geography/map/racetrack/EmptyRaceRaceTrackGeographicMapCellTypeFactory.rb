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

class EmptyRaceRaceTrackGeographicMapCellTypeFactory < RaceTrackGeographicMapCellTypeFactory
    

    def self.getInstance()
        return @@instanceC
    end
    

    def initialize()
        super()
        commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @EMPTY_CELL_TYPE = RaceTrackGeographicMapCellType.new(commonStrings.EMPTY, 0, ::Org::Allbinary::Media::Graphics::Geography::Pathfinding::PathFindingNodeCostInfoData.getInstance().MAX_NODE_COST, 1)
        @EASY_CELL_TYPE = RaceTrackGeographicMapCellType.new("Easy", 19, 1, 0)
        @FINISH_LINE_ROAD_CELL_TYPE = @DEFAULT_FINISH_LINE_ROAD_CELL_TYPE
    end

    def self.instanceC()
        EmptyRaceRaceTrackGeographicMapCellTypeFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instanceC) ? @@instanceC : nil
    end

    def self.instanceC=(value)
        EmptyRaceRaceTrackGeographicMapCellTypeFactory.java_static_fields unless @java_static_fields_started
        @@instanceC = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instanceC = EmptyRaceRaceTrackGeographicMapCellTypeFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "EmptyRaceRaceTrackGeographicMapCellTypeFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Pathfinding; autoload :PathFindingNodeCostInfoData, "org/allbinary/media/graphics/geography/pathfinding/PathFindingNodeCostInfoData" unless const_defined?(:PathFindingNodeCostInfoData, false); end; end; end; end; end; end
autoload :RaceTrackGeographicMapCellType, "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackGeographicMapCellType" unless const_defined?(:RaceTrackGeographicMapCellType, false)

begin
    EmptyRaceRaceTrackGeographicMapCellTypeFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end; end

