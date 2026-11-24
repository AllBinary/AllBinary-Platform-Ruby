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

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
require "org/allbinary/game/tick/TickableInterface"

module ::Org; module Allbinary; module Game; module Layer

class WaypointBehaviorBase
    include ::Org::Allbinary::Game::Tick::TickableInterface
    attr_accessor :ownedWaypointList, :waypointOverridesAttacking, :waypoint, :steeringVisitorList

    def jfields_org_allbinary_game_layer_WaypointBehaviorBase
        @ownedWaypointList = nil unless instance_variable_defined?(:@ownedWaypointList)
        @waypointOverridesAttacking = true
        @waypoint = ::Org::Allbinary::Game::Layer::Waypoint::WaypointBase::NULL_WAYPOINT_BASE
        @steeringVisitorList = ::Org::Allbinary::Util::BasicArrayListD.new()
    end
    

    def initialize()
        jfields_org_allbinary_game_layer_WaypointBehaviorBase
        @ownedWaypointList = ::Org::Allbinary::Util::BasicArrayListS.new(1)
    end
    

    def getName()
        return self.class.java_name
    end
    java_overload :getName, 0
    

    def isRunning()
        return false
    end
    java_overload :isRunning, 0
    

    # throws Exception
    def processTick(allBinaryLayerManager)
    end
    java_overload :processTick, 1
    

    def getOwnedWaypointList()
        return @ownedWaypointList
    end
    java_overload :getOwnedWaypointList, 0
    

    def getWaypoint()
        return @waypoint
    end
    java_overload :getWaypoint, 0
    

    def setWaypoint(waypoint)
        @waypoint = waypoint
    end
    java_overload :setWaypoint, 1
    

    def getSteeringVisitorList()
        return @steeringVisitorList
    end
    java_overload :getSteeringVisitorList, 0
    

    def getMovementLogicAsString()
        raise RuntimeError.new()
    end
    java_overload :getMovementLogicAsString, 0
    

    def isWaypointListEmptyOrOnlyTargets()
        raise RuntimeError.new()
    end
    java_overload :isWaypointListEmptyOrOnlyTargets, 0
    

    def isInSensorRange(layerInterface, targetDistance)
        raise RuntimeError.new()
    end
    java_overload :isInSensorRange, 2
    

    def getCurrentTargetLayerInterface()
        raise RuntimeError.new()
    end
    java_overload :getCurrentTargetLayerInterface, 0
    

    def getCurrentTargetingStateString()
        raise RuntimeError.new()
    end
    java_overload :getCurrentTargetingStateString, 0
    

    def isTrackingWaypoint()
        raise RuntimeError.new()
    end
    java_overload :isTrackingWaypoint, 0
    

    def getCurrentPathGeographicMapCellPosition()
        raise RuntimeError.new()
    end
    java_overload :getCurrentPathGeographicMapCellPosition, 0
    

    def getCurrentGeographicMapCellHistory()
        raise RuntimeError.new()
    end
    java_overload :getCurrentGeographicMapCellHistory, 0
    

    def isWaypointOverridesAttacking()
        return @waypointOverridesAttacking
    end
    java_overload :isWaypointOverridesAttacking, 0
    

    def getNextUnvisitedPathGeographicMapCellPosition()
        raise RuntimeError.new()
    end
    java_overload :getNextUnvisitedPathGeographicMapCellPosition, 0
    

    def needToMove()
        raise RuntimeError.new()
    end
    java_overload :needToMove, 0
    

    def setWaypointPathsList(waypointPathsList)
        raise RuntimeError.new()
    end
    java_overload :setWaypointPathsList, 1
    

    def getWaypointPathsList()
        raise RuntimeError.new()
    end
    java_overload :getWaypointPathsList, 0
    

    # throws Exception
    def setTarget(layerInterface)
        raise RuntimeError.new()
    end
    java_overload :setTarget, 1
    

    # throws Exception
    def setTargetWithDistance(layerInterface, anotherTargetDistance)
        raise RuntimeError.new()
    end
    java_overload :setTargetWithDistance, 2
    

    # throws Exception
    def clearTarget()
        raise RuntimeError.new()
    end
    java_overload :clearTarget, 0
    

    # throws Exception
    def updatePathOnTargetMove(reason)
    end
    java_overload :updatePathOnTargetMove, 1
end

module ::Org; module Allbinary; module Game; module Layer; module Special; autoload :CollidableDestroyableDamageableLayer, "org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer" unless const_defined?(:CollidableDestroyableDamageableLayer, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Waypoint; autoload :WaypointBase, "org/allbinary/game/layer/waypoint/WaypointBase" unless const_defined?(:WaypointBase, false); end; end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager" unless const_defined?(:AllBinaryLayerManager, false); end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellHistory, "org/allbinary/media/graphics/geography/map/GeographicMapCellHistory" unless const_defined?(:GeographicMapCellHistory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellPosition, "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition" unless const_defined?(:GeographicMapCellPosition, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListS, "org/allbinary/util/BasicArrayListS" unless const_defined?(:BasicArrayListS, false); end; end; end
autoload :PathFindingLayerInterface, "org/allbinary/game/layer/PathFindingLayerInterface" unless const_defined?(:PathFindingLayerInterface, false)

end; end; end; end

