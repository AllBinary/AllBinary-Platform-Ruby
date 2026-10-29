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


class SimpleGeographicMap
    attr_accessor :commonStrings, :id, :name, :cellTypeIdToGeographicMapCellType, :tiledLayer, :foregroundBasicColor, :backgroundBasicColor, :geographicMapCellTypeFactory

    def initialize_fields
        @commonStrings = CommonStrings.getInstance()
        @id = nil
        @name = nil
        @cellTypeIdToGeographicMapCellType = nil
        @tiledLayer = nil
        @foregroundBasicColor = BasicColorFactory.getInstance().NULL_COLOR
        @backgroundBasicColor = BasicColorFactory.getInstance().NULL_COLOR
        @geographicMapCellTypeFactory = GeographicMapCellTypeFactory.getInstance()
    end
    

    def initialize(id, name, cellTypeIdToGeographicMapCellType, tiledLayer, foregroundBasicColor, backgroundBasicColor)
        initialize_fields
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

require "org/allbinary/game/layer/AllBinaryTiledLayer"
require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/graphics/color/BasicColorFactory"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellType"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellTypeFactory"

