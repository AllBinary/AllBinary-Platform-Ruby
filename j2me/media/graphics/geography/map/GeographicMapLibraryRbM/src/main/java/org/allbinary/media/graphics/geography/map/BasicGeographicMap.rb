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

require "org/allbinary/media/graphics/geography/map/GeographicMapInterface"
require "org/allbinary/media/graphics/geography/map/SimpleGeographicMap"

class BasicGeographicMap < SimpleGeographicMap
    include GeographicMapInterface
    attr_accessor :mathUtil, :geographicMapCellPositionFactory, :geographicMapCellPositionFactoryInterface, :geographicMapCellTypeFactory

    def initialize_fields
        @mathUtil = MathUtil.getInstance()
        @geographicMapCellPositionFactory = nil
        @geographicMapCellPositionFactoryInterface = nil
        @geographicMapCellTypeFactory = nil
    end
    

    def initialize(id, name, cellTypeIdToGeographicMapCellType, tiledLayer, foregroundBasicColor, backgroundBasicColor, geographicMapCellPositionFactoryInterface, geographicMapCellPositionBaseFactory, geographicMapCellTypeFactory)
        super(id, name, cellTypeIdToGeographicMapCellType, tiledLayer, foregroundBasicColor, backgroundBasicColor)
        initialize_fields
        @geographicMapCellPositionFactoryInterface = geographicMapCellPositionFactoryInterface
        @geographicMapCellPositionFactory = geographicMapCellPositionBaseFactory.getInstance(self)
        @geographicMapCellTypeFactory = geographicMapCellTypeFactory
    end
    

    # throws Exception
    def getCellPosition(direction, oldGeographicMapCellPosition)
        case direction
        when 0
                return @geographicMapCellPositionFactory.getAt(oldGeographicMapCellPosition.getColumn() - 1, oldGeographicMapCellPosition.getRow())
        when 1
                return @geographicMapCellPositionFactory.getAt(oldGeographicMapCellPosition.getColumn() + 1, oldGeographicMapCellPosition.getRow())
        when 2
                return @geographicMapCellPositionFactory.getAt(oldGeographicMapCellPosition.getColumn(), oldGeographicMapCellPosition.getRow() - 1)
        when 3
                return @geographicMapCellPositionFactory.getAt(oldGeographicMapCellPosition.getColumn(), oldGeographicMapCellPosition.getRow() + 1)
        else
                raise StandardError.new("Only Four Directions")
        end
    end
    

    # throws Exception
    def getCellPositionNoThrow(direction, oldGeographicMapCellPosition)
        case direction
        when 0
                if oldGeographicMapCellPosition.getColumn() - 1 >= 0
                    return @geographicMapCellPositionFactory.getAt(oldGeographicMapCellPosition.getColumn() - 1, oldGeographicMapCellPosition.getRow())
                else
                    return SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
                end
        when 1
                if oldGeographicMapCellPosition.getColumn() + 1 < self.getAllBinaryTiledLayer().getColumns()
                    return @geographicMapCellPositionFactory.getAt(oldGeographicMapCellPosition.getColumn() + 1, oldGeographicMapCellPosition.getRow())
                else
                    return SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
                end
        when 2
                if oldGeographicMapCellPosition.getRow() - 1 >= 0
                    return @geographicMapCellPositionFactory.getAt(oldGeographicMapCellPosition.getColumn(), oldGeographicMapCellPosition.getRow() - 1)
                else
                    return SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
                end
        when 3
                if oldGeographicMapCellPosition.getRow() + 1 < self.getAllBinaryTiledLayer().getRows()
                    return @geographicMapCellPositionFactory.getAt(oldGeographicMapCellPosition.getColumn(), oldGeographicMapCellPosition.getRow() + 1)
                else
                    return SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
                end
        else
                return SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
        end
    end
    

    # throws Exception
    def isOfFourDirections(oldGeographicMapCellPosition, newGeographicMapCellPosition)
        (0...4).each do |index|
            if newGeographicMapCellPosition == self.getCellPositionNoThrow(index, oldGeographicMapCellPosition)
                return true
            end
        end
        return false
    end
    

    # throws Exception
    def getCellPositionAtXY(x, y)
        allBinaryTiledLayer = self.getAllBinaryTiledLayer()
        i_column = @mathUtil.abs(x / allBinaryTiledLayer.getCellHeight())
        i_row = @mathUtil.abs(y / allBinaryTiledLayer.getCellWidth())
        return @geographicMapCellPositionFactory.getAt(i_column, i_row)
    end
    

    def getCellPositionAtXYNoThrow(x, y)
        allBinaryTiledLayer = self.getAllBinaryTiledLayer()
        i_column = @mathUtil.abs(x / allBinaryTiledLayer.getCellHeight())
        i_row = @mathUtil.abs(y / allBinaryTiledLayer.getCellWidth())
        if allBinaryTiledLayer.getColumns() > i_column && allBinaryTiledLayer.getRows() > i_row
            begin
                return @geographicMapCellPositionFactory.getAt(i_column, i_row)
            rescue StandardError => e
                return SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
            end
        else
            return SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
        end
    end
    

    # throws Exception
    def isOnMap(geographicMapCellPosition)
        allBinaryTiledLayer = self.getAllBinaryTiledLayer()
        i_column = geographicMapCellPosition.getColumn()
        i_row = geographicMapCellPosition.getRow()
        if allBinaryTiledLayer.getColumns() > i_column && allBinaryTiledLayer.getRows() > i_row
            return true
        else
            return false
        end
    end
    

    # throws Exception
    def getCellPositionAtNoThrow(x, y, x2, y2, geographicMapCellPositionList)
        geographicMapCellPositionList.clear()
        allBinaryTiledLayer = self.getAllBinaryTiledLayer()
        i_columnMin = @mathUtil.abs(x / allBinaryTiledLayer.getCellHeight())
        i_rowMin = @mathUtil.abs(y / allBinaryTiledLayer.getCellWidth())
        i_columnMax = @mathUtil.abs(x2 / allBinaryTiledLayer.getCellHeight()) + 1
        i_rowMax = @mathUtil.abs(y2 / allBinaryTiledLayer.getCellWidth()) + 1
        (i_columnMin...i_columnMax).each do |columnIndex|
            (i_rowMin...i_rowMax).each do |rowIndex|
                if allBinaryTiledLayer.getColumns() > columnIndex && allBinaryTiledLayer.getRows() > rowIndex
                    geographicMapCellPositionList.add(@geographicMapCellPositionFactory.getAt(columnIndex, rowIndex))
                end
            end
        end
        return geographicMapCellPositionList
    end
    

    # throws Exception
    def getCellPositionsAt(layer, currentCellPositionArray, cellPositionArray)
        hasChanged = false
        size = cellPositionArray.length
        size2 = cellPositionArray[0].length
        xPortion = layer.getXP() / (size - 1)
        yPortion = layer.getYP() / (size - 1)
        (0...size).each do |index|
            (0...size2).each do |index2|
                x = xPortion * index
                y = yPortion * index
                cellPositionArray[index][index2] = self.getCellPositionAtXY(x, y)
                if currentCellPositionArray[index][index2] != cellPositionArray[index][index2]
                    hasChanged = true
                end
            end
        end
        return hasChanged
    end
    

    # throws Exception
    def getCellTypeAtXY(x, y)
        cellPosition = self.getCellPositionAtXY(x, y)
        return self.getCellTypeAt(cellPosition)
    end
    

    def getGeographicMapCellPositionFactory()
        return @geographicMapCellPositionFactory
    end
    

    def getGeographicMapCellPositionFactoryInterface()
        return @geographicMapCellPositionFactoryInterface
    end
    

    def getGeographicMapCellTypeFactory()
        return @geographicMapCellTypeFactory
    end
end

require "org/allbinary/game/layer/AllBinaryTiledLayer"
require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/layer/Layer"
require "org/allbinary/logic/math/MathUtil"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/media/graphics/geography/map/BasicGeographicMapCellPositionFactory"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPositionBaseFactory"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPositionFactoryInterface"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellType"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellTypeFactory"
require "org/allbinary/media/graphics/geography/map/SimpleGeographicMapCellPositionFactory"

class BasicGeographicMap
    NULL_BASIC_GEOGRAPHIC_MAP_ARRAY = Array.new(0, nil)
end

