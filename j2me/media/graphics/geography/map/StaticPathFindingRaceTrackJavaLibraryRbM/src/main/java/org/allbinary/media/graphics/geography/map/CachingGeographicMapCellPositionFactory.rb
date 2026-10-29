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

require "org/allbinary/media/graphics/geography/map/BasicGeographicMapCellPositionFactory"

class CachingGeographicMapCellPositionFactory < BasicGeographicMapCellPositionFactory
    

    def initialize(geographicMapInterface)
        super(geographicMapInterface)
    end
    

    # throws Exception
    def createInstance(i_column, i_row, width, height)
        hashtable = GeographicMapCellPositionFactory.getHashtable()
        cellPositionKey = CellPosition.toStringColRow(i_column, i_row)
        cellPositionCanBeNull = hashtable.get(cellPositionKey)
        if cellPositionCanBeNull == nil
            cellPositionCanBeNull = @geographicMapCellPositionFactoryInterface.getInstance(@geographicMapInterface, i_column, i_row, self.getColumns(), self.getRows(), width, height)
            @geographicMapCellPositionArray[i_row][i_column] = cellPositionCanBeNull
            hashtable.put(cellPositionKey, cellPositionCanBeNull)
        end
        return cellPositionCanBeNull
    end
end

require "org/allbinary/graphics/CellPosition"
require "org/allbinary/util/ABHashtable"
require "org/allbinary/media/graphics/geography/map/BasicGeographicMap"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPositionFactory"

