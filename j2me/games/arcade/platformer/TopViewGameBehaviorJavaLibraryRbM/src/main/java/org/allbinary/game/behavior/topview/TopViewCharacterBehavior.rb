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
# package org.allbinary.game.behavior.topview


class TopViewCharacterBehavior
    

    # throws Exception
    def terrainEvent(layer, direction, x, y, geographicMapInterfaceArray, geographicMapCellPosition)
    end
    

    def terrainMove(layer, geographicMapInterfaceArray, x, y)
    end
    

    def hasSolidBlock(geographicMapInterfaceArray, geographicMapCellTypeArray)
        size = geographicMapInterfaceArray.length
        basicTopViewGeographicMapCellTypeFactory = nil
        (0...size).each do |index|
            basicTopViewGeographicMapCellTypeFactory = geographicMapInterfaceArray[index].getGeographicMapCellTypeFactory()
            if basicTopViewGeographicMapCellTypeFactory.BLOCK_CELL_TYPE.isType(geographicMapCellTypeArray[index])
                return true
            end
        end
        return false
    end
end

require "org/allbinary/direction/Direction"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/media/graphics/geography/map/BasicGeographicMap"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellType"
require "org/allbinary/media/graphics/geography/map/topview/BasicTopViewGeographicMapCellTypeFactory"

