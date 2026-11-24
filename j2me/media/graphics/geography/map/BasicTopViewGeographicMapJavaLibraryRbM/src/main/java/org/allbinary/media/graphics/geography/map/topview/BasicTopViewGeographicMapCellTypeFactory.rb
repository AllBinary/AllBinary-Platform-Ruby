# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.media.graphics.geography.map.topview

require "java/lang/Object"
require "java/lang/JavaOverload"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellTypeFactory"

module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; module Topview

class BasicTopViewGeographicMapCellTypeFactory < ::Org::Allbinary::Media::Graphics::Geography::Map::GeographicMapCellTypeFactory
    attr_accessor :BLOCK_CELL_TYPE, :OFF_MAP_CELL_TYPE, :FLOOR_CELL_TYPE, :DOOR_CELL_TYPE, :STAIRS_UP_CELL_TYPE, :STAIRS_DOWN_CELL_TYPE, :OTHER_CELL_TYPE, :maxTileId

    def jfields_org_allbinary_media_graphics_geography_map_topview_BasicTopViewGeographicMapCellTypeFactory
        @BLOCK_CELL_TYPE = nil unless instance_variable_defined?(:@BLOCK_CELL_TYPE)
        @OFF_MAP_CELL_TYPE = nil unless instance_variable_defined?(:@OFF_MAP_CELL_TYPE)
        @FLOOR_CELL_TYPE = nil unless instance_variable_defined?(:@FLOOR_CELL_TYPE)
        @DOOR_CELL_TYPE = nil unless instance_variable_defined?(:@DOOR_CELL_TYPE)
        @STAIRS_UP_CELL_TYPE = nil unless instance_variable_defined?(:@STAIRS_UP_CELL_TYPE)
        @STAIRS_DOWN_CELL_TYPE = nil unless instance_variable_defined?(:@STAIRS_DOWN_CELL_TYPE)
        @OTHER_CELL_TYPE = nil unless instance_variable_defined?(:@OTHER_CELL_TYPE)
        @maxTileId = nil unless instance_variable_defined?(:@maxTileId)
    end
    

    def initialize(tileTypeToTileIdsMap, maxTileId)
        super()
        jfields_org_allbinary_media_graphics_geography_map_topview_BasicTopViewGeographicMapCellTypeFactory
        commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @logUtil.putF(commonStrings.START, self, commonStrings.CONSTRUCTOR)
        @maxTileId = maxTileId
        basicTopViewGeographicMapStrings = BasicTopViewGeographicMapStrings.getInstance()
        geographicMapCellTypeFactory = ::Org::Allbinary::Media::Graphics::Geography::Map::GeographicMapCellTypeFactory.getInstance()
        geographicMapCellTypeArray = geographicMapCellTypeFactory.getGeographicMapCellTypeArray()
        type = 0
        if geographicMapCellTypeArray[type] == nil
            ::Org::Allbinary::Media::Graphics::Geography::Map::Racetrack::RaceTrackGeographicMapCellType.new(::Org::Allbinary::StringPackage::CommonStrings.getInstance().UNKNOWN, type, 999, 0)
        else
        end
        _BLOCK_CELL_TYPE = BasicTopViewGeographicMapCellType.createType(basicTopViewGeographicMapStrings.DEFAULT, 1, 1)
        _OFF_MAP_CELL_TYPE = _BLOCK_CELL_TYPE
        _FLOOR_CELL_TYPE = _BLOCK_CELL_TYPE
        _DOOR_CELL_TYPE = _BLOCK_CELL_TYPE
        _STAIRS_UP_CELL_TYPE = _BLOCK_CELL_TYPE
        _STAIRS_DOWN_CELL_TYPE = _BLOCK_CELL_TYPE
        _OTHER_CELL_TYPE = _BLOCK_CELL_TYPE
        keyArray = ::Org::Allbinary::Util::HashtableUtil.getInstance().getKeysAsArray(tileTypeToTileIdsMap)
        size = keyArray.length
        idsWithTypeList = nil
        key = nil
        basicPlatormGeographicMapCellType = nil
        (0...size).each do |index|
            key = keyArray[index]
            idsWithTypeList = tileTypeToTileIdsMap.get(key)
            if (key == basicTopViewGeographicMapStrings.WALL)
                basicPlatormGeographicMapCellType = BasicTopViewGeographicMapCellType.new(basicTopViewGeographicMapStrings.WALL, idsWithTypeList, 1000)
                _BLOCK_CELL_TYPE = basicPlatormGeographicMapCellType
            elsif (key == basicTopViewGeographicMapStrings.OFF_MAP)
                basicPlatormGeographicMapCellType = BasicTopViewGeographicMapCellType.new(basicTopViewGeographicMapStrings.OFF_MAP, idsWithTypeList, 1001)
                _OFF_MAP_CELL_TYPE = basicPlatormGeographicMapCellType
            elsif (key == basicTopViewGeographicMapStrings.FLOOR)
                basicPlatormGeographicMapCellType = BasicTopViewGeographicMapCellType.new(basicTopViewGeographicMapStrings.FLOOR, idsWithTypeList, 1)
                _FLOOR_CELL_TYPE = basicPlatormGeographicMapCellType
            elsif (key == basicTopViewGeographicMapStrings.DOOR)
                basicPlatormGeographicMapCellType = BasicTopViewGeographicMapCellType.new(basicTopViewGeographicMapStrings.DOOR, idsWithTypeList, 1)
                _DOOR_CELL_TYPE = basicPlatormGeographicMapCellType
            elsif (key == basicTopViewGeographicMapStrings.STAIRS_UP)
                basicPlatormGeographicMapCellType = BasicTopViewGeographicMapCellType.new(basicTopViewGeographicMapStrings.STAIRS_UP, idsWithTypeList, 1)
                _STAIRS_UP_CELL_TYPE = basicPlatormGeographicMapCellType
            elsif (key == basicTopViewGeographicMapStrings.STAIRS_DOWN)
                basicPlatormGeographicMapCellType = BasicTopViewGeographicMapCellType.new(basicTopViewGeographicMapStrings.STAIRS_DOWN, idsWithTypeList, 1)
                _STAIRS_DOWN_CELL_TYPE = basicPlatormGeographicMapCellType
            elsif (key == basicTopViewGeographicMapStrings.OTHER)
                basicPlatormGeographicMapCellType = BasicTopViewGeographicMapCellType.new(basicTopViewGeographicMapStrings.OTHER, idsWithTypeList, 1)
                _OTHER_CELL_TYPE = basicPlatormGeographicMapCellType
            end
        end
        @BLOCK_CELL_TYPE = _BLOCK_CELL_TYPE
        @OFF_MAP_CELL_TYPE = _OFF_MAP_CELL_TYPE
        @FLOOR_CELL_TYPE = _FLOOR_CELL_TYPE
        @DOOR_CELL_TYPE = _DOOR_CELL_TYPE
        @STAIRS_UP_CELL_TYPE = _STAIRS_UP_CELL_TYPE
        @STAIRS_DOWN_CELL_TYPE = _STAIRS_DOWN_CELL_TYPE
        @OTHER_CELL_TYPE = _OTHER_CELL_TYPE
        type = @maxTileId - 1
        if geographicMapCellTypeArray[type] == nil
            ::Org::Allbinary::Media::Graphics::Geography::Map::Racetrack::RaceTrackGeographicMapCellType.new(commonStrings.START, type, 1, 0)
        else
        end
        type = @maxTileId - 2
        if geographicMapCellTypeArray[type] == nil
            ::Org::Allbinary::Media::Graphics::Geography::Map::Racetrack::RaceTrackGeographicMapCellType.new(commonStrings.START, type, 1, 0)
        else
        end
    end
    

    def getStartType()
        return @maxTileId - 1
    end
    java_overload :getStartType, 0
    

    def getEndType()
        return @maxTileId - 2
    end
    java_overload :getEndType, 0
    

    def getEmptyType()
        return @FLOOR_CELL_TYPE.getTypes()[0]
    end
    java_overload :getEmptyType, 0
    

    def isPath(cellType)
        if @FLOOR_CELL_TYPE.isType(cellType)
            return true
        end
        return false
    end
    java_overload :isPath, 1
    

    def toString()
        return ::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("key: WALL/BLOCK_CELL_TYPE: ").append(@BLOCK_CELL_TYPE.to_s).append("key: FLOOR_CELL_TYPE: ").append(@FLOOR_CELL_TYPE.to_s).append("key: OTHER_CELL_TYPE: ").append(@OTHER_CELL_TYPE.to_s).append("key: OFF_MAP_CELL_TYPE: ").append(@OFF_MAP_CELL_TYPE.to_s).append("key: DOOR_CELL_TYPE: ").append(@DOOR_CELL_TYPE.to_s).append("key: STAIRS_DOWN_CELL_TYPE: ").append(@STAIRS_DOWN_CELL_TYPE.to_s).append("key: STAIRS_UP_CELL_TYPE: ").append(@STAIRS_UP_CELL_TYPE.to_s).to_s
    end
    java_overload :toString, 0
    alias_method :to_s, :toString
end

module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellType, "org/allbinary/media/graphics/geography/map/GeographicMapCellType" unless const_defined?(:GeographicMapCellType, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; module Racetrack; autoload :RaceTrackGeographicMapCellType, "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackGeographicMapCellType" unless const_defined?(:RaceTrackGeographicMapCellType, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Util; autoload :ABHashtable, "org/allbinary/util/ABHashtable" unless const_defined?(:ABHashtable, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :HashtableUtil, "org/allbinary/util/HashtableUtil" unless const_defined?(:HashtableUtil, false); end; end; end
autoload :BasicTopViewGeographicMapCellType, "org/allbinary/media/graphics/geography/map/topview/BasicTopViewGeographicMapCellType" unless const_defined?(:BasicTopViewGeographicMapCellType, false)
autoload :BasicTopViewGeographicMapStrings, "org/allbinary/media/graphics/geography/map/topview/BasicTopViewGeographicMapStrings" unless const_defined?(:BasicTopViewGeographicMapStrings, false)

end; end; end; end; end; end; end

