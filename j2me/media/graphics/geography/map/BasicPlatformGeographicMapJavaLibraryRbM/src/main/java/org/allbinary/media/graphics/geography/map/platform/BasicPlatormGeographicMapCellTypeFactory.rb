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

require "java/lang/Object"
require "java/lang/JavaOverload"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellTypeFactory"

module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; module Platform

class BasicPlatormGeographicMapCellTypeFactory < ::Org::Allbinary::Media::Graphics::Geography::Map::GeographicMapCellTypeFactory
    attr_accessor :enumerationUtil, :BLOCK_CELL_TYPE, :JUMP_THRU_CELL_TYPE, :LADDER_CELL_TYPE, :maxTileId

    def jfields_org_allbinary_media_graphics_geography_map_platform_BasicPlatormGeographicMapCellTypeFactory
        @enumerationUtil = ::Org::Allbinary::Util::EnumerationUtil.getInstance()
        @BLOCK_CELL_TYPE = nil unless instance_variable_defined?(:@BLOCK_CELL_TYPE)
        @JUMP_THRU_CELL_TYPE = nil unless instance_variable_defined?(:@JUMP_THRU_CELL_TYPE)
        @LADDER_CELL_TYPE = nil unless instance_variable_defined?(:@LADDER_CELL_TYPE)
        @maxTileId = nil unless instance_variable_defined?(:@maxTileId)
    end
    

    def initialize(tileTypeToTileIdsMap, maxTileId)
        super()
        jfields_org_allbinary_media_graphics_geography_map_platform_BasicPlatormGeographicMapCellTypeFactory
        commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @logUtil.putF(commonStrings.START, self, commonStrings.INIT)
        @maxTileId = maxTileId
        ::Org::Allbinary::Media::Graphics::Geography::Map::GeographicMapCellType.new(0, 0)
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
        ::Org::Allbinary::Media::Graphics::Geography::Map::GeographicMapCellType.new(@maxTileId - 1, 0)
        ::Org::Allbinary::Media::Graphics::Geography::Map::GeographicMapCellType.new(@maxTileId - 2, 0)
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
        return 0
    end
    java_overload :getEmptyType, 0
    

    def isPath(cellType)
        if cellType.getType() == 0
            return true
        end
        return false
    end
    java_overload :isPath, 1
end

module ::Java; module Util; autoload :Enumeration, "java/util/Enumeration" unless const_defined?(:Enumeration, false); end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellType, "org/allbinary/media/graphics/geography/map/GeographicMapCellType" unless const_defined?(:GeographicMapCellType, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Util; autoload :ABHashtable, "org/allbinary/util/ABHashtable" unless const_defined?(:ABHashtable, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :EnumerationUtil, "org/allbinary/util/EnumerationUtil" unless const_defined?(:EnumerationUtil, false); end; end; end
autoload :BasicPlatormGeographicMapCellType, "org/allbinary/media/graphics/geography/map/platform/BasicPlatormGeographicMapCellType" unless const_defined?(:BasicPlatormGeographicMapCellType, false)

end; end; end; end; end; end; end

