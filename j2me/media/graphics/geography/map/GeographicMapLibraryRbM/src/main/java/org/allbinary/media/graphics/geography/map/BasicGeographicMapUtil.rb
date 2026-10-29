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


class BasicGeographicMapUtil
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return BasicGeographicMapUtil.instance
    end
    

    # throws Exception
    def getBorderingRow(direction, oldGeographicMapCellPosition)
        _LOCATION_CHANGE = 1
        case direction
        when 0
                return oldGeographicMapCellPosition.getRow()
        when 1
                return oldGeographicMapCellPosition.getRow()
        when 2
                return oldGeographicMapCellPosition.getRow() + _LOCATION_CHANGE
        when 3
                return oldGeographicMapCellPosition.getRow() - _LOCATION_CHANGE
        else
                raise StandardError.new("Only Four Directions")
        end
    end
    

    # throws Exception
    def getBorderingColumn(direction, oldGeographicMapCellPosition)
        _LOCATION_CHANGE = 1
        case direction
        when 0
                return oldGeographicMapCellPosition.getColumn() - _LOCATION_CHANGE
        when 1
                return oldGeographicMapCellPosition.getColumn() + _LOCATION_CHANGE
        when 2
                return oldGeographicMapCellPosition.getColumn()
        when 3
                return oldGeographicMapCellPosition.getColumn()
        else
                raise StandardError.new("Only Four Directions")
        end
    end
    

    # throws Exception
    def isSameCellPosition(fromGeographicMapCellPosition, toGeographicMapCellPosition)
        fromColumn = fromGeographicMapCellPosition.getColumn()
        fromRow = fromGeographicMapCellPosition.getRow()
        goColumn = toGeographicMapCellPosition.getColumn()
        goRow = toGeographicMapCellPosition.getRow()
        if fromColumn == goColumn && fromRow == goRow
            return true
        else
            return false
        end
    end
    

    def createAllBinaryTiledLayerArray(geographicMapInterfaceArray)
        tiledLayerArray = Array.new(geographicMapInterfaceArray.length, nil)
        return self.getAllBinaryTiledLayerArray(geographicMapInterfaceArray, tiledLayerArray, 0)
    end
    

    def getAllBinaryTiledLayerArray(geographicMapInterfaceArray, tiledLayerArray, startIndex)
        geographicMapInterface = nil
        size = geographicMapInterfaceArray.length
        count = 0
        index = size + startIndex
        while (index -= 1) >= startIndex
            geographicMapInterface = geographicMapInterfaceArray[index]
            tiledLayerArray[((count += 1) - 1)] = geographicMapInterface.getAllBinaryTiledLayer()
        end
        return tiledLayerArray
    end
    

    def move(geographicMapInterfaceArray, dx, dy)
        geographicMapInterface = nil
        size = geographicMapInterfaceArray.length
        index = size
        while (index -= 1) >= 0
            geographicMapInterface = geographicMapInterfaceArray[index]
            geographicMapInterface.getAllBinaryTiledLayer().moveDXY(dx, dy)
        end
    end
    

    def setPosition(geographicMapInterfaceArray, x, y)
        geographicMapInterface = nil
        size = geographicMapInterfaceArray.length
        index = size
        while (index -= 1) >= 0
            geographicMapInterface = geographicMapInterfaceArray[index]
            geographicMapInterface.getAllBinaryTiledLayer().setPosition(x, y, geographicMapInterface.getAllBinaryTiledLayer().getZP())
        end
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/layer/Layer"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/media/graphics/geography/map/BasicGeographicMap"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition"

class BasicGeographicMapUtil
    @@instance = BasicGeographicMapUtil.new()
end

