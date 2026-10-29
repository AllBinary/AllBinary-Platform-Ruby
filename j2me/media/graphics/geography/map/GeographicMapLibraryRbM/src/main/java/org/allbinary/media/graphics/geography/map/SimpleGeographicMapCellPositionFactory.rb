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

require "org/allbinary/media/graphics/geography/map/GeographicMapCellPositionFactoryInterface"

class SimpleGeographicMapCellPositionFactory
    include GeographicMapCellPositionFactoryInterface
    

    def getInstance(geographicMapInterface, i_column, i_row, columns, rows, width, height)
        return GeographicMapCellPosition.new(i_column, i_row, columns, rows, width, height)
    end
end

require "org/allbinary/media/graphics/geography/map/BasicGeographicMap"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition"

class SimpleGeographicMapCellPositionFactory
    NULL_GEOGRAPHIC_MAP_CELL_POSITION = GeographicMapCellPosition.new(-1, -1, -1, -1, -1, -1)
end

