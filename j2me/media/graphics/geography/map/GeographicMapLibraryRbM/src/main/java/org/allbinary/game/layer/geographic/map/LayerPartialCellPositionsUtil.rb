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
# package org.allbinary.game.layer.geographic.map


class LayerPartialCellPositionsUtil
    

    # throws Exception
    def getAll(geographicMapInterface, layerInterface, reusableList)
        reusableList.clear()
        topLeftGeographicMapCellPosition = geographicMapInterface.getCellPositionAtXYNoThrow(layerInterface.getXP(), layerInterface.getYP())
        topRightGeographicMapCellPosition = geographicMapInterface.getCellPositionAtXYNoThrow(layerInterface.getXP() + layerInterface.getWidth(), layerInterface.getYP())
        bottomLeftGeographicMapCellPosition = geographicMapInterface.getCellPositionAtXYNoThrow(layerInterface.getXP(), layerInterface.getYP() + layerInterface.getHeight())
        bottomRightGeographicMapCellPosition = geographicMapInterface.getCellPositionAtXYNoThrow(layerInterface.getXP() + layerInterface.getWidth(), layerInterface.getYP() + layerInterface.getHeight())
        if topLeftGeographicMapCellPosition != SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
            reusableList.add(topLeftGeographicMapCellPosition)
        end
        if topRightGeographicMapCellPosition != SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION && topLeftGeographicMapCellPosition != topRightGeographicMapCellPosition
            reusableList.add(topRightGeographicMapCellPosition)
        end
        if bottomLeftGeographicMapCellPosition != SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION && !reusableList.contains(bottomLeftGeographicMapCellPosition)
            reusableList.add(bottomLeftGeographicMapCellPosition)
        end
        if bottomRightGeographicMapCellPosition != SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION && !reusableList.contains(bottomRightGeographicMapCellPosition)
            reusableList.add(bottomRightGeographicMapCellPosition)
        end
        return reusableList
    end
    

    # throws Exception
    def getAllDXY(geographicMapInterface, layerInterface, dx, dy, reusableList)
        reusableList.clear()
        topLeftGeographicMapCellPosition = geographicMapInterface.getCellPositionAtXYNoThrow(layerInterface.getXP() + dx, layerInterface.getYP() + dy)
        topRightGeographicMapCellPosition = geographicMapInterface.getCellPositionAtXYNoThrow(layerInterface.getXP() + layerInterface.getWidth() + dx, layerInterface.getYP() + dy)
        bottomLeftGeographicMapCellPosition = geographicMapInterface.getCellPositionAtXYNoThrow(layerInterface.getXP() + dx, layerInterface.getYP() + layerInterface.getHeight() + dy)
        bottomRightGeographicMapCellPosition = geographicMapInterface.getCellPositionAtXYNoThrow(layerInterface.getXP() + layerInterface.getWidth() + dx, layerInterface.getYP() + layerInterface.getHeight() + dy)
        if topLeftGeographicMapCellPosition != SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
            reusableList.add(topLeftGeographicMapCellPosition)
        end
        if topRightGeographicMapCellPosition != SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION && topLeftGeographicMapCellPosition != topRightGeographicMapCellPosition
            reusableList.add(topRightGeographicMapCellPosition)
        end
        if bottomLeftGeographicMapCellPosition != SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION && !reusableList.contains(bottomLeftGeographicMapCellPosition)
            reusableList.add(bottomLeftGeographicMapCellPosition)
        end
        if bottomRightGeographicMapCellPosition != SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION && !reusableList.contains(bottomRightGeographicMapCellPosition)
            reusableList.add(bottomRightGeographicMapCellPosition)
        end
        return reusableList
    end
    

    def self.getInstance()
        return LayerPartialCellPositionsUtil.instance
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/media/graphics/geography/map/BasicGeographicMap"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition"
require "org/allbinary/media/graphics/geography/map/SimpleGeographicMapCellPositionFactory"

class LayerPartialCellPositionsUtil
    @@instance = LayerPartialCellPositionsUtil.new()
end

