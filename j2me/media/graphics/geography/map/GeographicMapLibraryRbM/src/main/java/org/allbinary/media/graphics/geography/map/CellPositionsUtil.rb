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


class CellPositionsUtil
    attr_accessor :reusableSingleThreadedSurroundingList, :surroundArray

    def initialize_fields
        @reusableSingleThreadedSurroundingList = BasicArrayListS.new(8)
        @surroundArray = [[-1, -1], [0, -1], [1, -1], [-1, 1], [0, 1], [1, 1], [1, 0], [-1, 0]]
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return CellPositionsUtil.instance
    end
    

    # throws Exception
    def getAll(geographicMapInterface, topRightGeographicMapCellPosition, columns, rows, reusableList)
        reusableList.clear()
        geographicMapCellPositionFactory = geographicMapInterface.getGeographicMapCellPositionFactory()
        lastColumn = topRightGeographicMapCellPosition.getColumn() + columns
        lastRow = topRightGeographicMapCellPosition.getRow() + rows
        if (columns > 1 && lastColumn > geographicMapInterface.getAllBinaryTiledLayer().getColumns()) || (rows > 1 && lastRow > geographicMapInterface.getAllBinaryTiledLayer().getRows())
            return reusableList
        end
        (0...rows).each do |rowIndex|
            (0...columns).each do |columnIndex|
                geographicMapCellPosition = geographicMapCellPositionFactory.getAt(topRightGeographicMapCellPosition.getColumn() + columnIndex, topRightGeographicMapCellPosition.getRow() + rowIndex)
                reusableList.add(geographicMapCellPosition)
            end
        end
        return reusableList
    end
    

    # throws Exception
    def getAllSurrounding(geographicMapInterface, occupyList, reusableList)
        reusableList.clear()
        (occupyList.size() - 1).step(0, -(1)) do |index|
            layerGeographicMapCellPosition = occupyList.get(index)
            surroundingGeographicMapCellPositionList = self.getAllSurroundingAt(geographicMapInterface, layerGeographicMapCellPosition, @reusableSingleThreadedSurroundingList)
            (surroundingGeographicMapCellPositionList.size() - 1).step(0, -(1)) do |index2|
                geographicMapCellPosition = surroundingGeographicMapCellPositionList.get(index2)
                if !reusableList.contains(geographicMapCellPosition) && !occupyList.contains(geographicMapCellPosition)
                    reusableList.add(geographicMapCellPosition)
                end
            end
        end
        return reusableList
    end
    

    # throws Exception
    def getAllSurroundingAt(geographicMapInterface, layerGeographicMapCellPosition, reusableSurroundingList)
        reusableSurroundingList.clear()
        geographicMapCellPositionFactory = geographicMapInterface.getGeographicMapCellPositionFactory()
        tiledLayer = geographicMapInterface.getAllBinaryTiledLayer()
        row = 0
        column = 0
        (0...8).each do |index|
            column = layerGeographicMapCellPosition.getColumn() + @surroundArray[index][0]
            row = layerGeographicMapCellPosition.getRow() + @surroundArray[index][1]
            if tiledLayer.isOnTileLayer(column, row)
                geographicMapCellPosition = geographicMapCellPositionFactory.getAt(column, row)
                reusableSurroundingList.add(geographicMapCellPosition)
            end
        end
        return reusableSurroundingList
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/game/layer/AllBinaryTiledLayer"
require "org/allbinary/util/BasicArrayListS"
require "org/allbinary/media/graphics/geography/map/BasicGeographicMap"
require "org/allbinary/media/graphics/geography/map/BasicGeographicMapCellPositionFactory"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition"

class CellPositionsUtil
    @@instance = CellPositionsUtil.new()
end

