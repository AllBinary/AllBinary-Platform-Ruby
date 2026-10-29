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
# package org.allbinary.game.layer

require "org/allbinary/game/combat/destroy/DestroyableInterface"
require "org/allbinary/game/identification/GroupInterfaceCompositeInterface"
require "org/allbinary/game/input/GameKeyEventSourceInterface"
require "org/allbinary/game/layer/waypoint/WaypointLayerInterface"

module PathFindingLayerInterface
    include WaypointLayerInterface
    include GameKeyEventSourceInterface
    include GroupInterfaceCompositeInterface
    include DestroyableInterface
    

    # throws Exception
    def getEndGeographicMapCellPositionList()
        raise NotImplementedError
    end
    

    def shouldHandleStartSameAsEnd()
        raise NotImplementedError
    end
    

    def getGeographicMapCellPositionArea()
        raise NotImplementedError
    end
    

    def getHudPaintable()
        raise NotImplementedError
    end
    

    # throws Exception
    def handleCost(ownerLayer)
        raise NotImplementedError
    end
    

    def getParentLayer()
        raise NotImplementedError
    end
    

    def getRTSLayer2LogHelper()
        raise NotImplementedError
    end
    

    # throws Exception
    def setTarget(targetGameLayer)
        raise NotImplementedError
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/game/layer/GeographicMapCellPositionAreaBase"
require "org/allbinary/game/layer/RTSLayer2LogHelper"
require "org/allbinary/game/layer/SelectionHudPaintable"

