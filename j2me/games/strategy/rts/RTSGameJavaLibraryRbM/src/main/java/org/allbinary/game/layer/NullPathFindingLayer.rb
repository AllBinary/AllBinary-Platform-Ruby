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

require "java/lang/JavaOverload"
require "org/allbinary/game/layer/PathFindingLayerInterface"

module ::Org; module Allbinary; module Game; module Layer

class NullPathFindingLayer
    include PathFindingLayerInterface
    

    def getName()
        raise RuntimeError.new()
    end
    java_overload :getName, 0
    

    # throws Exception
    def getEndGeographicMapCellPositionList()
        raise RuntimeError.new()
    end
    java_overload :getEndGeographicMapCellPositionList, 0
    

    def shouldHandleStartSameAsEnd()
        raise RuntimeError.new()
    end
    java_overload :shouldHandleStartSameAsEnd, 0
    

    def getGeographicMapCellPositionArea()
        raise RuntimeError.new()
    end
    java_overload :getGeographicMapCellPositionArea, 0
    

    def getHudPaintable()
        raise RuntimeError.new()
    end
    java_overload :getHudPaintable, 0
    

    # throws Exception
    def handleCost(ownerLayer)
        raise RuntimeError.new()
    end
    java_overload :handleCost, 1
    

    def getParentLayer()
        raise RuntimeError.new()
    end
    java_overload :getParentLayer, 0
    

    def getRTSLayer2LogHelper()
        raise RuntimeError.new()
    end
    java_overload :getRTSLayer2LogHelper, 0
    

    # throws Exception
    def setTarget(targetGameLayer)
        raise RuntimeError.new()
    end
    java_overload :setTarget, 1
    

    # throws Exception
    def init(geographicMapCellHistory, geographicMapCellPositionBasicArrayList)
        raise RuntimeError.new()
    end
    java_overload :init, 2
    

    def getMoveOutOfBuildAreaPath(geographicMapCellPosition)
        raise RuntimeError.new()
    end
    java_overload :getMoveOutOfBuildAreaPath, 1
    

    # throws Exception
    def setClosestGeographicMapCellHistory(pathsList)
        raise RuntimeError.new()
    end
    java_overload :setClosestGeographicMapCellHistory, 1
    

    def teleportTo(geographicMapCellPosition)
        raise RuntimeError.new()
    end
    java_overload :teleportTo, 1
    

    # throws Exception
    def setLoad(resource)
        raise RuntimeError.new()
    end
    java_overload :setLoad, 1
    

    # throws Exception
    def getSurroundingGeographicMapCellPositionList()
        raise RuntimeError.new()
    end
    java_overload :getSurroundingGeographicMapCellPositionList, 0
    

    def isSelected()
        raise RuntimeError.new()
    end
    java_overload :isSelected, 0
    

    def shouldAddWaypointFromBuilding()
        raise RuntimeError.new()
    end
    java_overload :shouldAddWaypointFromBuilding, 0
    

    def isShowMoreCaptionStates()
        raise RuntimeError.new()
    end
    java_overload :isShowMoreCaptionStates, 0
    

    # throws Exception
    def trackTo(reason)
        raise RuntimeError.new()
    end
    java_overload :trackTo, 1
    

    # throws Exception
    def trackToDXY(dx, dy)
        raise RuntimeError.new()
    end
    java_overload :trackToDXY, 2
    

    # throws Exception
    def buildingChase(allbinaryLayer, cellPosition)
        raise RuntimeError.new()
    end
    java_overload :buildingChase, 2
    

    def getTrackingEvent()
        raise RuntimeError.new()
    end
    java_overload :getTrackingEvent, 0
    

    def allStop()
        raise RuntimeError.new()
    end
    java_overload :allStop, 0
    

    def isWaypointListEmptyOrOnlyTargets()
        raise RuntimeError.new()
    end
    java_overload :isWaypointListEmptyOrOnlyTargets, 0
    

    # throws Exception
    def getCurrentGeographicMapCellPosition()
        raise RuntimeError.new()
    end
    java_overload :getCurrentGeographicMapCellPosition, 0
    

    # throws Exception
    def getTopLeftGeographicMapCellPosition()
        raise RuntimeError.new()
    end
    java_overload :getTopLeftGeographicMapCellPosition, 0
    

    def getCaptionAnimationHelper()
        raise RuntimeError.new()
    end
    java_overload :getCaptionAnimationHelper, 0
    

    def getWaypointBehavior()
        raise RuntimeError.new()
    end
    java_overload :getWaypointBehavior, 0
    

    def getWaypointLogHelper()
        raise RuntimeError.new()
    end
    java_overload :getWaypointLogHelper, 0
    

    def getWaypoint2LogHelper()
        raise RuntimeError.new()
    end
    java_overload :getWaypoint2LogHelper, 0
    

    def getWaypointRunnableLogHelper()
        raise RuntimeError.new()
    end
    java_overload :getWaypointRunnableLogHelper, 0
    

    def getGroupInterface()
        raise RuntimeError.new()
    end
    java_overload :getGroupInterface, 0
    

    # throws Exception
    def isDestroyed()
        raise RuntimeError.new()
    end
    java_overload :isDestroyed, 0
    

    def getSourceId()
        raise RuntimeError.new()
    end
    java_overload :getSourceId, 0

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_PATH_FINDING_LAYER, NullPathFindingLayer.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "NullPathFindingLayer"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_PATH_FINDING_LAYER].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Animation; module Caption; autoload :CaptionAnimationHelperBase, "org/allbinary/animation/caption/CaptionAnimationHelperBase" unless const_defined?(:CaptionAnimationHelperBase, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Identification; autoload :Group, "org/allbinary/game/identification/Group" unless const_defined?(:Group, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Waypoint; autoload :Waypoint2LogHelper, "org/allbinary/game/layer/waypoint/Waypoint2LogHelper" unless const_defined?(:Waypoint2LogHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Waypoint; autoload :WaypointLogHelper, "org/allbinary/game/layer/waypoint/WaypointLogHelper" unless const_defined?(:WaypointLogHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Waypoint; autoload :WaypointRunnableLogHelper, "org/allbinary/game/layer/waypoint/WaypointRunnableLogHelper" unless const_defined?(:WaypointRunnableLogHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Tracking; autoload :TrackingEvent, "org/allbinary/game/tracking/TrackingEvent" unless const_defined?(:TrackingEvent, false); end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellHistory, "org/allbinary/media/graphics/geography/map/GeographicMapCellHistory" unless const_defined?(:GeographicMapCellHistory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellPosition, "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition" unless const_defined?(:GeographicMapCellPosition, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
autoload :GeographicMapCellPositionAreaBase, "org/allbinary/game/layer/GeographicMapCellPositionAreaBase" unless const_defined?(:GeographicMapCellPositionAreaBase, false)
autoload :RTSLayer2LogHelper, "org/allbinary/game/layer/RTSLayer2LogHelper" unless const_defined?(:RTSLayer2LogHelper, false)
autoload :SelectionHudPaintable, "org/allbinary/game/layer/SelectionHudPaintable" unless const_defined?(:SelectionHudPaintable, false)
autoload :WaypointBehaviorBase, "org/allbinary/game/layer/WaypointBehaviorBase" unless const_defined?(:WaypointBehaviorBase, false)

begin
    NullPathFindingLayer.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

