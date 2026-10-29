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

require "org/allbinary/media/graphics/geography/map/racetrack/BaseRaceTrackGeographicMap"

class RaceTrackGeographicMap < BaseRaceTrackGeographicMap
    attr_accessor :customMapGenerator

    def initialize_fields
        @customMapGenerator = nil
    end
    

    def initialize(raceTrackInfo, raceTrackData, tiledLayerFactoryInterface, geographicMapCellPositionFactoryInterface, geographicMapCellPositionBaseFactory, geographicMapCellTypeFactory, customMapGeneratorBaseFactory)
        super(raceTrackInfo, raceTrackData, tiledLayerFactoryInterface.getInstance(raceTrackInfo, raceTrackData), BasicGeographicMapFactory.new().getInstance(raceTrackInfo, raceTrackData, tiledLayerFactoryInterface, geographicMapCellPositionFactoryInterface, geographicMapCellTypeFactory), geographicMapCellPositionFactoryInterface, geographicMapCellPositionBaseFactory, geographicMapCellTypeFactory)
        initialize_fields
        @customMapGenerator = customMapGeneratorBaseFactory.create(self)
    end
    

    def getCustomMapGenerator()
        return @customMapGenerator
    end
    

    # throws Exception
    def isValid(geographicMapCellPosition)
        customMapArray = @customMapGenerator.getCustomMapArray()
        if geographicMapCellPosition.getColumn() >= customMapArray[0].length
            stringBuffer = StringMaker.new()
            stringBuffer.append("Column: ")
            stringBuffer.appendint((geographicMapCellPosition.getColumn()).to_i)
            stringBuffer.append(" not in: ")
            stringBuffer.appendint(customMapArray[0].length)
            @logUtil.putF(stringBuffer.to_s, self, @commonStrings.IS_VALID)
            if geographicMapCellPosition.getColumn() == customMapArray[0].length
                return true
            else
                return false
            end
        elsif geographicMapCellPosition.getRow() > customMapArray.length
            stringBuffer = StringMaker.new()
            stringBuffer.append("Row: ")
            stringBuffer.appendint((geographicMapCellPosition.getRow()).to_i)
            stringBuffer.append(" not in: ")
            stringBuffer.appendint(customMapArray.length)
            @logUtil.putF(stringBuffer.to_s, self, @commonStrings.IS_VALID)
            if geographicMapCellPosition.getRow() == customMapArray.length
                return true
            else
                return false
            end
        end
        return true
    end
end

require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPositionBaseFactory"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPositionFactoryInterface"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellTypeFactory"
require "org/allbinary/media/graphics/geography/map/racetrack/AllBinaryTiledLayerFactoryInterface"
require "org/allbinary/media/graphics/geography/map/racetrack/BasicGeographicMapFactory"
require "org/allbinary/media/graphics/geography/map/racetrack/CustomMapGeneratorBase"
require "org/allbinary/media/graphics/geography/map/racetrack/CustomMapGeneratorBaseFactory"
require "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackData"
require "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackInfo"

