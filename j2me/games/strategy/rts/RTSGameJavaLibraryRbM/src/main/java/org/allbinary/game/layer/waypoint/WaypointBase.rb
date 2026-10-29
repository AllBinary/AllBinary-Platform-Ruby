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
# package org.allbinary.game.layer.waypoint

require "org/allbinary/logic/util/event/EventListenerInterface"

class WaypointBase
    include EventListenerInterface
    attr_accessor :connectedWaypointList, :sound, :allBinaryGameLayerManagerP

    def initialize_fields
        @connectedWaypointList = BasicArrayListD.new()
        @sound = nil
        @allBinaryGameLayerManagerP = AllBinaryGameLayerManager.getNullInstance()
    end
    

    def initialize(sound)
        initialize_fields
        @sound = sound
    end
    

    def getSound()
        return @sound
    end
    

    # throws Exception
    def setAllBinaryGameLayerManager(allBinaryGameLayerManager)
        @allBinaryGameLayerManagerP = allBinaryGameLayerManager
    end
    

    def getConnectedWaypointList()
        return @connectedWaypointList
    end
    

    def onEvent(eventObject)
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, self)
    end
    

    # throws Exception
    def getPathFindingInfo(geographicMapCellPosition)
        raise RuntimeError.new()
    end
    

    # throws Exception
    def getPathsList(geographicMapCellPosition, pathFindingInfo, multipassState)
        raise RuntimeError.new()
    end
    

    # throws Exception
    def getPathsListRunnable(geographicMapCellPosition)
        raise RuntimeError.new()
    end
    

    # throws Exception
    def getPathsListFromCacheOnly(geographicMapCellPosition)
        raise RuntimeError.new()
    end
    

    # throws Exception
    def visit(unitLayer)
    end
    

    def reset()
    end
    

    def getType()
        return 0
    end
end

require "org/allbinary/game/layer/AllBinaryGameLayerManager"
require "org/allbinary/game/layer/PathFindingLayerInterface"
require "org/allbinary/logic/communication/log/ForcedLogUtil"
require "org/allbinary/logic/util/event/AllBinaryEventObject"
require "org/allbinary/logic/util/event/EventStrings"
require "org/allbinary/media/audio/NoSound"
require "org/allbinary/media/audio/Sound"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition"
require "org/allbinary/media/graphics/geography/pathfinding/MultipassState"
require "org/allbinary/media/graphics/geography/pathfinding/PathFindingInfo"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"

class WaypointBase
    NULL_WAYPOINT_BASE = WaypointBase.new(NoSound.getInstance())
end

