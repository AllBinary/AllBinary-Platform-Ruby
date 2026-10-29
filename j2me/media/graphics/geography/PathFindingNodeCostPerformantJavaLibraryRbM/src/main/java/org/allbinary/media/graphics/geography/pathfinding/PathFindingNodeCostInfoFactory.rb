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
# package org.allbinary.media.graphics.geography.pathfinding

require "org/allbinary/media/graphics/geography/pathfinding/PathFindingNodeCostInfoFactoryBase"

class PathFindingNodeCostInfoFactory < PathFindingNodeCostInfoFactoryBase
    

    def initialize(max)
        super()
    end
    

    # throws Exception
    def create(geographicMapInterface, goingToGeographicMapCellPosition, geographicMapCellPosition, costFromStart, costToEnd)
    end
    

    # throws Exception
    def getTotalCost(geographicMapInterface, comingFromGeographicMapCellPosition, geographicMapCellPosition)
        geographicMapCellType = geographicMapInterface.getCellTypeAt(comingFromGeographicMapCellPosition)
        geographicMapCellType2 = geographicMapInterface.getCellTypeAt(geographicMapCellPosition)
        raceTrackGeographicMapCellType = geographicMapCellType
        raceTrackGeographicMapCellType2 = geographicMapCellType2
        return (raceTrackGeographicMapCellType.getTravelCost()).to_i + raceTrackGeographicMapCellType2.getTravelCost()
    end
end

require "org/allbinary/media/graphics/geography/map/BasicGeographicMap"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellType"
require "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackGeographicMapCellType"

