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

require "java/lang/JavaOverload"
require "org/allbinary/game/layer/building/event/BuildingEventListenerInterface"
require "org/allbinary/game/layer/waypoint/WaypointBase"

module ::Org; module Allbinary; module Game; module Layer; module Waypoint

class NoCacheWaypoint < WaypointBase
    include ::Org::Allbinary::Game::Layer::Building::Event::BuildingEventListenerInterface
    attr_accessor :ownerLayer

    def jfields_org_allbinary_game_layer_waypoint_NoCacheWaypoint
        @ownerLayer = nil unless instance_variable_defined?(:@ownerLayer)
    end
    

    def initialize(ownerLayer, sound)
        super(sound)
        jfields_org_allbinary_game_layer_waypoint_NoCacheWaypoint
        @ownerLayer = ownerLayer
    end
    

    # throws Exception
    def setAllBinaryGameLayerManager(allBinaryGameLayerManager)
        NoCacheWaypoint.superclass.java_super_method(:setAllBinaryGameLayerManager, 1).bind(self).call(allBinaryGameLayerManager)
    end
    java_overload :setAllBinaryGameLayerManager, 1
    

    def releaseCachedPaths()
    end
    java_overload :releaseCachedPaths, 0
    

    # throws Exception
    def getPathsListFromCacheOnly(geographicMapCellPosition)
        return ::Org::Allbinary::Util::BasicArrayListUtil.getInstance().getImmutableInstance()
    end
    java_overload :getPathsListFromCacheOnly, 1
    

    # throws Exception
    def getPathsListRunnable(geographicMapCellPosition)
        return self.createPaths(geographicMapCellPosition)
    end
    java_overload :getPathsListRunnable, 1
    

    # throws Exception
    def getEndGeographicMapCellPosition(startGeographicMapCellPosition)
        endList = @ownerLayer.getEndGeographicMapCellPositionList()
        endGeographicMapCellPosition = ::Org::Allbinary::Util::BasicArrayListUtil.getInstance().getRandom(endList)
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
    java_overload :getEndGeographicMapCellPosition, 1
    

    # throws Exception
    def createPaths(startGeographicMapCellPosition)
        endGeographicMapCellPosition = self.getEndGeographicMapCellPosition(startGeographicMapCellPosition)
        if endGeographicMapCellPosition == nil
            return ::Org::Allbinary::Util::BasicArrayListUtil.getInstance().getImmutableInstance()
        end
        if startGeographicMapCellPosition == endGeographicMapCellPosition
            if @ownerLayer.shouldHandleStartSameAsEnd()
                return ::Org::Allbinary::Util::BasicArrayListUtil.getInstance().getImmutableInstance()
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
        pathFindingInfo = ::Org::Allbinary::Game::Media::Graphics::Geography::Map::Racetrack::PathFindingInfoFactory.getInstance().getInstancePathFindingInfo(raceTrackGeographicMap, customMapArray)
        list = ::Org::Allbinary::Media::Graphics::Geography::Pathfinding::PathGenerator.getInstance().getInstanceNoCache(geographicMapInterface, pathFindingInfo, 2)
        if list.size() < 1
            raise StandardError.new("Path may have been cleared by clearing caching")
        end
        return list
    end
    java_overload :createPaths, 1
    

    def onEvent(eventObject)
        ::Org::Allbinary::Logic::Communication::Log::ForcedLogUtil.log(::Org::Allbinary::Logic::Util::Event::EventStrings.getInstance().PERFORMANCE_MESSAGE, self)
    end
    java_overload :onEvent, 1
    

    # throws Exception
    def onBuildingEvent(event)
    end
    java_overload :onBuildingEvent, 1
    

    def reset()
        self.getConnectedWaypointList().clear()
    end
    java_overload :reset, 0
    

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
    java_overload :visit, 1
end

module ::Org; module Allbinary; module Game; module Layer; autoload :AllBinaryGameLayerManager, "org/allbinary/game/layer/AllBinaryGameLayerManager" unless const_defined?(:AllBinaryGameLayerManager, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :PathFindingLayerInterface, "org/allbinary/game/layer/PathFindingLayerInterface" unless const_defined?(:PathFindingLayerInterface, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :RTSLayerEvent, "org/allbinary/game/layer/RTSLayerEvent" unless const_defined?(:RTSLayerEvent, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Special; autoload :CollidableDestroyableDamageableLayer, "org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer" unless const_defined?(:CollidableDestroyableDamageableLayer, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Unit; autoload :UnitWaypointBehavior, "org/allbinary/game/layer/unit/UnitWaypointBehavior" unless const_defined?(:UnitWaypointBehavior, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Media; module Graphics; module Geography; module Map; module Racetrack; autoload :PathFindingInfoFactory, "org/allbinary/game/media/graphics/geography/map/racetrack/PathFindingInfoFactory" unless const_defined?(:PathFindingInfoFactory, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :ForcedLogUtil, "org/allbinary/logic/communication/log/ForcedLogUtil" unless const_defined?(:ForcedLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :AllBinaryEventObject, "org/allbinary/logic/util/event/AllBinaryEventObject" unless const_defined?(:AllBinaryEventObject, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :EventStrings, "org/allbinary/logic/util/event/EventStrings" unless const_defined?(:EventStrings, false); end; end; end; end; end
module ::Org; module Allbinary; module Media; module Audio; autoload :Sound, "org/allbinary/media/audio/Sound" unless const_defined?(:Sound, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :BasicGeographicMap, "org/allbinary/media/graphics/geography/map/BasicGeographicMap" unless const_defined?(:BasicGeographicMap, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellPosition, "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition" unless const_defined?(:GeographicMapCellPosition, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellTypeFactory, "org/allbinary/media/graphics/geography/map/GeographicMapCellTypeFactory" unless const_defined?(:GeographicMapCellTypeFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCompositeInterface, "org/allbinary/media/graphics/geography/map/GeographicMapCompositeInterface" unless const_defined?(:GeographicMapCompositeInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; module Racetrack; autoload :CustomMapGenerator, "org/allbinary/media/graphics/geography/map/racetrack/CustomMapGenerator" unless const_defined?(:CustomMapGenerator, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; module Racetrack; autoload :RaceTrackGeographicMap, "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackGeographicMap" unless const_defined?(:RaceTrackGeographicMap, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Pathfinding; autoload :PathFindingInfo, "org/allbinary/media/graphics/geography/pathfinding/PathFindingInfo" unless const_defined?(:PathFindingInfo, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Pathfinding; autoload :PathGenerator, "org/allbinary/media/graphics/geography/pathfinding/PathGenerator" unless const_defined?(:PathGenerator, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListUtil, "org/allbinary/util/BasicArrayListUtil" unless const_defined?(:BasicArrayListUtil, false); end; end; end

end; end; end; end; end

