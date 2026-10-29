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
# package org.allbinary.game.layer

# require "javax/microedition/lcdui/game/TiledLayer"
require "org/allbinary/media/graphics/geography/map/racetrack/AllBinaryTiledLayerFactoryInterface"

class AllBinaryTiledLayerFactory
    include AllBinaryTiledLayerFactoryInterface
    

    # throws Exception
    def getInstance(raceTrackInfo, raceTrackData)
        allbinaryTiledLayer = nil
        tiledLayer = TiledLayerFactory.new().getInstance(raceTrackData)
        allbinaryTiledLayer = AllBinaryJ2METiledLayer.new(raceTrackData.getId(), tiledLayer, raceTrackData.getMapArray(), BasicColorFactory.getInstance().RED.to_i)
        allbinaryTiledLayer.setCells(raceTrackData.getMapArray())
        return allbinaryTiledLayer
    end
    

    # throws Exception
    def getMiniInstance(raceTrackData)
        smallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance()
        tiledLayer = TiledLayerFactory.new().getMiniInstance(raceTrackData)
        allbinaryTiledLayer = AllBinaryJ2METiledLayer.new(smallIntegerSingletonFactory.getAt(raceTrackData.getId().to_i + 100 + 1), tiledLayer, raceTrackData.getMapArray(), BasicColorFactory.getInstance().RED.to_i)
        allbinaryTiledLayer.setCells(raceTrackData.getMapArray())
        return allbinaryTiledLayer
    end
end

require "org/allbinary/graphics/color/BasicColorFactory"
require "org/allbinary/logic/math/SmallIntegerSingletonFactory"
require "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackData"
require "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackInfo"
require "org/allbinary/media/graphics/geography/map/racetrack/TiledLayerFactory"
require "org/allbinary/game/layer/AllBinaryJ2METiledLayer"
require "org/allbinary/game/layer/AllBinaryTiledLayer"

