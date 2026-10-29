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

# require "javax/microedition/lcdui/game/TiledLayer"

class TiledLayerFactory
    

    def getInstance(raceTrackData)
        mapArray = raceTrackData.getMapArray()
        return TiledLayer.new(mapArray[0].length, mapArray.length, raceTrackData.getTileSetImage(), raceTrackData.getCellWidth(), raceTrackData.getCellHeight())
    end
    

    def getMiniInstance(raceTrackData)
        mapArray = raceTrackData.getMapArray()
        return TiledLayer.new(mapArray[0].length, mapArray.length, raceTrackData.getMiniTileSetImage(), raceTrackData.getMiniCellWidth(), raceTrackData.getMiniCellHeight())
    end
end

require "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackData"

