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

# require "javax/microedition/lcdui/Image"
# require "javax/microedition/lcdui/NullImage"

class RaceTrackData
    attr_accessor :tileSetImage, :miniTileSetImage, :cellWidth, :cellHeight, :miniCellWidth, :miniCellHeight, :mapArray, :cellTypeIdToGeographicMapCellTypeArray, :NO_OVER_PASSES_ARRAY, :overPassGeographicMapCellPositionArray, :id

    def initialize_fields
        @tileSetImage = NullImage::NULL_IMAGE
        @miniTileSetImage = NullImage::NULL_IMAGE
        @cellWidth = 0
        @cellHeight = 0
        @miniCellWidth = 0
        @miniCellHeight = 0
        @mapArray = NullUtil.getInstance().NULL_INT_ARRAY_ARRAY
        @cellTypeIdToGeographicMapCellTypeArray = NullUtil.getInstance().NULL_INT_ARRAY
        @NO_OVER_PASSES_ARRAY = Array.new(0, nil)
        @overPassGeographicMapCellPositionArray = @NO_OVER_PASSES_ARRAY
        @id = nil
    end
    

    def initialize(id, cellWidth, cellHeight, miniCellWidth, miniCellHeight, cellTypeIdToGeographicMapCellTypeArray, mapArray)
        initialize_fields
        @id = id
        @cellWidth = cellWidth
        @cellHeight = cellHeight
        @miniCellWidth = miniCellWidth
        @miniCellHeight = miniCellHeight
        @mapArray = mapArray
        @cellTypeIdToGeographicMapCellTypeArray = cellTypeIdToGeographicMapCellTypeArray
    end
    

    def setMapArray(mapArray)
        @mapArray = mapArray
    end
    

    def getMapArray()
        return @mapArray
    end
    

    def setCellTypeIdToGeographicMapCellTypeArray(cellTypeIdToGeographicMapCellTypeArray)
        @cellTypeIdToGeographicMapCellTypeArray = cellTypeIdToGeographicMapCellTypeArray
    end
    

    def getCellTypeIdToGeographicMapCellTypeArray()
        return @cellTypeIdToGeographicMapCellTypeArray
    end
    

    def setCellWidth(cellWidth)
        @cellWidth = cellWidth
    end
    

    def getCellWidth()
        return @cellWidth
    end
    

    def setCellHeight(cellHeight)
        @cellHeight = cellHeight
    end
    

    def getCellHeight()
        return @cellHeight
    end
    

    def getOverPassGeographicMapCellPositionArray()
        return @overPassGeographicMapCellPositionArray
    end
    

    def setOverPassGeographicMapCellPositionArray(overPassGeographicMapCellPositionArray)
        @overPassGeographicMapCellPositionArray = overPassGeographicMapCellPositionArray
    end
    

    def getTileSetImage()
        return @tileSetImage
    end
    

    def setTileSetImage(tileSetImage)
        @tileSetImage = tileSetImage
    end
    

    def getMiniTileSetImage()
        return @miniTileSetImage
    end
    

    def setMiniTileSetImage(miniTileSetImage)
        @miniTileSetImage = miniTileSetImage
    end
    

    def getMiniCellWidth()
        return @miniCellWidth
    end
    

    def setMiniCellWidth(miniCellWidth)
        @miniCellWidth = miniCellWidth
    end
    

    def getMiniCellHeight()
        return @miniCellHeight
    end
    

    def setMiniCellHeight(miniCellHeight)
        @miniCellHeight = miniCellHeight
    end
    

    def setId(id)
        @id = id
    end
    

    def getId()
        return @id
    end
end

require "org/allbinary/graphics/CellPosition"
require "org/allbinary/logic/NullUtil"

