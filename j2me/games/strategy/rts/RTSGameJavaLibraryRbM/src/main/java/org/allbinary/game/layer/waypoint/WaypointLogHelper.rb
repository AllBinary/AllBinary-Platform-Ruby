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


class WaypointLogHelper
    

    def self.getInstance()
        return WaypointLogHelper.instance
    end
    

    def onWaypointEvent(associatedAdvancedRTSGameLayer, advancedRTSGameLayer)
    end
    

    def addWaypointFromBuilding(associatedAdvancedRTSGameLayer, advancedRTSGameLayer)
    end
    

    def addWaypointFromBuildingList(associatedAdvancedRTSGameLayer, advancedRTSGameLayer, list)
    end
    

    def insertWaypoint(associatedAdvancedRTSGameLayer, index, rtsLayer, waypointName)
    end
    

    def insertWaypointList(associatedAdvancedRTSGameLayer, index, rtsLayer, waypointName, list)
    end
    

    def setRandomGeographicMapCellHistoryList(associatedAdvancedRTSGameLayer, pathsList)
    end
    

    def moveAwayFromBuilding(associatedAdvancedRTSGameLayer)
    end
    

    def needToMove(associatedAdvancedRTSGameLayer, unitWaypointBehavior)
    end
    

    def setRandomGeographicMapCellHistory(associatedAdvancedRTSGameLayer)
    end
    

    def setCurrentPathGeographicMapCellPosition(associatedAdvancedRTSGameLayer, existingCurrentPathGeographicMapCellPosition, currentPathGeographicMapCellPosition)
    end
    

    def setNextUnvisitedPathGeographicMapCellPosition(associatedAdvancedRTSGameLayer, existingNextUnvisitedPathGeographicMapCellPosition, nextUnvisitedPathGeographicMapCellPosition)
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
require "org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition"
require "org/allbinary/util/BasicArrayList"

class WaypointLogHelper
    @@instance = WaypointLogHelper.new()
end

