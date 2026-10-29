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

require "org/allbinary/media/graphics/geography/map/GeographicMapCellTypeFactory"

class BasicTopViewGeographicMapCellTypeFactory < GeographicMapCellTypeFactory
    attr_accessor :BLOCK_CELL_TYPE, :OFF_MAP_CELL_TYPE, :FLOOR_CELL_TYPE, :DOOR_CELL_TYPE, :STAIRS_UP_CELL_TYPE, :STAIRS_DOWN_CELL_TYPE, :OTHER_CELL_TYPE, :maxTileId

    def initialize_fields
        @BLOCK_CELL_TYPE = nil
        @OFF_MAP_CELL_TYPE = nil
        @FLOOR_CELL_TYPE = nil
        @DOOR_CELL_TYPE = nil
        @STAIRS_UP_CELL_TYPE = nil
        @STAIRS_DOWN_CELL_TYPE = nil
        @OTHER_CELL_TYPE = nil
        @maxTileId = nil
    end
    

    def initialize(tileTypeToTileIdsMap, maxTileId)
        super()
        initialize_fields
        commonStrings = CommonStrings.getInstance()
        @logUtil.putF(commonStrings.START, self, commonStrings.CONSTRUCTOR)
        @maxTileId = maxTileId
        basicTopViewGeographicMapStrings = BasicTopViewGeographicMapStrings.getInstance()
        geographicMapCellTypeFactory = GeographicMapCellTypeFactory.getInstance()
        geographicMapCellTypeArray = geographicMapCellTypeFactory.getGeographicMapCellTypeArray()
        type = 0
        if geographicMapCellTypeArray[type] == nil
            RaceTrackGeographicMapCellType.new(CommonStrings.getInstance().UNKNOWN, type, 999, 0)
        else
        end
        _BLOCK_CELL_TYPE = BasicTopViewGeographicMapCellType.createType(basicTopViewGeographicMapStrings.DEFAULT, 1, 1)
        _OFF_MAP_CELL_TYPE = _BLOCK_CELL_TYPE
        _FLOOR_CELL_TYPE = _BLOCK_CELL_TYPE
        _DOOR_CELL_TYPE = _BLOCK_CELL_TYPE
        _STAIRS_UP_CELL_TYPE = _BLOCK_CELL_TYPE
        _STAIRS_DOWN_CELL_TYPE = _BLOCK_CELL_TYPE
        _OTHER_CELL_TYPE = _BLOCK_CELL_TYPE
        keyArray = HashtableUtil.getInstance().getKeysAsArray(tileTypeToTileIdsMap)
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
            RaceTrackGeographicMapCellType.new(commonStrings.START, type, 1, 0)
        else
        end
        type = @maxTileId - 2
        if geographicMapCellTypeArray[type] == nil
            RaceTrackGeographicMapCellType.new(commonStrings.START, type, 1, 0)
        else
        end
    end
    

    def getStartType()
        return @maxTileId - 1
    end
    

    def getEndType()
        return @maxTileId - 2
    end
    

    def getEmptyType()
        return @FLOOR_CELL_TYPE.getTypes()[0]
    end
    

    def isPath(cellType)
        if @FLOOR_CELL_TYPE.isType(cellType)
            return true
        end
        return false
    end
    

    def toString()
        return StringMaker.new().append("key: WALL/BLOCK_CELL_TYPE: ").append(@BLOCK_CELL_TYPE.to_s).append("key: FLOOR_CELL_TYPE: ").append(@FLOOR_CELL_TYPE.to_s).append("key: OTHER_CELL_TYPE: ").append(@OTHER_CELL_TYPE.to_s).append("key: OFF_MAP_CELL_TYPE: ").append(@OFF_MAP_CELL_TYPE.to_s).append("key: DOOR_CELL_TYPE: ").append(@DOOR_CELL_TYPE.to_s).append("key: STAIRS_DOWN_CELL_TYPE: ").append(@STAIRS_DOWN_CELL_TYPE.to_s).append("key: STAIRS_UP_CELL_TYPE: ").append(@STAIRS_UP_CELL_TYPE.to_s).to_s
    end
    alias_method :to_s, :toString
end

require "org/allbinary/string/CommonStrings"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellType"
require "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackGeographicMapCellType"
require "org/allbinary/util/ABHashtable"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/HashtableUtil"
require "org/allbinary/media/graphics/geography/map/topview/BasicTopViewGeographicMapCellType"
require "org/allbinary/media/graphics/geography/map/topview/BasicTopViewGeographicMapStrings"

