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
# package org.allbinary.media.graphics.geography.map.platform

require "org/allbinary/media/graphics/geography/map/GeographicMapCellTypeFactory"

class BasicPlatormGeographicMapCellTypeFactory < GeographicMapCellTypeFactory
    attr_accessor :enumerationUtil, :BLOCK_CELL_TYPE, :JUMP_THRU_CELL_TYPE, :LADDER_CELL_TYPE, :maxTileId

    def initialize_fields
        @enumerationUtil = EnumerationUtil.getInstance()
        @BLOCK_CELL_TYPE = nil
        @JUMP_THRU_CELL_TYPE = nil
        @LADDER_CELL_TYPE = nil
        @maxTileId = nil
    end
    

    def initialize(tileTypeToTileIdsMap, maxTileId)
        super()
        initialize_fields
        commonStrings = CommonStrings.getInstance()
        @logUtil.putF(commonStrings.START, self, commonStrings.INIT)
        @maxTileId = maxTileId
        GeographicMapCellType.new(0, 0)
        _BLOCK_CELL_TYPE = BasicPlatormGeographicMapCellType.createType(1)
        _JUMP_THRU_CELL_TYPE = _BLOCK_CELL_TYPE
        _LADDER_CELL_TYPE = _BLOCK_CELL_TYPE
        _PLATFORM = "Platform"
        _JUMP_TRHU = "JumpThru"
        _LADDER = "Ladder"
        enumeration = tileTypeToTileIdsMap.keys()
        idsWithTypeList = nil
        key = nil
        basicPlatormGeographicMapCellType = nil
        while @enumerationUtil.hasMoreElements(enumeration)
            key = @enumerationUtil.nextElement(enumeration)
            @logUtil.putF(key, self, commonStrings.INIT)
            idsWithTypeList = tileTypeToTileIdsMap.get(key)
            basicPlatormGeographicMapCellType = BasicPlatormGeographicMapCellType.new(idsWithTypeList)
            if (key == _PLATFORM)
                _BLOCK_CELL_TYPE = basicPlatormGeographicMapCellType
            end
            if (key == _JUMP_TRHU)
                _JUMP_THRU_CELL_TYPE = basicPlatormGeographicMapCellType
            end
            if (key == _LADDER)
                _LADDER_CELL_TYPE = basicPlatormGeographicMapCellType
            end
        end
        @BLOCK_CELL_TYPE = _BLOCK_CELL_TYPE
        @JUMP_THRU_CELL_TYPE = _JUMP_THRU_CELL_TYPE
        @LADDER_CELL_TYPE = _LADDER_CELL_TYPE
        GeographicMapCellType.new(@maxTileId - 1, 0)
        GeographicMapCellType.new(@maxTileId - 2, 0)
    end
    

    def getStartType()
        return @maxTileId - 1
    end
    

    def getEndType()
        return @maxTileId - 2
    end
    

    def getEmptyType()
        return 0
    end
    

    def isPath(cellType)
        if cellType.getType() == 0
            return true
        end
        return false
    end
end

require "java/util/Enumeration"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellType"
require "org/allbinary/util/ABHashtable"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/EnumerationUtil"
require "org/allbinary/media/graphics/geography/map/platform/BasicPlatormGeographicMapCellType"

