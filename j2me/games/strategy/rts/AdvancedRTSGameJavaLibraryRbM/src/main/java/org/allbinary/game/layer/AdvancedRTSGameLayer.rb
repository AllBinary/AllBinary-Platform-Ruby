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
# package org.allbinary.game.layer

# require "javax/microedition/lcdui/Canvas"
require "org/allbinary/game/combat/destroy/event/DestroyedEventListenerInterface"
require "org/allbinary/game/layer/RTSLayer"

class AdvancedRTSGameLayer < RTSLayer
    include DestroyedEventListenerInterface
    attr_accessor :shakeListener, :vibration, :duration, :parentLayer, :waypointBehaviorBase

    def initialize_fields
        @shakeListener = nil
        @vibration = nil
        @duration = nil
        @parentLayer = NullPathFindingLayer::NULL_PATH_FINDING_LAYER
        @waypointBehaviorBase = NullTickable.getInstance()
    end
    

    # throws Exception
    def self.createSimulated()
        nullAnimationInterfaceFactoryInterface = NullAnimationFactory.getFactoryInstance()
        nullIndexedAnimationInterfaceFactoryInterface = NullIndexedAnimationFactory.getFactoryInstance()
        return AdvancedRTSGameLayer.new(RemoteInfo::REMOTE_INFO, NullPathFindingLayer::NULL_PATH_FINDING_LAYER, AdvancedRTSProperties.createPropertiesSimulated(), GroupFactory.getInstance().NULL_GROUP_ARRAY, StringUtil.getInstance().EMPTY_STRING, StringUtil.getInstance().EMPTY_STRING, Health::NULL_HEALTH, NullRTSFormInputFactory.getInstance(), nullAnimationInterfaceFactoryInterface, nullIndexedAnimationInterfaceFactoryInterface, nullAnimationInterfaceFactoryInterface, nullAnimationInterfaceFactoryInterface, nullIndexedAnimationInterfaceFactoryInterface, NullIndexedAnimationFactory.getFactoryInstance(), RectangleFactory::SINGLETON, 0, 0, TileLayerPositionIntoViewPosition.new())
    end
    

    def initialize(remoteInfo, parentLayer, advancedRTSProperties, groupInterface, rootName, name, healthInterface, rtsFormInput, animationInterfaceFactoryInterface, emptyAnimationInterfaceFactoryInterface, baseAnimationInterfaceFactoryInterface, buildAnimationInterfaceFactoryInterface, verticleBuildAnimationInterfaceFactoryInterface, proceduralAnimationInterfaceFactoryInterface, rectangle, x, y, viewPosition)
        super(remoteInfo, groupInterface, rootName, name, healthInterface, rtsFormInput, animationInterfaceFactoryInterface, emptyAnimationInterfaceFactoryInterface, baseAnimationInterfaceFactoryInterface, buildAnimationInterfaceFactoryInterface, verticleBuildAnimationInterfaceFactoryInterface, proceduralAnimationInterfaceFactoryInterface, rectangle, x, y, viewPosition)
        initialize_fields
        self.setVisible(false)
        self.setWaypointBehavior(WaypointBehaviorBase.new())
        @shakeListener = advancedRTSProperties.shakeListener
        @vibration = advancedRTSProperties.vibration
        @duration = advancedRTSProperties.duration
        self.setParentLayer(parentLayer)
    end
    

    # throws Exception
    def updateWaypointBehavior(geographicMapInterface)
        super(geographicMapInterface)
        self.getWaypointBehavior().getWaypoint().setAllBinaryGameLayerManager(@allBinaryGameLayerManagerP)
    end
    

    def initVisibility(rtsPlayerLayerInterface)
        advancedRTSPlayerLayerInterface = rtsPlayerLayerInterface
        if advancedRTSPlayerLayerInterface.isLocalPlayer() || advancedRTSPlayerLayerInterface.getGameType() == GameTypeFactory.getInstance().BOT
            self.setVisible(true)
        else
            self.setVisible(false)
        end
    end
    

    # throws Exception
    def construct(rtsPlayerLayerInterface)
        super(rtsPlayerLayerInterface)
        self.initVisibility(rtsPlayerLayerInterface)
        BuildingEventHandler.getInstance().addListenerInterface(self.getWaypointBehavior().getWaypoint())
    end
    

    # throws Exception
    def setDestroyed(destroyed)
        super(destroyed)
        if self.isDestroyed()
            BuildingEventHandler.getInstance().removeListener(self.getWaypointBehavior().getWaypoint())
            BuildingEventHandler.getInstance().removeListener(self)
            DestroyedEventHandler.getInstance().addListener(self)
            RTSLayerUtil.getInstance().destroyAndClear(self.getWaypointBehavior().getOwnedWaypointList())
        end
    end
    

    def getParentLayer()
        return @parentLayer
    end
    

    def setParentLayer(parentLayer)
        @parentLayer = parentLayer
    end
    

    def getWaypointBehavior()
        return @waypointBehaviorBase
    end
    

    def setWaypointBehavior(unitWaypointHelper)
        @waypointBehaviorBase = unitWaypointHelper
    end
    

    def getWaypointLogHelper()
        return @waypointLogHelperP
    end
    

    def getWaypoint2LogHelper()
        return @waypoint2LogHelperP
    end
    

    def getWaypointRunnableLogHelper()
        return @waypointRunnableLogHelperP
    end
    

    def shouldAddWaypointFromBuilding()
        if @parentLayer != NullPathFindingLayer::NULL_PATH_FINDING_LAYER
            parentAdvancedRTSGameLayer = @parentLayer
            if parentAdvancedRTSGameLayer.getType() != UnitLayer.getStaticType()
                return true
            end
        end
        return false
    end
    

    def isWaypointListEmptyOrOnlyTargets()
        if self.getType() != UnitLayer.getStaticType()
            return true
        end
        return false
    end
    

    # throws Exception
    def buildingChase(allbinaryLayer, cellPosition)
        geographicMapCellPosition = self.getCurrentGeographicMapCellPosition()
        buildingDirection = GeographicMapDirectionUtil.getInstance().getDirectionFromCellPositionToAdjacentCellPosition(geographicMapCellPosition, cellPosition)
        angleInfo = self.getRotationAnimationInterface().getAngleInfoP()
        angle = FrameUtil.getInstance().adjustAngleToFrameAngle(angleInfo.getAngle() + 90)
        gameKeyEventFactory = GameKeyEventFactory.getInstance()
        if buildingDirection == DirectionFactory.getInstance().UP
            @rtsLayer2LogHelper.buildingAbove(self)
            if angle > 180 && angle < 360
                @rtsLayer2LogHelper.buildingChaseLeft(self, angle)
                self.getGameKeyEventList().add(gameKeyEventFactory.getInstanceForKey(self, Canvas::LEFT))
                if angle <= 190
                    return true
                end
            else
                @rtsLayer2LogHelper.buildingChaseRight(self, angle)
                self.getGameKeyEventList().add(gameKeyEventFactory.getInstanceForKey(self, Canvas::RIGHT))
                if angle >= 170
                    return true
                end
            end
        elsif buildingDirection == DirectionFactory.getInstance().DOWN
            @rtsLayer2LogHelper.buildingDown(self)
            if angle > 180 && angle < 360
                @rtsLayer2LogHelper.buildingChaseLeft(self, angle)
                self.getGameKeyEventList().add(gameKeyEventFactory.getInstanceForKey(self, Canvas::RIGHT))
                if angle > 315
                    return true
                end
            else
                @rtsLayer2LogHelper.buildingChaseRight(self, angle)
                self.getGameKeyEventList().add(gameKeyEventFactory.getInstanceForKey(self, Canvas::LEFT))
                if angle < 45
                    return true
                end
            end
        elsif buildingDirection == DirectionFactory.getInstance().LEFT
            @rtsLayer2LogHelper.buildingLeft()
            if angle > 90 && angle < 270
                @rtsLayer2LogHelper.buildingChaseDown(self, angle)
                self.getGameKeyEventList().add(gameKeyEventFactory.getInstanceForKey(self, Canvas::LEFT))
                if angle < 135
                    return true
                end
            else
                @rtsLayer2LogHelper.buildingChaseUp(self, angle)
                self.getGameKeyEventList().add(gameKeyEventFactory.getInstanceForKey(self, Canvas::RIGHT))
                if angle > 45
                    return true
                end
            end
        elsif buildingDirection == DirectionFactory.getInstance().RIGHT
            @rtsLayer2LogHelper.buildingRight()
            if angle > 90 && angle < 270
                @rtsLayer2LogHelper.buildingChaseDown(self, angle)
                self.getGameKeyEventList().add(gameKeyEventFactory.getInstanceForKey(self, Canvas::RIGHT))
                if angle > 225
                    return true
                end
            else
                @rtsLayer2LogHelper.buildingChaseUp(self, angle)
                self.getGameKeyEventList().add(gameKeyEventFactory.getInstanceForKey(self, Canvas::LEFT))
                if angle < 315 && angle > 180
                    return true
                end
            end
        else
            return true
        end
        return false
    end
    

    # throws Exception
    def getSurroundingGeographicMapCellPositionList()
        geographicMapCompositeInterface = @allBinaryGameLayerManagerP
        geographicMapInterface = geographicMapCompositeInterface.getGeographicMapInterface()[0]
        @geographicMapCellPositionAreaBase.update(geographicMapInterface)
        return @geographicMapCellPositionAreaBase.getSurroundingGeographicMapCellPositionList()
    end
    

    def setSelected(selected)
        super(selected)
        if @debug
            if selected
                @waypointLogHelperP = WaypointSelectedLogHelper.getInstance()
                @waypoint2LogHelperP = Waypoint2SelectedLogHelper.getInstance()
                @waypointRunnableLogHelperP = WaypointRunnableSelectedLogHelper.getInstance()
            else
                @waypointLogHelperP = WaypointLogHelper.getInstance()
                @waypoint2LogHelperP = Waypoint2LogHelper.getInstance()
                @waypointRunnableLogHelperP = WaypointRunnableLogHelper.getInstance()
            end
        end
    end
    

    def onDestroyed(destroyedEvent)
        begin
            layerInterface = destroyedEvent.getLayerInterface()
            if layerInterface == self
                DestroyedEventHandler.getInstance().removeListener(self)
                waypoint = self.getWaypointBehavior().getWaypoint()
                waypoint.reset()
            end
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "onDestroyed", e)
        end
    end
end

require "org/allbinary/animation/AnimationInterfaceFactoryInterface"
require "org/allbinary/animation/NullAnimationFactory"
require "org/allbinary/animation/NullIndexedAnimationFactory"
require "org/allbinary/animation/ProceduralAnimationInterfaceFactoryInterface"
require "org/allbinary/animation/transition/shake/ShakeAnimationListener"
require "org/allbinary/direction/Direction"
require "org/allbinary/direction/DirectionFactory"
require "org/allbinary/game/GameTypeFactory"
require "org/allbinary/game/combat/destroy/event/DestroyedEvent"
require "org/allbinary/game/combat/destroy/event/DestroyedEventHandler"
require "org/allbinary/game/health/Health"
require "org/allbinary/game/identification/Group"
require "org/allbinary/game/identification/GroupFactory"
require "org/allbinary/game/input/event/GameKeyEventFactory"
require "org/allbinary/game/input/form/NullRTSFormInputFactory"
require "org/allbinary/game/input/form/RTSFormInput"
require "org/allbinary/game/layer/building/event/BuildingEventHandler"
require "org/allbinary/game/layer/unit/UnitLayer"
require "org/allbinary/game/layer/waypoint/Waypoint2LogHelper"
require "org/allbinary/game/layer/waypoint/Waypoint2SelectedLogHelper"
require "org/allbinary/game/layer/waypoint/WaypointBase"
require "org/allbinary/game/layer/waypoint/WaypointLogHelper"
require "org/allbinary/game/layer/waypoint/WaypointRunnableLogHelper"
require "org/allbinary/game/layer/waypoint/WaypointRunnableSelectedLogHelper"
require "org/allbinary/game/layer/waypoint/WaypointSelectedLogHelper"
require "org/allbinary/game/multiplayer/layer/RemoteInfo"
require "org/allbinary/game/tick/NullTickable"
require "org/allbinary/game/tick/TickableInterface"
require "org/allbinary/game/view/TileLayerPositionIntoViewPosition"
require "org/allbinary/graphics/Rectangle"
require "org/allbinary/graphics/RectangleFactory"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/math/AngleInfo"
require "org/allbinary/math/FrameUtil"
require "org/allbinary/media/AllBinaryVibrationME"
require "org/allbinary/media/graphics/geography/map/BasicGeographicMap"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition"
require "org/allbinary/media/graphics/geography/map/GeographicMapCompositeInterface"
require "org/allbinary/media/graphics/geography/map/GeographicMapDirectionUtil"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/view/ViewPositionBase"
require "org/allbinary/game/layer/AdvancedRTSPlayerLayerInterface"
require "org/allbinary/game/layer/AdvancedRTSProperties"
require "org/allbinary/game/layer/NullPathFindingLayer"
require "org/allbinary/game/layer/PathFindingLayerInterface"
require "org/allbinary/game/layer/RTSLayerUtil"
require "org/allbinary/game/layer/RTSPlayerLayerInterface"
require "org/allbinary/game/layer/WaypointBehaviorBase"

