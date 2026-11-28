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


module ::Org; module Allbinary; module Game; module Layer; module Waypoint

class Waypoint2LogHelper
    

    def self.getInstance()
        return @@instance
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
        Waypoint2LogHelper.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        Waypoint2LogHelper.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = Waypoint2LogHelper.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "Waypoint2LogHelper"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Game; module Layer; autoload :PathFindingLayerInterface, "org/allbinary/game/layer/PathFindingLayerInterface" unless const_defined?(:PathFindingLayerInterface, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :WaypointBehaviorBase, "org/allbinary/game/layer/WaypointBehaviorBase" unless const_defined?(:WaypointBehaviorBase, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellPosition, "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition" unless const_defined?(:GeographicMapCellPosition, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end

begin
    Waypoint2LogHelper.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

