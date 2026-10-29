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


module WaypointLayerInterface
    

    # throws Exception
    def init(geographicMapCellHistory, geographicMapCellPositionBasicArrayList)
        raise NotImplementedError
    end
    

    def getMoveOutOfBuildAreaPath(geographicMapCellPosition)
        raise NotImplementedError
    end
    

    # throws Exception
    def setClosestGeographicMapCellHistory(pathsList)
        raise NotImplementedError
    end
    

    def teleportTo(geographicMapCellPosition)
        raise NotImplementedError
    end
    

    # throws Exception
    def setLoad(resource)
        raise NotImplementedError
    end
    

    # throws Exception
    def getSurroundingGeographicMapCellPositionList()
        raise NotImplementedError
    end
    

    def isSelected()
        raise NotImplementedError
    end
    

    def shouldAddWaypointFromBuilding()
        raise NotImplementedError
    end
    

    def isShowMoreCaptionStates()
        raise NotImplementedError
    end
    

    # throws Exception
    def trackTo(reason)
        raise NotImplementedError
    end
    

    # throws Exception
    def trackToDXY(dx, dy)
        raise NotImplementedError
    end
    

    # throws Exception
    def buildingChase(allbinaryLayer, cellPosition)
        raise NotImplementedError
    end
    

    def getTrackingEvent()
        raise NotImplementedError
    end
    

    def allStop()
        raise NotImplementedError
    end
    

    def isWaypointListEmptyOrOnlyTargets()
        raise NotImplementedError
    end
    

    # throws Exception
    def getCurrentGeographicMapCellPosition()
        raise NotImplementedError
    end
    

    # throws Exception
    def getTopLeftGeographicMapCellPosition()
        raise NotImplementedError
    end
    

    def getCaptionAnimationHelper()
        raise NotImplementedError
    end
    

    def getWaypointBehavior()
        raise NotImplementedError
    end
    

    def getWaypointLogHelper()
        raise NotImplementedError
    end
    

    def getWaypoint2LogHelper()
        raise NotImplementedError
    end
    

    def getWaypointRunnableLogHelper()
        raise NotImplementedError
    end
end

require "org/allbinary/animation/caption/CaptionAnimationHelperBase"
require "org/allbinary/game/layer/WaypointBehaviorBase"
require "org/allbinary/game/tracking/TrackingEvent"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellHistory"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/game/layer/waypoint/Waypoint2LogHelper"
require "org/allbinary/game/layer/waypoint/WaypointLogHelper"
require "org/allbinary/game/layer/waypoint/WaypointRunnableLogHelper"

