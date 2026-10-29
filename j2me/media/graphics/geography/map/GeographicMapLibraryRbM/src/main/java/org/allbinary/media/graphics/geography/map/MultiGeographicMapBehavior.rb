# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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


class MultiGeographicMapBehavior
    

    # throws Exception
    def getCellTypeAt(geographicMapInterfaceArray, geographicMapCellTypeArray, geographicMapCellPosition)
        size = geographicMapInterfaceArray.length
        cellType = GeographicMapCellType::NULL_GEOGRAPHIC_MAP_CELL_TYPE
        index = size
        while (index -= 1) >= 0
            cellType = geographicMapInterfaceArray[index].getCellTypeAt(geographicMapCellPosition)
            geographicMapCellTypeArray[index] = cellType
        end
        return geographicMapCellTypeArray
    end
end

require "org/allbinary/media/graphics/geography/map/BasicGeographicMap"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellType"

