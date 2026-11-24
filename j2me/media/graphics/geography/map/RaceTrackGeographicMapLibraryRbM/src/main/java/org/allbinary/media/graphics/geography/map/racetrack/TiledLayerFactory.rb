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

class TiledLayerFactory
    

    def getInstance(raceTrackData)
        mapArray = raceTrackData.getMapArray()
        return ::Javax::Microedition::Lcdui::Game::TiledLayer.new(mapArray[0].length, mapArray.length, raceTrackData.getTileSetImage(), raceTrackData.getCellWidth(), raceTrackData.getCellHeight())
    end
    

    def getMiniInstance(raceTrackData)
        mapArray = raceTrackData.getMapArray()
        return ::Javax::Microedition::Lcdui::Game::TiledLayer.new(mapArray[0].length, mapArray.length, raceTrackData.getMiniTileSetImage(), raceTrackData.getMiniCellWidth(), raceTrackData.getMiniCellHeight())
    end
end

module ::Javax; module Microedition; module Lcdui; module Game; autoload :TiledLayer, "javax/microedition/lcdui/game/TiledLayer" unless const_defined?(:TiledLayer, false); end; end; end; end
autoload :RaceTrackData, "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackData" unless const_defined?(:RaceTrackData, false)

end; end; end; end; end; end; end

