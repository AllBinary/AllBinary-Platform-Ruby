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
# package org.allbinary.media.graphics.geography.map


module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map

class SimpleGeographicMap
    attr_accessor :commonStrings, :id, :name, :cellTypeIdToGeographicMapCellType, :tiledLayer, :foregroundBasicColor, :backgroundBasicColor, :geographicMapCellTypeFactory

    def jfields_org_allbinary_media_graphics_geography_map_SimpleGeographicMap
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @id = nil unless instance_variable_defined?(:@id)
        @name = nil unless instance_variable_defined?(:@name)
        @cellTypeIdToGeographicMapCellType = nil unless instance_variable_defined?(:@cellTypeIdToGeographicMapCellType)
        @tiledLayer = nil unless instance_variable_defined?(:@tiledLayer)
        @foregroundBasicColor = ::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance().NULL_COLOR
        @backgroundBasicColor = ::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance().NULL_COLOR
        @geographicMapCellTypeFactory = GeographicMapCellTypeFactory.getInstance()
    end
    

    def initialize(id, name, cellTypeIdToGeographicMapCellType, tiledLayer, foregroundBasicColor, backgroundBasicColor)
        jfields_org_allbinary_media_graphics_geography_map_SimpleGeographicMap
        @id = id
        @name = name
        @cellTypeIdToGeographicMapCellType = cellTypeIdToGeographicMapCellType
        @tiledLayer = tiledLayer
        self.setBackgroundBasicColor(backgroundBasicColor)
        self.setForegroundBasicColor(foregroundBasicColor)
    end
    

    def getId()
        return @id
    end
    

    def getName()
        return @name
    end
    

    def reset()
    end
    

    def getAllBinaryTiledLayer()
        return @tiledLayer
    end
    

    # throws Exception
    def getCellTypeAt(cellPosition)
        i_column = cellPosition.getColumn()
        i_row = cellPosition.getRow()
        cellTypeId = @tiledLayer.getCell(i_column, i_row)
        if cellTypeId < 0
            cellTypeId = @tiledLayer.getAnimatedTile(cellTypeId)
        end
        return @geographicMapCellTypeFactory.get(@cellTypeIdToGeographicMapCellType[cellTypeId])
    end
    

    def getCellTypeFromMapCellTypeInt(cellTypeId)
        return @cellTypeIdToGeographicMapCellType[cellTypeId]
    end
    

    def getForegroundBasicColor()
        return @foregroundBasicColor
    end
    

    def setForegroundBasicColor(foregroundBasicColor)
        @foregroundBasicColor = foregroundBasicColor
    end
    

    def getBackgroundBasicColor()
        return @backgroundBasicColor
    end
    

    def setBackgroundBasicColor(backgroundBasicColor)
        @backgroundBasicColor = backgroundBasicColor
    end
end

module ::Org; module Allbinary; module Game; module Layer; autoload :AllBinaryTiledLayer, "org/allbinary/game/layer/AllBinaryTiledLayer" unless const_defined?(:AllBinaryTiledLayer, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory" unless const_defined?(:BasicColorFactory, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :GeographicMapCellPosition, "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition" unless const_defined?(:GeographicMapCellPosition, false)
autoload :GeographicMapCellType, "org/allbinary/media/graphics/geography/map/GeographicMapCellType" unless const_defined?(:GeographicMapCellType, false)
autoload :GeographicMapCellTypeFactory, "org/allbinary/media/graphics/geography/map/GeographicMapCellTypeFactory" unless const_defined?(:GeographicMapCellTypeFactory, false)

end; end; end; end; end; end

