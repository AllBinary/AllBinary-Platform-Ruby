# 
# AllBinary Open License Version 1 
# Copyright (c) 2006 AllBinary 
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

require "org/allbinary/game/layer/building/event/BuildingEventListenerInterface"
require "org/allbinary/game/layer/waypoint/WaypointBase"

class NoCacheWaypoint < WaypointBase
    include BuildingEventListenerInterface
    attr_accessor :ownerLayer

    def initialize_fields
        @ownerLayer = nil
    end
    

    def initialize(ownerLayer, sound)
        super(sound)
        initialize_fields
        @ownerLayer = ownerLayer
    end
    

    # throws Exception
    def setAllBinaryGameLayerManager(allBinaryGameLayerManager)
        super(allBinaryGameLayerManager)
    end
    

    def releaseCachedPaths()
    end
    

    # throws Exception
    def getPathsListFromCacheOnly(geographicMapCellPosition)
        return BasicArrayListUtil.getInstance().getImmutableInstance()
    end
    

    # throws Exception
    def getPathsListRunnable(geographicMapCellPosition)
        return self.createPaths(geographicMapCellPosition)
    end
    

    # throws Exception
    def getEndGeographicMapCellPosition(startGeographicMapCellPosition)
        endList = @ownerLayer.getEndGeographicMapCellPositionList()
        endGeographicMapCellPosition = BasicArrayListUtil.getInstance().getRandom(endList)
        if startGeographicMapCellPosition == endGeographicMapCellPosition
            (endList.size() - 1).step(0, -(1)) do |index|
                endGeographicMapCellPosition = endList.get(index)
                if startGeographicMapCellPosition != endGeographicMapCellPosition
                    break
                end
            end
        end
        return endGeographicMapCellPosition
    end
    

    # throws Exception
    def createPaths(startGeographicMapCellPosition)
        endGeographicMapCellPosition = self.getEndGeographicMapCellPosition(startGeographicMapCellPosition)
        if endGeographicMapCellPosition == nil
            return BasicArrayListUtil.getInstance().getImmutableInstance()
        end
        if startGeographicMapCellPosition == endGeographicMapCellPosition
            if @ownerLayer.shouldHandleStartSameAsEnd()
                return BasicArrayListUtil.getInstance().getImmutableInstance()
            else
                raise StandardError.new("Start should not be End: " + (endGeographicMapCellPosition).to_s)
            end
        end
        geographicMapCompositeInterface = @allBinaryGameLayerManagerP
        geographicMapInterface = geographicMapCompositeInterface.getGeographicMapInterface()[0]
        raceTrackGeographicMap = geographicMapInterface
        raceTrackGeographicMapCellTypeFactory = raceTrackGeographicMap.getGeographicMapCellTypeFactory()
        customMapGenerator = raceTrackGeographicMap.getCustomMapGenerator()
        customMapGenerator.copyMapIntoCustomMap()
        customMapArray = customMapGenerator.getCustomMapArray()
        customMapArray[startGeographicMapCellPosition.getRow()][startGeographicMapCellPosition.getColumn()] = raceTrackGeographicMapCellTypeFactory.getStartType()
        customMapArray[endGeographicMapCellPosition.getRow()][endGeographicMapCellPosition.getColumn()] = raceTrackGeographicMapCellTypeFactory.getEndType()
        pathFindingInfo = PathFindingInfoFactory.getInstance().getInstancePathFindingInfo(raceTrackGeographicMap, customMapArray)
        list = PathGenerator.getInstance().getInstanceNoCache(geographicMapInterface, pathFindingInfo, 2)
        if list.size() < 1
            raise StandardError.new("Path may have been cleared by clearing caching")
        end
        return list
    end
    

    def onEvent(eventObject)
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, self)
    end
    

    # throws Exception
    def onBuildingEvent(event)
    end
    

    def reset()
        self.getConnectedWaypointList().clear()
    end
    

    # throws Exception
    def visit(unitLayer)
        if unitLayer.getGroupInterface()[0] != @ownerLayer.getGroupInterface()[0]
            return
        end
        size = self.getConnectedWaypointList().size()
        if size > 0
            unitWaypointBehavior = unitLayer.getWaypointBehavior()
            while self.getConnectedWaypointList().size() > 0
                rtsLayer = self.getConnectedWaypointList().get(0)
                if rtsLayer.isDestroyed()
                    self.getConnectedWaypointList().remove(rtsLayer)
                else
                    unitLayer.handleCost(@ownerLayer)
                    unitWaypointBehavior.insertWaypoint(0, rtsLayer)
                    break
                end
            end
        end
    end
end

require "org/allbinary/game/layer/AllBinaryGameLayerManager"
require "org/allbinary/game/layer/PathFindingLayerInterface"
require "org/allbinary/game/layer/RTSLayerEvent"
require "org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer"
require "org/allbinary/game/layer/unit/UnitWaypointBehavior"
require "org/allbinary/game/media/graphics/geography/map/racetrack/PathFindingInfoFactory"
require "org/allbinary/logic/communication/log/ForcedLogUtil"
require "org/allbinary/logic/util/event/AllBinaryEventObject"
require "org/allbinary/logic/util/event/EventStrings"
require "org/allbinary/media/audio/Sound"
require "org/allbinary/media/graphics/geography/map/BasicGeographicMap"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellTypeFactory"
require "org/allbinary/media/graphics/geography/map/GeographicMapCompositeInterface"
require "org/allbinary/media/graphics/geography/map/racetrack/CustomMapGenerator"
require "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackGeographicMap"
require "org/allbinary/media/graphics/geography/pathfinding/PathFindingInfo"
require "org/allbinary/media/graphics/geography/pathfinding/PathGenerator"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListUtil"

