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
require "java/lang/JavaClass"
require "org/allbinary/media/graphics/geography/map/BasicGeographicMap"
require "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackGeographicMapInterface"

module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; module Racetrack

class BaseRaceTrackGeographicMap < ::Org::Allbinary::Media::Graphics::Geography::Map::BasicGeographicMap
    include RaceTrackGeographicMapInterface
    attr_accessor :logUtil, :raceTrackInfo, :raceTrackData, :miniGeographicMap

    def jfields_org_allbinary_media_graphics_geography_map_racetrack_BaseRaceTrackGeographicMap
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @raceTrackInfo = nil unless instance_variable_defined?(:@raceTrackInfo)
        @raceTrackData = nil unless instance_variable_defined?(:@raceTrackData)
        @miniGeographicMap = nil unless instance_variable_defined?(:@miniGeographicMap)
    end
    

    def initialize(raceTrackInfo, raceTrackData, tiledLayer, miniGeographicMap, geographicMapCellPositionFactoryInterface, geographicMapCellPositionBaseFactory, geographicMapCellTypeFactory)
        super(raceTrackInfo.getId(), raceTrackInfo.getName(), raceTrackData.getCellTypeIdToGeographicMapCellTypeArray(), tiledLayer, raceTrackInfo.getForegroundBasicColor(), raceTrackInfo.getBackgroundBasicColor(), geographicMapCellPositionFactoryInterface, geographicMapCellPositionBaseFactory, geographicMapCellTypeFactory)
        jfields_org_allbinary_media_graphics_geography_map_racetrack_BaseRaceTrackGeographicMap
        @raceTrackInfo = raceTrackInfo
        @raceTrackData = raceTrackData
        @miniGeographicMap = miniGeographicMap
        miniTiledLayer = @miniGeographicMap.getAllBinaryTiledLayer()
        if miniTiledLayer.getColumns() != self.getGeographicMapCellPositionFactory().getColumns()
            error = ::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("RaceTrackMap has incorrect Mini Map columns: ").appendint(((miniTiledLayer.getColumns()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })).append(" != ").appendint(((self.getGeographicMapCellPositionFactory().getColumns()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })).to_s
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            @logUtil.putF(commonStrings.EXCEPTION, self, commonStrings.CONSTRUCTOR)
            raise StandardError.new(error)
        end
        if miniTiledLayer.getRows() != self.getGeographicMapCellPositionFactory().getRows()
            error = "RaceTrackMap has incorrect Mini Map rows"
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            @logUtil.putF(commonStrings.EXCEPTION, self, commonStrings.CONSTRUCTOR)
            raise StandardError.new(error)
        end
    end
    

    def getRaceTrackInfo()
        return @raceTrackInfo
    end
    java_overload :getRaceTrackInfo, 0
    

    def setRaceTrackInfo(aRaceTrackInfo)
        @raceTrackInfo = aRaceTrackInfo
    end
    java_overload :setRaceTrackInfo, 1
    

    def setMiniBasicGeographicMap(miniBasicGeographicMap)
        @miniGeographicMap = miniBasicGeographicMap
    end
    java_overload :setMiniBasicGeographicMap, 1
    

    def getMiniBasicGeographicMap()
        return @miniGeographicMap
    end
    java_overload :getMiniBasicGeographicMap, 0
    

    def getRaceTrackData()
        return @raceTrackData
    end
    java_overload :getRaceTrackData, 0
    

    def setRaceTrackData(raceTrackData)
        @raceTrackData = raceTrackData
    end
    java_overload :setRaceTrackData, 1
    

    def getId()
        return BaseRaceTrackGeographicMap.superclass.java_super_method(:getId, 0).bind(self).call()
    end
    java_overload :getId, 0
    

    def getName()
        return BaseRaceTrackGeographicMap.superclass.java_super_method(:getName, 0).bind(self).call()
    end
    java_overload :getName, 0
    

    def reset()
        BaseRaceTrackGeographicMap.superclass.java_super_method(:reset, 0).bind(self).call()
    end
    java_overload :reset, 0
    

    def getAllBinaryTiledLayer()
        return BaseRaceTrackGeographicMap.superclass.java_super_method(:getAllBinaryTiledLayer, 0).bind(self).call()
    end
    java_overload :getAllBinaryTiledLayer, 0
    

    def getCellTypeFromMapCellTypeInt(cellTypeId)
        return BaseRaceTrackGeographicMap.superclass.java_super_method(:getCellTypeFromMapCellTypeInt, 1).bind(self).call(cellTypeId)
    end
    java_overload :getCellTypeFromMapCellTypeInt, 1
    

    # throws Exception
    def getCellTypeAt(cellPosition)
        return BaseRaceTrackGeographicMap.superclass.java_super_method(:getCellTypeAt, 1).bind(self).call(cellPosition)
    end
    java_overload :getCellTypeAt, 1
    

    def getForegroundBasicColor()
        return BaseRaceTrackGeographicMap.superclass.java_super_method(:getForegroundBasicColor, 0).bind(self).call()
    end
    java_overload :getForegroundBasicColor, 0
    

    def getBackgroundBasicColor()
        return BaseRaceTrackGeographicMap.superclass.java_super_method(:getBackgroundBasicColor, 0).bind(self).call()
    end
    java_overload :getBackgroundBasicColor, 0
end

module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :AllBinaryTiledLayer, "org/allbinary/game/layer/AllBinaryTiledLayer" unless const_defined?(:AllBinaryTiledLayer, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellPositionBaseFactory, "org/allbinary/media/graphics/geography/map/GeographicMapCellPositionBaseFactory" unless const_defined?(:GeographicMapCellPositionBaseFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellPositionFactoryInterface, "org/allbinary/media/graphics/geography/map/GeographicMapCellPositionFactoryInterface" unless const_defined?(:GeographicMapCellPositionFactoryInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellTypeFactory, "org/allbinary/media/graphics/geography/map/GeographicMapCellTypeFactory" unless const_defined?(:GeographicMapCellTypeFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellPosition, "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition" unless const_defined?(:GeographicMapCellPosition, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellType, "org/allbinary/media/graphics/geography/map/GeographicMapCellType" unless const_defined?(:GeographicMapCellType, false); end; end; end; end; end; end
autoload :RaceTrackData, "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackData" unless const_defined?(:RaceTrackData, false)
autoload :RaceTrackInfo, "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackInfo" unless const_defined?(:RaceTrackInfo, false)

end; end; end; end; end; end; end

