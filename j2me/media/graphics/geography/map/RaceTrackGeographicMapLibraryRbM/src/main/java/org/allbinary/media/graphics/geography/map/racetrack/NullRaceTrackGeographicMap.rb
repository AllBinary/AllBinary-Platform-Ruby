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

require "java/lang/JavaOverload"
require "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackGeographicMapInterface"

module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; module Racetrack

class NullRaceTrackGeographicMap
    include RaceTrackGeographicMapInterface
    

    def getId()
        raise RuntimeError.new()
    end
    java_overload :getId, 0
    

    def getName()
        raise RuntimeError.new()
    end
    java_overload :getName, 0
    

    def reset()
        raise RuntimeError.new()
    end
    java_overload :reset, 0
    

    def getAllBinaryTiledLayer()
        raise RuntimeError.new()
    end
    java_overload :getAllBinaryTiledLayer, 0
    

    # throws Exception
    def getCellPositionsAt(layer, currentCellPositionArray, cellPositionArray)
        raise RuntimeError.new()
    end
    java_overload :getCellPositionsAt, 3
    

    # throws Exception
    def getCellPositionAtXY(x, y)
        raise RuntimeError.new()
    end
    java_overload :getCellPositionAtXY, 2
    

    # throws Exception
    def getCellPositionAtXYNoThrow(x, y)
        raise RuntimeError.new()
    end
    java_overload :getCellPositionAtXYNoThrow, 2
    

    def getCellTypeFromMapCellTypeInt(cellTypeId)
        raise RuntimeError.new()
    end
    java_overload :getCellTypeFromMapCellTypeInt, 1
    

    # throws Exception
    def getCellTypeAtXY(x, y)
        raise RuntimeError.new()
    end
    java_overload :getCellTypeAtXY, 2
    

    # throws Exception
    def getCellTypeAt(geographicMapCellPosition)
        raise RuntimeError.new()
    end
    java_overload :getCellTypeAt, 1
    

    def getGeographicMapCellPositionFactory()
        raise RuntimeError.new()
    end
    java_overload :getGeographicMapCellPositionFactory, 0
    

    def getGeographicMapCellPositionFactoryInterface()
        raise RuntimeError.new()
    end
    java_overload :getGeographicMapCellPositionFactoryInterface, 0
    

    def getForegroundBasicColor()
        raise RuntimeError.new()
    end
    java_overload :getForegroundBasicColor, 0
    

    def getBackgroundBasicColor()
        raise RuntimeError.new()
    end
    java_overload :getBackgroundBasicColor, 0
    

    def getRaceTrackInfo()
        raise RuntimeError.new()
    end
    java_overload :getRaceTrackInfo, 0
    

    def setRaceTrackInfo(aRaceTrackInfo)
        raise RuntimeError.new()
    end
    java_overload :setRaceTrackInfo, 1
    

    def getRaceTrackData()
        raise RuntimeError.new()
    end
    java_overload :getRaceTrackData, 0
    

    def setRaceTrackData(raceTrackData)
        raise RuntimeError.new()
    end
    java_overload :setRaceTrackData, 1

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_RACE_TRACK_GEOGRAPHIC_MAP, NullRaceTrackGeographicMap.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "NullRaceTrackGeographicMap"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_RACE_TRACK_GEOGRAPHIC_MAP].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Game; module Layer; autoload :AllBinaryTiledLayer, "org/allbinary/game/layer/AllBinaryTiledLayer" unless const_defined?(:AllBinaryTiledLayer, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :Layer, "org/allbinary/layer/Layer" unless const_defined?(:Layer, false); end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :BasicGeographicMapCellPositionFactory, "org/allbinary/media/graphics/geography/map/BasicGeographicMapCellPositionFactory" unless const_defined?(:BasicGeographicMapCellPositionFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellPosition, "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition" unless const_defined?(:GeographicMapCellPosition, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellPositionFactoryInterface, "org/allbinary/media/graphics/geography/map/GeographicMapCellPositionFactoryInterface" unless const_defined?(:GeographicMapCellPositionFactoryInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellType, "org/allbinary/media/graphics/geography/map/GeographicMapCellType" unless const_defined?(:GeographicMapCellType, false); end; end; end; end; end; end
autoload :RaceTrackData, "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackData" unless const_defined?(:RaceTrackData, false)
autoload :RaceTrackInfo, "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackInfo" unless const_defined?(:RaceTrackInfo, false)

begin
    NullRaceTrackGeographicMap.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end; end

