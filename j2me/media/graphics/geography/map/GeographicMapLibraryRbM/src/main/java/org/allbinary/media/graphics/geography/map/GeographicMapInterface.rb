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


module GeographicMapInterface
    

    def getId()
        raise NotImplementedError
    end
    

    def getName()
        raise NotImplementedError
    end
    

    def reset()
        raise NotImplementedError
    end
    

    def getAllBinaryTiledLayer()
        raise NotImplementedError
    end
    

    # throws Exception
    def getCellPositionsAt(layer, currentCellPositionArray, cellPositionArray)
        raise NotImplementedError
    end
    

    # throws Exception
    def getCellPositionAtXY(x, y)
        raise NotImplementedError
    end
    

    # throws Exception
    def getCellPositionAtXYNoThrow(x, y)
        raise NotImplementedError
    end
    

    def getCellTypeFromMapCellTypeInt(cellTypeId)
        raise NotImplementedError
    end
    

    # throws Exception
    def getCellTypeAtXY(x, y)
        raise NotImplementedError
    end
    

    # throws Exception
    def getCellTypeAt(geographicMapCellPosition)
        raise NotImplementedError
    end
    

    def getGeographicMapCellPositionFactory()
        raise NotImplementedError
    end
    

    def getGeographicMapCellPositionFactoryInterface()
        raise NotImplementedError
    end
    

    def getForegroundBasicColor()
        raise NotImplementedError
    end
    

    def getBackgroundBasicColor()
        raise NotImplementedError
    end
end

require "org/allbinary/game/layer/AllBinaryTiledLayer"
require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/layer/Layer"
require "org/allbinary/media/graphics/geography/map/BasicGeographicMapCellPositionFactory"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPositionFactoryInterface"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellType"

