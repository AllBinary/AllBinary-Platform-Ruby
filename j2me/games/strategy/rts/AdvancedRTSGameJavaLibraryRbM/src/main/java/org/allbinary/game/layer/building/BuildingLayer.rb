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
# package org.allbinary.game.layer.building

# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/game/layer/AdvancedRTSGameLayer"
require "org/allbinary/animation/RotationAnimationInterfaceCompositeInterface"
require "org/allbinary/game/tracking/TrackingEventListenerInterface"

class BuildingLayer < AdvancedRTSGameLayer
    include RotationAnimationInterfaceCompositeInterface
    include TrackingEventListenerInterface
    attr_accessor :buildingLevelCost, :productivity, :efficiency, :efficiencyPerLevel, :trackingEvent, :damageFloaters, :damageFloatersPaintableInterface, :healthBar, :pathsHashtable, :local, :timeDelayHelper

    def initialize_fields
        @buildingLevelCost = 0
        @productivity = 0
        @efficiency = nil
        @efficiencyPerLevel = nil
        @trackingEvent = nil
        @damageFloaters = nil
        @damageFloatersPaintableInterface = nil
        @healthBar = nil
        @pathsHashtable = nil
        @local = false
        @timeDelayHelper = TimeDelayHelper.new(3000)
    end
    

    # throws Exception
    def self.createSimulated()
        nullAnimationInterfaceFactoryInterface = NullAnimationFactory.getFactoryInstance()
        nullIndexedAnimationInterfaceFactoryInterface = NullIndexedAnimationFactory.getFactoryInstance()
        return BuildingLayer.new(RemoteInfo::REMOTE_INFO, SimulatedBuildingPropertiesFactory.getInstance(), AdvancedRTSProperties.createPropertiesSimulated(), GroupFactory.getInstance().NULL_GROUP_ARRAY, StringUtil.getInstance().EMPTY_STRING, StringUtil.getInstance().EMPTY_STRING, Health::NULL_HEALTH, NullRTSFormInputFactory.getInstance(), nullAnimationInterfaceFactoryInterface, nullIndexedAnimationInterfaceFactoryInterface, nullAnimationInterfaceFactoryInterface, nullAnimationInterfaceFactoryInterface, nullIndexedAnimationInterfaceFactoryInterface, NullIndexedAnimationFactory.getFactoryInstance(), RectangleFactory::SINGLETON, 0, 0)
    end
    

    def initialize(remoteInfo, buildingPropertiesFactory, advancedRTSProperties, groupInterface, rootName, name, healthInterface, rtsFormInput, animationInterfaceFactoryInterface, emptyAnimationInterfaceFactoryInterface, baseAnimationInterfaceFactoryInterface, buildAnimationInterfaceFactoryInterface, verticleBuildAnimationInterfaceFactoryInterface, proceduralAnimationInterfaceFactoryInterface, rectangle, x, y)
        super(remoteInfo, NullPathFindingLayer::NULL_PATH_FINDING_LAYER, advancedRTSProperties, groupInterface, rootName, name, healthInterface, rtsFormInput, animationInterfaceFactoryInterface, emptyAnimationInterfaceFactoryInterface, baseAnimationInterfaceFactoryInterface, buildAnimationInterfaceFactoryInterface, verticleBuildAnimationInterfaceFactoryInterface, proceduralAnimationInterfaceFactoryInterface, rectangle, x, y, TileLayerPositionIntoViewPosition.new())
        initialize_fields
        self.setCollidableInferface(CollidableRTSBehavior.new(true))
        self.getWaypointBehavior().setWaypoint(Waypoint.new(self, SelectSound.getInstance()))
        @damageFloaters = buildingPropertiesFactory.getDamageFloaters(self)
        @damageFloatersPaintableInterface = buildingPropertiesFactory.damageFloatersPaintableInterface
        @healthBar = buildingPropertiesFactory.getHealthBar(self)
        @pathsHashtable = buildingPropertiesFactory.getHashtable()
        self.setMaxLevel(30)
        self.setProductivity(1)
        self.setEfficiency(self.calculateEfficiency())
        @efficiencyPerLevel = buildingPropertiesFactory.getEfficiencyPerLevel(self)
        @efficiency = @efficiencyPerLevel
        self.generateMoveOutOfBuildAreaPaths()
        @trackingEvent = buildingPropertiesFactory.getTrackingEvent(self)
    end
    

    def initVisibility(rtsPlayerLayerInterface)
        advancedRTSPlayerLayerInterface = rtsPlayerLayerInterface
        if advancedRTSPlayerLayerInterface.isLocalPlayer()
            @local = true
            self.addVisibility()
        else
            @local = false
        end
        super(rtsPlayerLayerInterface)
    end
    

    # throws Exception
    def construct(rtsPlayerLayerInterface)
        super(rtsPlayerLayerInterface)
        TrackingEventHandler.getInstance().addListenerInterface(self)
    end
    

    def onMovement(trackingEvent)
        begin
            layerInterface = trackingEvent.getLayerInterface()
            if layerInterface.getGroupInterface()[0] != self.getGroupInterface()[0]
                layerInterface.onMovementFound(@trackingEvent)
            end
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "onMovement", e)
        end
    end
    

    # throws Exception
    def processBuiltTick(allBinaryLayerManager)
        if self.getHealthInterface().isDamaged()
            self.setAnimationInterface(@destroyAnimationInterface)
        end
        if !self.getHealthInterface().isAlive()
            if self.isReadyForExplosion()
                currentFrame = @destroyAnimationInterface.getFrame()
                size = @destroyAnimationInterface.getSize() - 1
                if currentFrame == size && !@timeDelayHelper.isTimeTNT()
                    if !self.getHealthInterface().isAlive()
                        self.setDestroyed(true)
                    end
                else
                    @destroyAnimationInterface.nextFrame()
                end
            else
                self.setAnimationInterface(@destroyAnimationInterface)
                SecondaryPlayerQueueFactory.getInstance().add(ExplosionBasicSound.getInstance())
                @shakeListener.onSmallShakeEvent()
                @vibration.vibrate(@duration, 0, 0)
                @timeDelayHelper.setStartTimeTNT()
                self.setReadyForExplosion(true)
            end
        else
            super(allBinaryLayerManager)
        end
        @indexedButShouldBeRotationAnimationInterface.nextFrame()
    end
    

    def calculateEfficiency()
        return @efficiencyPerLevel
    end
    

    def getCost()
        total = RTSLayerUtil.getInstance().getCostExponential(((self.getLevel() * self.getBuildingLevelCost())).to_i)
        return total
    end
    

    def getDowngradeCost()
        downgradeCost = RTSLayerUtil.getInstance().getCostExponential((((self.getLevel() - 1) * self.getBuildingLevelCost())).to_i)
        @logUtil.putF("Cost: " + (downgradeCost).to_s, self, "getDowngradeCost")
        return downgradeCost * 9 / 10
    end
    

    def getUpgradeCost()
        upgradeCost = RTSLayerUtil.getInstance().getCostExponential((((self.getLevel() + 1) * self.getBuildingLevelCost())).to_i)
        return upgradeCost
    end
    

    def downgrade()
        super()
        self.setProductivity(self.getProductivity() - 1)
        self.setEfficiency(self.getEfficiency() - self.calculateEfficiency())
        self.getHealthInterface().setMaxHealth(self.getHealthInterface().getMaxHealth() - ((self.getLevel() + 1) * 100))
    end
    

    def upgrade()
        super()
        self.setProductivity(self.getProductivity() + 1)
        self.setEfficiency(self.getEfficiency() + self.calculateEfficiency())
        self.getHealthInterface().setMaxHealth(self.getHealthInterface().getMaxHealth() + (self.getLevel() * 100))
    end
    

    def getBuildingLevelCost()
        return @buildingLevelCost
    end
    

    def setBuildingLevelCost(buildingLevelCost)
        @buildingLevelCost = buildingLevelCost
    end
    

    def getProductivity()
        return @productivity
    end
    

    def setProductivity(productivity)
        @productivity = productivity
    end
    

    def getEfficiency()
        return @efficiency
    end
    

    def setEfficiency(efficiency)
        @efficiency = efficiency
    end
    

    # throws Exception
    def generateMoveOutOfBuildAreaPaths()
        occupyList = @geographicMapCellPositionAreaBase.getOccupyingGeographicMapCellPositionList()
        surroundList = @geographicMapCellPositionAreaBase.getSurroundingGeographicMapCellPositionList()
        _NO_DIRECTION = DirectionFactory.getInstance().NO_DIRECTION
        geographicMapDirectionUtil = GeographicMapDirectionUtil.getInstance()
        pathsList = nil
        occupyGeographicMapCellPosition = nil
        surroundGeographicMapCellPosition = nil
        list = nil
        (occupyList.size() - 1).step(0, -(1)) do |index2|
            pathsList = BasicArrayListD.new()
            occupyGeographicMapCellPosition = occupyList.get(index2)
            (surroundList.size() - 1).step(0, -(1)) do |index|
                surroundGeographicMapCellPosition = surroundList.get(index)
                if geographicMapDirectionUtil.getEightDirectionFromCellPositionToAdjacentCellPosition(surroundGeographicMapCellPosition, occupyGeographicMapCellPosition) != _NO_DIRECTION
                    list = BasicArrayListS.new(1)
                    list.add(surroundGeographicMapCellPosition)
                    pathsList.add(list)
                end
            end
            @pathsHashtable.put(occupyGeographicMapCellPosition, pathsList)
        end
    end
    

    def getMoveOutOfBuildAreaPath(geographicMapCellPosition)
        pathsList = @pathsHashtable.get(geographicMapCellPosition)
        return pathsList
    end
    

    def getEndGeographicMapCellPositionList()
        return @geographicMapCellPositionAreaBase.getSurroundingGeographicMapCellPositionList()
    end
    

    def shouldHandleStartSameAsEnd()
        return false
    end
    

    def paint(graphics)
        if self.isVisible()
            super(graphics)
            @damageFloatersPaintableInterface.paint(graphics)
            @healthBar.paint(graphics)
        end
    end
    

    # throws Exception
    def damage(damage, damageType)
        super(damage, damageType)
        @damageFloaters.add(damage)
        if damage > 0
            self.getHealthInterface().damage(damage)
        end
    end
    

    # throws Exception
    def getDamage(damageType)
        return 0
    end
    

    def addVisibility()
        geographicMapCellPositionArea = @geographicMapCellPositionAreaBase
        occupyList = geographicMapCellPositionArea.getOccupyingGeographicMapCellPositionList()
        VisibleCellPositionsSingleton.getInstance().addStationaryCellPositions(occupyList)
        surroundList = geographicMapCellPositionArea.getSurroundingGeographicMapCellPositionList()
        VisibleCellPositionsSingleton.getInstance().addStationaryCellPositions(surroundList)
    end
    

    def removeVisibility()
        occupyList = @geographicMapCellPositionAreaBase.getOccupyingGeographicMapCellPositionList()
        VisibleCellPositionsSingleton.getInstance().removeStationaryCellPositions(occupyList)
        surroundList = @geographicMapCellPositionAreaBase.getSurroundingGeographicMapCellPositionList()
        VisibleCellPositionsSingleton.getInstance().removeStationaryCellPositions(surroundList)
    end
    

    # throws Exception
    def setDestroyed(destroyed)
        super(destroyed)
        if self.isDestroyed()
            DropCellPositionHistory.getInstance().removeAll(self)
            TrackingEventHandler.getInstance().removeListener(self)
            if @local
                self.removeVisibility()
            end
            if !self.getHealthInterface().isAlive()
                damage = self.getHealthInterface().getMaxHealth()
                if damage > 10
                    SecondaryPlayerQueueFactory.getInstance().add(ExplosionBasicSound.getInstance())
                    if damage < 100
                        @shakeListener.onSmallShakeEvent()
                        @vibration.vibrate(@duration, 0, 0)
                    elsif damage < 1000
                        @shakeListener.onMediumShakeEvent()
                        @vibration.vibrate(@duration * 2, 0, 0)
                    elsif damage < 3000
                        @shakeListener.onLargeShakeEvent()
                        @vibration.vibrate(@duration * 4, 0, 0)
                    end
                end
            end
        end
    end
    

    def createHudPaintable()
        buildingInfoHudPaintable = BuildingInfoHudPaintable.getInstance()
        buildingInfoHudPaintable.setBasicColorP(@allBinaryGameLayerManagerP.getForegroundBasicColor())
        buildingInfoHudPaintable.setRtsLayer(self)
        return buildingInfoHudPaintable
    end
    

    def getHudPaintable()
        buildingInfoHudPaintable = BuildingInfoHudPaintable.getInstance()
        return buildingInfoHudPaintable
    end
    

    def getType()
        return BuildingLayer.getStaticType()
    end
    

    def self.getStaticType()
        return 2
    end
end

require "org/allbinary/ag/weapon/media/audio/ExplosionBasicSound"
require "org/allbinary/animation/NullAnimationFactory"
require "org/allbinary/animation/NullIndexedAnimationFactory"
require "org/allbinary/game/identification/GroupFactory"
require "org/allbinary/game/input/form/NullRTSFormInputFactory"
require "org/allbinary/game/input/form/RTSFormInput"
require "org/allbinary/game/input/form/VisibleCellPositionsSingleton"
require "org/allbinary/game/layer/AdvancedRTSPlayerLayerInterface"
require "org/allbinary/game/layer/AdvancedRTSProperties"
require "org/allbinary/game/layer/CollidableRTSBehavior"
require "org/allbinary/game/layer/RTSLayerUtil"
require "org/allbinary/game/layer/RTSPlayerLayerInterface"
require "org/allbinary/game/layer/SelectionHudPaintable"
require "org/allbinary/game/layer/waypoint/Waypoint"
require "org/allbinary/game/view/TileLayerPositionIntoViewPosition"
require "org/allbinary/graphics/RectangleFactory"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/animation/AnimationInterfaceFactoryInterface"
require "org/allbinary/animation/ProceduralAnimationInterfaceFactoryInterface"
require "org/allbinary/direction/Direction"
require "org/allbinary/direction/DirectionFactory"
require "org/allbinary/game/combat/damage/DamageFloaters"
require "org/allbinary/game/health/Health"
require "org/allbinary/game/identification/Group"
require "org/allbinary/game/layer/GeographicMapCellPositionAreaBase"
require "org/allbinary/game/layer/NullPathFindingLayer"
require "org/allbinary/game/tracking/TrackingEvent"
require "org/allbinary/game/tracking/TrackingEventHandler"
require "org/allbinary/graphics/Rectangle"
require "org/allbinary/graphics/paint/Paintable"
require "org/allbinary/layer/AllBinaryLayerManager"
require "org/allbinary/media/audio/SecondaryPlayerQueueFactory"
require "org/allbinary/media/audio/SelectSound"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition"
require "org/allbinary/media/graphics/geography/map/GeographicMapDirectionUtil"
require "org/allbinary/media/graphics/geography/map/drop/DropCellPositionHistory"
require "org/allbinary/time/TimeDelayHelper"
require "org/allbinary/util/BasicArrayListS"
require "org/allbinary/game/multiplayer/layer/RemoteInfo"
require "org/allbinary/util/ABHashtable"
require "org/allbinary/game/layer/building/BuildingInfoHudPaintable"
require "org/allbinary/game/layer/building/BuildingPropertiesFactory"
require "org/allbinary/game/layer/building/SimulatedBuildingPropertiesFactory"

