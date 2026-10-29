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

require "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackGeographicMapCellTypeFactory"

class EmptyRaceRaceTrackGeographicMapCellTypeFactory < RaceTrackGeographicMapCellTypeFactory
    

    def self.getInstance()
        return EmptyRaceRaceTrackGeographicMapCellTypeFactory.instanceC
    end
    

    def initialize()
        super()
        commonStrings = CommonStrings.getInstance()
        @EMPTY_CELL_TYPE = RaceTrackGeographicMapCellType.new(commonStrings.EMPTY, 0, PathFindingNodeCostInfoData.getInstance().MAX_NODE_COST, 1)
        @EASY_CELL_TYPE = RaceTrackGeographicMapCellType.new("Easy", 19, 1, 0)
        @FINISH_LINE_ROAD_CELL_TYPE = @DEFAULT_FINISH_LINE_ROAD_CELL_TYPE
    end

    def self.instanceC()
        return defined?(@@instanceC) ? @@instanceC : nil
    end

    def self.instanceC=(value)
        @@instanceC = value
    end
end

require "org/allbinary/string/CommonStrings"
require "org/allbinary/media/graphics/geography/pathfinding/PathFindingNodeCostInfoData"
require "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackGeographicMapCellType"

class EmptyRaceRaceTrackGeographicMapCellTypeFactory
    @@instanceC = EmptyRaceRaceTrackGeographicMapCellTypeFactory.new()
end

