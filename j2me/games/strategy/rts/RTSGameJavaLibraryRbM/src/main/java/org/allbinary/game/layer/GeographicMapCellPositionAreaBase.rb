# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.allbinary.game.layer

require "org/allbinary/game/layer/GeographicMapCellPositionAreaInterface"

class GeographicMapCellPositionAreaBase
    include GeographicMapCellPositionAreaInterface
    

    def getNextSurroundingGeographicMapCellPosition()
        raise RuntimeError.new()
    end
    

    def getOccupyingGeographicMapCellPositionList()
        raise RuntimeError.new()
    end
    

    def getSurroundingGeographicMapCellPositionList()
        raise RuntimeError.new()
    end
    

    # throws Exception
    def update(geographicMapInterface)
        raise RuntimeError.new()
    end
end

require "org/allbinary/media/graphics/geography/map/BasicGeographicMap"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition"
require "org/allbinary/util/BasicArrayList"

class GeographicMapCellPositionAreaBase
    NULL_GEOGRPAHIC_MAP_POSITION_AREA_BASE = GeographicMapCellPositionAreaBase.new()
end

