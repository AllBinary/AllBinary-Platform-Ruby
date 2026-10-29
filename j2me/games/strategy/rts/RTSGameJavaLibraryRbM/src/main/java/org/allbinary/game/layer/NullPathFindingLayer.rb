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

require "org/allbinary/game/layer/PathFindingLayerInterface"

class NullPathFindingLayer
    include PathFindingLayerInterface
    

    def getName()
        raise RuntimeError.new()
    end
    

    # throws Exception
    def getEndGeographicMapCellPositionList()
        raise RuntimeError.new()
    end
    

    def shouldHandleStartSameAsEnd()
        raise RuntimeError.new()
    end
    

    def getGeographicMapCellPositionArea()
        raise RuntimeError.new()
    end
    

    def getHudPaintable()
        raise RuntimeError.new()
    end
    

    # throws Exception
    def handleCost(ownerLayer)
        raise RuntimeError.new()
    end
    

    def getParentLayer()
        raise RuntimeError.new()
    end
    

    def getRTSLayer2LogHelper()
        raise RuntimeError.new()
    end
    

    # throws Exception
    def setTarget(targetGameLayer)
        raise RuntimeError.new()
    end
    

    # throws Exception
    def init(geographicMapCellHistory, geographicMapCellPositionBasicArrayList)
        raise RuntimeError.new()
    end
    

    def getMoveOutOfBuildAreaPath(geographicMapCellPosition)
        raise RuntimeError.new()
    end
    

    # throws Exception
    def setClosestGeographicMapCellHistory(pathsList)
        raise RuntimeError.new()
    end
    

    def teleportTo(geographicMapCellPosition)
        raise RuntimeError.new()
    end
    

    # throws Exception
    def setLoad(resource)
        raise RuntimeError.new()
    end
    

    # throws Exception
    def getSurroundingGeographicMapCellPositionList()
        raise RuntimeError.new()
    end
    

    def isSelected()
        raise RuntimeError.new()
    end
    

    def shouldAddWaypointFromBuilding()
        raise RuntimeError.new()
    end
    

    def isShowMoreCaptionStates()
        raise RuntimeError.new()
    end
    

    # throws Exception
    def trackTo(reason)
        raise RuntimeError.new()
    end
    

    # throws Exception
    def trackToDXY(dx, dy)
        raise RuntimeError.new()
    end
    

    # throws Exception
    def buildingChase(allbinaryLayer, cellPosition)
        raise RuntimeError.new()
    end
    

    def getTrackingEvent()
        raise RuntimeError.new()
    end
    

    def allStop()
        raise RuntimeError.new()
    end
    

    def isWaypointListEmptyOrOnlyTargets()
        raise RuntimeError.new()
    end
    

    # throws Exception
    def getCurrentGeographicMapCellPosition()
        raise RuntimeError.new()
    end
    

    # throws Exception
    def getTopLeftGeographicMapCellPosition()
        raise RuntimeError.new()
    end
    

    def getCaptionAnimationHelper()
        raise RuntimeError.new()
    end
    

    def getWaypointBehavior()
        raise RuntimeError.new()
    end
    

    def getWaypointLogHelper()
        raise RuntimeError.new()
    end
    

    def getWaypoint2LogHelper()
        raise RuntimeError.new()
    end
    

    def getWaypointRunnableLogHelper()
        raise RuntimeError.new()
    end
    

    def getGroupInterface()
        raise RuntimeError.new()
    end
    

    # throws Exception
    def isDestroyed()
        raise RuntimeError.new()
    end
    

    def getSourceId()
        raise RuntimeError.new()
    end
end

require "org/allbinary/animation/caption/CaptionAnimationHelperBase"
require "org/allbinary/game/identification/Group"
require "org/allbinary/game/layer/waypoint/Waypoint2LogHelper"
require "org/allbinary/game/layer/waypoint/WaypointLogHelper"
require "org/allbinary/game/layer/waypoint/WaypointRunnableLogHelper"
require "org/allbinary/game/tracking/TrackingEvent"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellHistory"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/game/layer/GeographicMapCellPositionAreaBase"
require "org/allbinary/game/layer/RTSLayer2LogHelper"
require "org/allbinary/game/layer/SelectionHudPaintable"
require "org/allbinary/game/layer/WaypointBehaviorBase"

class NullPathFindingLayer
    NULL_PATH_FINDING_LAYER = NullPathFindingLayer.new()
end

