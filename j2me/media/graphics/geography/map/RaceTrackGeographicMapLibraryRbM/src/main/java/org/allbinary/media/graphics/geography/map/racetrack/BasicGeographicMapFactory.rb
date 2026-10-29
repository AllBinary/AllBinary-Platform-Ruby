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


class BasicGeographicMapFactory
    

    # throws Exception
    def getInstance(raceTrackInfo, raceTrackData, tiledLayerFactoryInterface, geographicMapCellPositionFactoryInterface, geographicMapCellTypeFactory)
        return BasicGeographicMap.new(SmallIntegerSingletonFactory.getInstance().getAt(raceTrackInfo.getId().to_i + 100 + 1), raceTrackInfo.getName(), raceTrackData.getCellTypeIdToGeographicMapCellTypeArray(), tiledLayerFactoryInterface.getMiniInstance(raceTrackData), BasicColorFactory.getInstance().CLEAR_COLOR, BasicColorFactory.getInstance().CLEAR_COLOR, geographicMapCellPositionFactoryInterface, GeographicMapCellPositionBaseFactory.new(), geographicMapCellTypeFactory)
    end
end

require "org/allbinary/graphics/color/BasicColorFactory"
require "org/allbinary/logic/math/SmallIntegerSingletonFactory"
require "org/allbinary/media/graphics/geography/map/BasicGeographicMap"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPositionBaseFactory"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPositionFactoryInterface"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellTypeFactory"
require "org/allbinary/media/graphics/geography/map/racetrack/AllBinaryTiledLayerFactoryInterface"
require "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackData"
require "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackInfo"

