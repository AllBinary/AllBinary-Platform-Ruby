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


class Waypoint2LogHelper
    

    def self.getInstance()
        return Waypoint2LogHelper.instance
    end
    

    def initRange(associatedAdvancedRTSGameLayer, closeRange, sensorRange)
    end
    

    def processPossibleTarget(associatedAdvancedRTSGameLayer, unitWaypointBehavior2, layerInterface, anotherTargetDistance, isShorterThanCurrentTargetDistance, isCurrentTargetDestroyed)
    end
    

    def processSetTarget(associatedAdvancedRTSGameLayer, unitWaypointBehavior2, layerInterface, anotherTargetDistance)
    end
    

    def processPossibleTargetCloser(associatedAdvancedRTSGameLayer, unitWaypointBehavior2, layerInterface, anotherTargetDistance)
    end
    

    def setTarget(associatedAdvancedRTSGameLayer, unitWaypointBehavior2, layerInterface, anotherTargetDistance)
    end
    

    def setTargetPath(associatedAdvancedRTSGameLayer)
    end
    

    def setTargetPathIgnoreNewPath(associatedAdvancedRTSGameLayer, unitWaypointBehavior2)
    end
    

    def processWaypoint(associatedAdvancedRTSGameLayer, unitWaypointBehavior2, targetLayer, size)
    end
    

    def processWaypointTracked(associatedAdvancedRTSGameLayer, unitWaypointBehavior2)
    end
    

    def processWaypointTrackedVisit(associatedAdvancedRTSGameLayer, geographicMapCellPosition)
    end
    

    def processWaypointTrackedWithoutProgress(associatedAdvancedRTSGameLayer, reason)
    end
    

    def wander(associatedAdvancedRTSGameLayer)
    end
    

    def targetDestroyed(associatedAdvancedRTSGameLayer)
    end
    

    def processTargeting(associatedAdvancedRTSGameLayer, dx, dy)
    end
    

    def processTargetingNonWayPoint(associatedAdvancedRTSGameLayer, dx, dy)
    end
    

    def removeWaypoint(associatedAdvancedRTSGameLayer, unitWaypointBehavior2, waypointLayer, reason)
    end
    

    def removeWaypointList(associatedAdvancedRTSGameLayer, unitWaypointBehavior2, list)
    end
    

    def removeWaypointClear(associatedAdvancedRTSGameLayer)
    end
    

    def clearTarget(associatedAdvancedRTSGameLayer)
    end
    

    def addWaypointFromUser(associatedAdvancedRTSGameLayer, advancedRTSGameLayer)
    end
    

    def targetMovedSoRetarget(associatedAdvancedRTSGameLayer)
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/game/layer/PathFindingLayerInterface"
require "org/allbinary/game/layer/WaypointBehaviorBase"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition"
require "org/allbinary/util/BasicArrayList"

class Waypoint2LogHelper
    @@instance = Waypoint2LogHelper.new()
end

