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


class LayerCoveringCellPositionsUtil
    attr_accessor :cellPositionsUtil

    def initialize_fields
        @cellPositionsUtil = CellPositionsUtil.getInstance()
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return LayerCoveringCellPositionsUtil.instance
    end
    

    # throws Exception
    def getAllXY(geographicMapInterface, layerInterface, x, y, reusableList)
        topLeftGeographicMapCellPosition = geographicMapInterface.getCellPositionAtXY(x, y)
        return self.getAll(geographicMapInterface, topLeftGeographicMapCellPosition, layerInterface, reusableList)
    end
    

    # throws Exception
    def getAll(geographicMapInterface, topLeftGeographicMapCellPosition, layerInterface, reusableList)
        reusableList.clear()
        columns = layerInterface.getWidth() / geographicMapInterface.getAllBinaryTiledLayer().getCellWidth()
        rows = layerInterface.getHeight() / geographicMapInterface.getAllBinaryTiledLayer().getCellHeight()
        if columns == 0
            columns = 1
        end
        if rows == 0
            rows = 1
        end
        return @cellPositionsUtil.getAll(geographicMapInterface, topLeftGeographicMapCellPosition, columns, rows, reusableList)
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
require "org/allbinary/media/graphics/geography/map/CellPositionsUtil"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition"

class LayerCoveringCellPositionsUtil
    @@instance = LayerCoveringCellPositionsUtil.new()
end

