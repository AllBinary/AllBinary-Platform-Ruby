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

require "java/lang/JavaOverload"
require "org/allbinary/media/graphics/geography/map/racetrack/BaseRaceTrackGeographicMap"

module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; module Racetrack

class RaceTrackGeographicMap < BaseRaceTrackGeographicMap
    attr_accessor :customMapGenerator

    def jfields_org_allbinary_media_graphics_geography_map_racetrack_RaceTrackGeographicMap
        @customMapGenerator = nil unless instance_variable_defined?(:@customMapGenerator)
    end
    

    def initialize(raceTrackInfo, raceTrackData, tiledLayerFactoryInterface, geographicMapCellPositionFactoryInterface, geographicMapCellPositionBaseFactory, geographicMapCellTypeFactory, customMapGeneratorBaseFactory)
        super(raceTrackInfo, raceTrackData, tiledLayerFactoryInterface.getInstance(raceTrackInfo, raceTrackData), BasicGeographicMapFactory.new().getInstance(raceTrackInfo, raceTrackData, tiledLayerFactoryInterface, geographicMapCellPositionFactoryInterface, geographicMapCellTypeFactory), geographicMapCellPositionFactoryInterface, geographicMapCellPositionBaseFactory, geographicMapCellTypeFactory)
        jfields_org_allbinary_media_graphics_geography_map_racetrack_RaceTrackGeographicMap
        @customMapGenerator = customMapGeneratorBaseFactory.create(self)
    end
    

    def getCustomMapGenerator()
        return @customMapGenerator
    end
    java_overload :getCustomMapGenerator, 0
    

    # throws Exception
    def isValid(geographicMapCellPosition)
        customMapArray = @customMapGenerator.getCustomMapArray()
        if geographicMapCellPosition.getColumn() >= customMapArray[0].length
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
            stringBuffer.append("Column: ")
            stringBuffer.appendint(((geographicMapCellPosition.getColumn()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
            stringBuffer.append(" not in: ")
            stringBuffer.appendint(customMapArray[0].length)
            @logUtil.putF(stringBuffer.to_s, self, @commonStrings.IS_VALID)
            if geographicMapCellPosition.getColumn() == customMapArray[0].length
                return true
            else
                return false
            end
        elsif geographicMapCellPosition.getRow() > customMapArray.length
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
            stringBuffer.append("Row: ")
            stringBuffer.appendint(((geographicMapCellPosition.getRow()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
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
    java_overload :isValid, 1
end

module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellPosition, "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition" unless const_defined?(:GeographicMapCellPosition, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellPositionBaseFactory, "org/allbinary/media/graphics/geography/map/GeographicMapCellPositionBaseFactory" unless const_defined?(:GeographicMapCellPositionBaseFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellPositionFactoryInterface, "org/allbinary/media/graphics/geography/map/GeographicMapCellPositionFactoryInterface" unless const_defined?(:GeographicMapCellPositionFactoryInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellTypeFactory, "org/allbinary/media/graphics/geography/map/GeographicMapCellTypeFactory" unless const_defined?(:GeographicMapCellTypeFactory, false); end; end; end; end; end; end
autoload :AllBinaryTiledLayerFactoryInterface, "org/allbinary/media/graphics/geography/map/racetrack/AllBinaryTiledLayerFactoryInterface" unless const_defined?(:AllBinaryTiledLayerFactoryInterface, false)
autoload :BasicGeographicMapFactory, "org/allbinary/media/graphics/geography/map/racetrack/BasicGeographicMapFactory" unless const_defined?(:BasicGeographicMapFactory, false)
autoload :CustomMapGeneratorBase, "org/allbinary/media/graphics/geography/map/racetrack/CustomMapGeneratorBase" unless const_defined?(:CustomMapGeneratorBase, false)
autoload :CustomMapGeneratorBaseFactory, "org/allbinary/media/graphics/geography/map/racetrack/CustomMapGeneratorBaseFactory" unless const_defined?(:CustomMapGeneratorBaseFactory, false)
autoload :RaceTrackData, "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackData" unless const_defined?(:RaceTrackData, false)
autoload :RaceTrackInfo, "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackInfo" unless const_defined?(:RaceTrackInfo, false)

end; end; end; end; end; end; end

