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
# package org.allbinary.media.graphics.geography.map.drop

require "org/allbinary/media/graphics/geography/map/drop/DropCellPositionGeneratorInterface"

class BaseDropCellPositionGenerator
    include DropCellPositionGeneratorInterface
    

    def getName()
        return self.class.name
    end
    

    # throws Exception
    def update(allBinaryGameLayerManager, geographicMapInterface)
    end
    

    # throws Exception
    def isDropAllowedAt(geographicMapCellPosition)
        return true
    end
    

    # throws Exception
    def processTick(allBinaryLayerManager)
    end
end

require "org/allbinary/game/layer/AllBinaryGameLayerManager"
require "org/allbinary/layer/AllBinaryLayerManager"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition"
require "org/allbinary/media/graphics/geography/map/BasicGeographicMap"

