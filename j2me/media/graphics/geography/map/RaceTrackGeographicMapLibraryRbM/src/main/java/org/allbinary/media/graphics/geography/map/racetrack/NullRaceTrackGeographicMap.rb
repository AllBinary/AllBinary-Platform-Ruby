# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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

require "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackGeographicMapInterface"

class NullRaceTrackGeographicMap
    include RaceTrackGeographicMapInterface
    

    def getId()
        raise RuntimeError.new()
    end
    

    def getName()
        raise RuntimeError.new()
    end
    

    def reset()
        raise RuntimeError.new()
    end
    

    def getAllBinaryTiledLayer()
        raise RuntimeError.new()
    end
    

    # throws Exception
    def getCellPositionsAt(layer, currentCellPositionArray, cellPositionArray)
        raise RuntimeError.new()
    end
    

    # throws Exception
    def getCellPositionAtXY(x, y)
        raise RuntimeError.new()
    end
    

    # throws Exception
    def getCellPositionAtXYNoThrow(x, y)
        raise RuntimeError.new()
    end
    

    def getCellTypeFromMapCellTypeInt(cellTypeId)
        raise RuntimeError.new()
    end
    

    # throws Exception
    def getCellTypeAtXY(x, y)
        raise RuntimeError.new()
    end
    

    # throws Exception
    def getCellTypeAt(geographicMapCellPosition)
        raise RuntimeError.new()
    end
    

    def getGeographicMapCellPositionFactory()
        raise RuntimeError.new()
    end
    

    def getGeographicMapCellPositionFactoryInterface()
        raise RuntimeError.new()
    end
    

    def getForegroundBasicColor()
        raise RuntimeError.new()
    end
    

    def getBackgroundBasicColor()
        raise RuntimeError.new()
    end
    

    def getRaceTrackInfo()
        raise RuntimeError.new()
    end
    

    def setRaceTrackInfo(aRaceTrackInfo)
        raise RuntimeError.new()
    end
    

    def getRaceTrackData()
        raise RuntimeError.new()
    end
    

    def setRaceTrackData(raceTrackData)
        raise RuntimeError.new()
    end
end

require "org/allbinary/game/layer/AllBinaryTiledLayer"
require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/layer/Layer"
require "org/allbinary/media/graphics/geography/map/BasicGeographicMapCellPositionFactory"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPositionFactoryInterface"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellType"
require "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackData"
require "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackInfo"

class NullRaceTrackGeographicMap
    NULL_RACE_TRACK_GEOGRAPHIC_MAP = NullRaceTrackGeographicMap.new()
end

