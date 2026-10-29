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

require "org/allbinary/media/graphics/geography/map/BasicGeographicMap"
require "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackGeographicMapInterface"

class BaseRaceTrackGeographicMap < BasicGeographicMap
    include RaceTrackGeographicMapInterface
    attr_accessor :logUtil, :raceTrackInfo, :raceTrackData, :miniGeographicMap

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @raceTrackInfo = nil
        @raceTrackData = nil
        @miniGeographicMap = nil
    end
    

    def initialize(raceTrackInfo, raceTrackData, tiledLayer, miniGeographicMap, geographicMapCellPositionFactoryInterface, geographicMapCellPositionBaseFactory, geographicMapCellTypeFactory)
        super(raceTrackInfo.getId(), raceTrackInfo.getName(), raceTrackData.getCellTypeIdToGeographicMapCellTypeArray(), tiledLayer, raceTrackInfo.getForegroundBasicColor(), raceTrackInfo.getBackgroundBasicColor(), geographicMapCellPositionFactoryInterface, geographicMapCellPositionBaseFactory, geographicMapCellTypeFactory)
        initialize_fields
        @raceTrackInfo = raceTrackInfo
        @raceTrackData = raceTrackData
        @miniGeographicMap = miniGeographicMap
        miniTiledLayer = @miniGeographicMap.getAllBinaryTiledLayer()
        if miniTiledLayer.getColumns() != self.getGeographicMapCellPositionFactory().getColumns()
            error = StringMaker.new().append("RaceTrackMap has incorrect Mini Map columns: ").appendint((miniTiledLayer.getColumns()).to_i).append(" != ").appendint((self.getGeographicMapCellPositionFactory().getColumns()).to_i).to_s
            commonStrings = CommonStrings.getInstance()
            @logUtil.putF(commonStrings.EXCEPTION, self, commonStrings.CONSTRUCTOR)
            raise StandardError.new(error)
        end
        if miniTiledLayer.getRows() != self.getGeographicMapCellPositionFactory().getRows()
            error = "RaceTrackMap has incorrect Mini Map rows"
            commonStrings = CommonStrings.getInstance()
            @logUtil.putF(commonStrings.EXCEPTION, self, commonStrings.CONSTRUCTOR)
            raise StandardError.new(error)
        end
    end
    

    def getRaceTrackInfo()
        return @raceTrackInfo
    end
    

    def setRaceTrackInfo(aRaceTrackInfo)
        @raceTrackInfo = aRaceTrackInfo
    end
    

    def setMiniBasicGeographicMap(miniBasicGeographicMap)
        @miniGeographicMap = miniBasicGeographicMap
    end
    

    def getMiniBasicGeographicMap()
        return @miniGeographicMap
    end
    

    def getRaceTrackData()
        return @raceTrackData
    end
    

    def setRaceTrackData(raceTrackData)
        @raceTrackData = raceTrackData
    end
end

require "org/allbinary/string/CommonStrings"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/game/layer/AllBinaryTiledLayer"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPositionBaseFactory"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPositionFactoryInterface"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellTypeFactory"
require "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackData"
require "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackInfo"

