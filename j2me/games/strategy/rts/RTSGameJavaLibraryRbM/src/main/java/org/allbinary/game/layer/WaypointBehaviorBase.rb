# 
# AllBinary Open License Version 1 
# Copyright (c) 2003 AllBinary 
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

require "org/allbinary/game/tick/TickableInterface"

class WaypointBehaviorBase
    include TickableInterface
    attr_accessor :ownedWaypointList, :waypointOverridesAttacking, :waypoint, :steeringVisitorList

    def initialize_fields
        @ownedWaypointList = nil
        @waypointOverridesAttacking = true
        @waypoint = WaypointBase::NULL_WAYPOINT_BASE
        @steeringVisitorList = BasicArrayListD.new()
    end
    

    def initialize()
        initialize_fields
        @ownedWaypointList = BasicArrayListS.new(1)
    end
    

    def getName()
        return self.class.name
    end
    

    def isRunning()
        return false
    end
    

    # throws Exception
    def processTick(allBinaryLayerManager)
    end
    

    def getOwnedWaypointList()
        return @ownedWaypointList
    end
    

    def getWaypoint()
        return @waypoint
    end
    

    def setWaypoint(waypoint)
        @waypoint = waypoint
    end
    

    def getSteeringVisitorList()
        return @steeringVisitorList
    end
    

    def getMovementLogicAsString()
        raise RuntimeError.new()
    end
    

    def isWaypointListEmptyOrOnlyTargets()
        raise RuntimeError.new()
    end
    

    def isInSensorRange(layerInterface, targetDistance)
        raise RuntimeError.new()
    end
    

    def getCurrentTargetLayerInterface()
        raise RuntimeError.new()
    end
    

    def getCurrentTargetingStateString()
        raise RuntimeError.new()
    end
    

    def isTrackingWaypoint()
        raise RuntimeError.new()
    end
    

    def getCurrentPathGeographicMapCellPosition()
        raise RuntimeError.new()
    end
    

    def getCurrentGeographicMapCellHistory()
        raise RuntimeError.new()
    end
    

    def isWaypointOverridesAttacking()
        return @waypointOverridesAttacking
    end
    

    def getNextUnvisitedPathGeographicMapCellPosition()
        raise RuntimeError.new()
    end
    

    def needToMove()
        raise RuntimeError.new()
    end
    

    def setWaypointPathsList(waypointPathsList)
        raise RuntimeError.new()
    end
    

    def getWaypointPathsList()
        raise RuntimeError.new()
    end
    

    # throws Exception
    def setTarget(layerInterface)
        raise RuntimeError.new()
    end
    

    # throws Exception
    def setTargetWithDistance(layerInterface, anotherTargetDistance)
        raise RuntimeError.new()
    end
    

    # throws Exception
    def clearTarget()
        raise RuntimeError.new()
    end
    

    # throws Exception
    def updatePathOnTargetMove(reason)
    end
end

require "org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer"
require "org/allbinary/game/layer/waypoint/WaypointBase"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/layer/AllBinaryLayerManager"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellHistory"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition"
require "org/allbinary/util/BasicArrayListS"
require "org/allbinary/game/layer/PathFindingLayerInterface"

