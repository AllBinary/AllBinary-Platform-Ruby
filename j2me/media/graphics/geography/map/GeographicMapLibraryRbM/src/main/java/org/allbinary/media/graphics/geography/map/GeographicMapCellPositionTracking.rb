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


class GeographicMapCellPositionTracking
    attr_accessor :currentGeographicMapCellPosition, :previousGeographicMapCellPosition, :newGeographicMapCellPosition, :currentCellType

    def initialize_fields
        @currentGeographicMapCellPosition = SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
        @previousGeographicMapCellPosition = SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
        @newGeographicMapCellPosition = SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
        @currentCellType = GeographicMapCellType::NULL_GEOGRAPHIC_MAP_CELL_TYPE
    end
    

    def initialize()
        initialize_fields
    end
    

    # throws Exception
    def getCurrentOverCellType(geographicMap)
        geographicMapCellPosition = @currentGeographicMapCellPosition
        if geographicMapCellPosition != @previousGeographicMapCellPosition
            @currentCellType = geographicMap.getCellTypeAt(geographicMapCellPosition)
        end
        return @currentCellType
    end
    

    # throws Exception
    def updateStart(gameCanvasInterface, layer)
        if gameCanvasInterface != SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
            geographicMapCompositeInterface = gameCanvasInterface.getLayerManager()
            geographicMapInterface = geographicMapCompositeInterface.getGeographicMapInterface()[0]
            @newGeographicMapCellPosition = geographicMapInterface.getCellPositionAtXY(layer.getXP() + layer.getHalfWidth(), layer.getYP() + layer.getHalfHeight())
            if @newGeographicMapCellPosition != @currentGeographicMapCellPosition
                @currentGeographicMapCellPosition = @newGeographicMapCellPosition
                return true
            end
        end
        return false
    end
    

    def updateEnd()
        if @currentGeographicMapCellPosition != @previousGeographicMapCellPosition
            @previousGeographicMapCellPosition = @currentGeographicMapCellPosition
            return true
        end
        return false
    end
    

    def getPreviousGeographicMapCellPosition()
        return @previousGeographicMapCellPosition
    end
    

    def getCurrentGeographicMapCellPosition()
        return @currentGeographicMapCellPosition
    end
end

require "org/allbinary/game/displayable/canvas/AllBinaryGameCanvasInterface"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/media/graphics/geography/map/BasicGeographicMap"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellType"
require "org/allbinary/media/graphics/geography/map/GeographicMapCompositeInterface"
require "org/allbinary/media/graphics/geography/map/SimpleGeographicMapCellPositionFactory"

