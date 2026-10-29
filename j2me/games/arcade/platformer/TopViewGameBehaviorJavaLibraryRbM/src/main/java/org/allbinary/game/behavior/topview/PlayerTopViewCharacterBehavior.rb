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

require "org/allbinary/game/behavior/topview/TopViewCharacterBehavior"

class PlayerTopViewCharacterBehavior < TopViewCharacterBehavior
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end

    def initialize
        super()
        initialize_fields
    end
    

    # throws Exception
    def terrainEvent(layer, direction, x, y, geographicMapInterfaceArray, geographicMapCellPosition)
        TrackingEventHandler.getInstance().fireEvent(TrackingEventCircularStaticPool.getInstance().getNextInstance(layer))
    end
    

    def terrainMove(layer, geographicMapInterfaceArray, x, y)
        basicGeographicMapUtil = BasicGeographicMapUtil.getInstance()
        basicGeographicMapUtil.setPosition(geographicMapInterfaceArray, x, y)
    end
    

    def moveIfOnScreen(layer, ax, ay)
    end
    

    def isTiledLayerMoveable(terrainTiledLayer, x, y)
        return (terrainTiledLayer.getXP() + DisplayInfoSingleton.getInstance().getLastWidth() < terrainTiledLayer.getWidth() || x < 0) && (terrainTiledLayer.getXP() > 0 || x > 0)
    end
end

require "org/allbinary/direction/Direction"
require "org/allbinary/game/layer/AllBinaryTiledLayer"
require "org/allbinary/game/tracking/TrackingEventCircularStaticPool"
require "org/allbinary/game/tracking/TrackingEventHandler"
require "org/allbinary/graphics/displayable/DisplayInfoSingleton"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/media/graphics/geography/map/BasicGeographicMap"
require "org/allbinary/media/graphics/geography/map/BasicGeographicMapUtil"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition"

