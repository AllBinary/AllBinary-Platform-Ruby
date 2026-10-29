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

# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/game/multiplayer/layer/MultiPlayerGameLayer"
require "org/allbinary/game/input/GameInputInterface"
require "org/allbinary/game/input/GameKeyEventSourceInterface"
require "org/allbinary/game/tick/TickableInterface"
require "org/allbinary/game/layer/PathFindingLayerInterface"
require "org/allbinary/game/layer/RTSInterface"

class RTSLayer < MultiPlayerGameLayer
    include TickableInterface
    include GameInputInterface
    include GameKeyEventSourceInterface
    include RTSInterface
    include PathFindingLayerInterface
    attr_accessor :debug, :showMoreCaptionStates, :inputProcessorArray, :rtsLayer2LogHelper, :waypointLogHelperP, :waypoint2LogHelperP, :waypointRunnableLogHelperP, :rtsFormInput, :verticleBuildAnimationInterface, :rangeAnimation, :initRangeAnimation, :sensorRangeAnimation, :initSensorRangeAnimation, :baseAnimationInterface, :buildFrameTimeHelper, :buildAnimationInterface, :animationInterface, :initAnimationInterface, :indexedButShouldBeRotationAnimationInterface, :emptyAnimationInterface, :destroyAnimationInterface, :fireTimeHelper, :rootName, :hashtable, :BUILD_VALUE, :geographicMapCellPositionAreaBase, :healthInterface, :level, :maxLevel, :hackVerticleBuild, :slightAngle, :percentCompleteP, :destroyed, :selected, :rtsLayerUtil, :layerDistanceUtil

    def initialize_fields
        @debug = true
        @showMoreCaptionStates = @debug
        @inputProcessorArray = Array.new(InputFactory.getInstance().MAX, nil)
        @rtsLayer2LogHelper = RTSLayer2LogHelper.getInstance()
        @waypointLogHelperP = WaypointLogHelper.getInstance()
        @waypoint2LogHelperP = Waypoint2LogHelper.getInstance()
        @waypointRunnableLogHelperP = WaypointRunnableLogHelper.getInstance()
        @rtsFormInput = nil
        @verticleBuildAnimationInterface = nil
        @rangeAnimation = nil
        @initRangeAnimation = nil
        @sensorRangeAnimation = nil
        @initSensorRangeAnimation = nil
        @baseAnimationInterface = nil
        @buildFrameTimeHelper = TimeDelayHelper.new(50)
        @buildAnimationInterface = nil
        @animationInterface = nil
        @initAnimationInterface = nil
        @indexedButShouldBeRotationAnimationInterface = nil
        @emptyAnimationInterface = nil
        @destroyAnimationInterface = nil
        @fireTimeHelper = TimeDelayHelper.new(700)
        @rootName = nil
        @hashtable = StdUtil.getInstance().createHashtable()
        @BUILD_VALUE = 63
        @geographicMapCellPositionAreaBase = nil
        @healthInterface = Health::NULL_HEALTH
        @level = 1
        @maxLevel = 1
        @hackVerticleBuild = @BUILD_VALUE
        @slightAngle = 0
        @percentCompleteP = 0
        @destroyed = false
        @selected = false
        @rtsLayerUtil = RTSLayerUtil.getInstance()
        @layerDistanceUtil = LayerDistanceUtil.getInstance()
    end
    

    # throws Exception
    def self.createSimulatedInstance(remoteInfo)
        nullAnimationInterfaceFactoryInterface = NullAnimationFactory.getFactoryInstance()
        nullIndexedAnimationInterfaceFactoryInterface = NullIndexedAnimationFactory.getFactoryInstance()
        return RTSLayer.new(RemoteInfo::REMOTE_INFO, GroupFactory.getInstance().NULL_GROUP_ARRAY, StringUtil.getInstance().EMPTY_STRING, StringUtil.getInstance().EMPTY_STRING, Health::NULL_HEALTH, NullRTSFormInputFactory.getInstance(), nullAnimationInterfaceFactoryInterface, nullIndexedAnimationInterfaceFactoryInterface, nullAnimationInterfaceFactoryInterface, nullAnimationInterfaceFactoryInterface, nullIndexedAnimationInterfaceFactoryInterface, NullIndexedAnimationFactory.getFactoryInstance(), RectangleFactory::SINGLETON, 0, 0, TileLayerPositionIntoViewPosition.new())
    end
    

    def initialize(remoteInfo, groupInterface, rootName, name, healthInterface, rtsFormInput, animationInterfaceFactoryInterface, emptyAnimationInterfaceFactoryInterface, baseAnimationInterfaceFactoryInterface, buildAnimationInterfaceFactoryInterface, verticleBuildAnimationInterfaceFactoryInterface, proceduralAnimationInterfaceFactoryInterface, rectangle, x, y, viewPosition)
        super(remoteInfo, groupInterface, name, rectangle, viewPosition)
        initialize_fields
        self.initInputProcessors()
        @rootName = rootName
        @healthInterface = healthInterface
        @rtsFormInput = rtsFormInput
        self.setPosition(x, y, @z)
        @verticleBuildAnimationInterface = verticleBuildAnimationInterfaceFactoryInterface.getInstance(0)
        @buildAnimationInterface = buildAnimationInterfaceFactoryInterface.getInstance(0)
        @baseAnimationInterface = baseAnimationInterfaceFactoryInterface.getInstance(0)
        @emptyAnimationInterface = emptyAnimationInterfaceFactoryInterface.getInstance(0)
        @indexedButShouldBeRotationAnimationInterface = animationInterfaceFactoryInterface.getInstance(0)
        @initAnimationInterface = @indexedButShouldBeRotationAnimationInterface
        @destroyAnimationInterface = proceduralAnimationInterfaceFactoryInterface.getInstanceAnimation(@indexedButShouldBeRotationAnimationInterface)
        animation = NullAnimationFactory.getFactoryInstance().getInstance(0)
        @rangeAnimation = animation
        @initRangeAnimation = animation
        @sensorRangeAnimation = animation
        @initSensorRangeAnimation = animation
        @animationInterface = @initAnimationInterface
        @geographicMapCellPositionAreaBase = GeographicMapCellPositionArea.new(self)
    end
    

    # throws Exception
    def setAllBinaryGameLayerManager(allBinaryGameLayerManager)
        super(allBinaryGameLayerManager)
        geographicMapCompositeInterface = @allBinaryGameLayerManagerP
        geographicMapInterface = geographicMapCompositeInterface.getGeographicMapInterface()[0]
        tiledLayer = geographicMapInterface.getAllBinaryTiledLayer()
        viewPosition2 = self.getViewPosition()
        viewPosition2.setTiledLayer(tiledLayer)
        self.updateWaypointBehavior(geographicMapInterface)
    end
    

    # throws Exception
    def updateWaypointBehavior(geographicMapInterface)
        @geographicMapCellPositionAreaBase.update(geographicMapInterface)
    end
    

    # throws Exception
    def construct(rtsPlayerLayerInterface)
        ViewPositionEventHandler.getInstance().addListener(self)
        @animationInterface = @buildAnimationInterface
        @hackVerticleBuild = 0
    end
    

    def select()
        @rangeAnimation = @initRangeAnimation
        @sensorRangeAnimation = @initSensorRangeAnimation
        self.setSelected(true)
    end
    

    def deselect()
        animation = NullAnimationFactory.getFactoryInstance().getInstance(0)
        @rangeAnimation = animation
        @sensorRangeAnimation = animation
        self.setSelected(false)
    end
    

    def setSelected(selected)
        @selected = selected
    end
    

    def isSelected()
        return @selected
    end
    

    def getPercentComplete()
        return @percentCompleteP
    end
    

    def getScrollSelectionForm()
        return ScrollSelectionForm.getNullScrollSelectionForm()
    end
    

    def initInputProcessors()
        GameInputProcessorUtil.init(@inputProcessorArray)
    end
    

    # throws Exception
    def processBuiltTick(allBinaryLayerManager)
        @animationInterface = @indexedButShouldBeRotationAnimationInterface
    end
    

    def processTick(allBinaryLayerManager)
        begin
            if self.isCompleted()
                self.processBuiltTick(allBinaryLayerManager)
            else
                self.build()
            end
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "processTick", e)
        end
    end
    

    # throws Exception
    def processInput(layerManager)
    end
    

    def reload()
    end
    

    def onMovement(trackingEvent)
    end
    

    # throws Exception
    def onMovementFound(trackingEvent)
    end
    

    def paint(graphics)
        self.class.superclass.instance_method(:paintFirst).bind(self).call(graphics)
        viewPosition = self.getViewPosition()
        viewX = viewPosition.getX()
        viewY = viewPosition.getY()
        self.getAnimationInterface().paintXY(graphics, viewX, viewY)
    end
    

    # throws Exception
    def damage(damage, damageType)
    end
    

    def getSourceId()
        return RTSLayer.id
    end
    

    def downgrade()
        @rtsLayerUtil.downgrade(self)
    end
    

    def upgrade()
        @rtsLayerUtil.upgrade(self)
    end
    

    def isCompleted()
        if @hackVerticleBuild < @BUILD_VALUE
            return false
        else
            return true
        end
    end
    

    # throws Exception
    def build()
        if @buildFrameTimeHelper.isTimeTNT()
            @animationInterface = @buildAnimationInterface
            @verticleBuildAnimationInterface.nextFrame()
            @hackVerticleBuild += 1
        end
        @percentCompleteP = 100 * @hackVerticleBuild / @BUILD_VALUE
        self.getHudPaintable().updateInfo()
    end
    

    def isSelfUpgradeable()
        return true
    end
    

    def getCost()
        return @rtsLayerUtil.getCost(self)
    end
    

    def getDowngradeCost()
        return @rtsLayerUtil.getDowngradeCost(self)
    end
    

    def getUpgradeCost()
        return @rtsLayerUtil.getUpgradeCost(self)
    end
    

    def isUpgradeable()
        if self.getLevel() < self.getMaxLevel()
            return true
        else
            return false
        end
    end
    

    def isDowngradeable()
        if self.getLevel() > 1
            return true
        else
            return false
        end
    end
    

    def getLevel()
        return @level
    end
    

    def setLevel(level)
        @level = level
    end
    

    def getVerticleBuildAnimationInterface()
        return @verticleBuildAnimationInterface
    end
    

    def getAnimationInterface()
        return @animationInterface
    end
    

    def setAnimationInterface(animationInterface)
        @animationInterface = animationInterface
    end
    

    # throws Exception
    def setTarget(targetGameLayer)
        anotherTargetDistance = @layerDistanceUtil.getDistance(self, targetGameLayer)
        waypointBehaviorBase = self.getWaypointBehavior()
        waypointBehaviorBase.setTargetWithDistance(targetGameLayer, anotherTargetDistance)
    end
    

    def createHudPaintable()
        raise RuntimeError.new()
    end
    

    def getHudPaintable()
        raise RuntimeError.new()
    end
    

    def getMaxLevel()
        return @maxLevel
    end
    

    def setMaxLevel(maxLevel)
        @maxLevel = maxLevel
    end
    

    def getHealthInterface()
        return @healthInterface
    end
    

    def setHealthInterface(healthInterface)
        @healthInterface = healthInterface
    end
    

    def getRTSFormInput()
        return @rtsFormInput
    end
    

    # throws Exception
    def isDestroyed()
        return @destroyed
    end
    

    # throws Exception
    def setDestroyed(destroyed)
        @destroyed = destroyed
        if self.isDestroyed()
            DestroyedLayerProcessor.getInstance().add(self)
            ViewPositionEventHandler.getInstance().removeListener(self)
        end
    end
    

    def getEndGeographicMapCellPositionList()
        return @geographicMapCellPositionAreaBase.getOccupyingGeographicMapCellPositionList()
    end
    

    def getGeographicMapCellPositionArea()
        return @geographicMapCellPositionAreaBase
    end
    

    def shouldHandleStartSameAsEnd()
        return true
    end
    

    # throws Exception
    def handleCost(ownerLayer)
    end
    

    def getWaypointBehavior()
        raise RuntimeError.new()
    end
    

    def getParentLayer()
        raise RuntimeError.new()
    end
    

    def getRTSLayer2LogHelper()
        return @rtsLayer2LogHelper
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
        return false
    end
    

    def getCaptionAnimationHelper()
        raise RuntimeError.new()
    end
    

    def isShowMoreCaptionStates()
        return @showMoreCaptionStates
    end
    

    # throws Exception
    def init(geographicMapCellHistory, geographicMapCellPositionBasicArrayList)
    end
    

    # throws Exception
    def getCurrentGeographicMapCellPosition()
        raise RuntimeError.new()
    end
    

    # throws Exception
    def getTopLeftGeographicMapCellPosition()
        raise RuntimeError.new()
    end
    

    def getMoveOutOfBuildAreaPath(geographicMapCellPosition)
        raise RuntimeError.new()
    end
    

    # throws Exception
    def setClosestGeographicMapCellHistory(pathsList)
    end
    

    def teleportTo(geographicMapCellPosition)
    end
    

    # throws Exception
    def setLoad(resource)
    end
    

    # throws Exception
    def getSurroundingGeographicMapCellPositionList()
        raise RuntimeError.new()
    end
    

    # throws Exception
    def trackTo(reason)
    end
    

    # throws Exception
    def trackToDXY(dx, dy)
    end
    

    def isWaypointListEmptyOrOnlyTargets()
        return false
    end
    

    def getTrackingEvent()
        raise RuntimeError.new()
    end
    

    # throws Exception
    def buildingChase(allbinaryLayer, cellPosition)
        return false
    end
    

    def allStop()
    end
    

    def self.getMinStaticType()
        return 1
    end
    

    def self.getMaxStaticType()
        return 4
    end
    

    def self.isRTSLayer(layerInterface)
        if layerInterface.getType() >= RTSLayer.getMinStaticType() && layerInterface.getType() <= RTSLayer.getMaxStaticType()
            return true
        end
        return false
    end
    

    def implmentsTickableInterface()
        return true
    end
    

    def implmentsGameInputInterface()
        return true
    end
    

    def getRootName()
        return @rootName
    end
    

    def getRotationAnimationInterface()
        return @indexedButShouldBeRotationAnimationInterface
    end
    

    def setFrame(index)
        self.getRotationAnimationInterface().setFrame(index)
    end
    

    def setRotationAnimationInterface(rotationAnimationInterface)
        @indexedButShouldBeRotationAnimationInterface = rotationAnimationInterface
    end

    def self.id()
        return defined?(@@id) ? @@id : nil
    end

    def self.id=(value)
        @@id = value
    end
end

require "org/allbinary/game/input/form/RTSFormInput"
require "org/allbinary/animation/Animation"
require "org/allbinary/animation/AnimationInterfaceFactoryInterface"
require "org/allbinary/animation/IndexedAnimation"
require "org/allbinary/animation/NullAnimationFactory"
require "org/allbinary/animation/NullIndexedAnimationFactory"
require "org/allbinary/animation/ProceduralAnimationInterfaceFactoryInterface"
require "org/allbinary/animation/RotationAnimation"
require "org/allbinary/animation/caption/CaptionAnimationHelperBase"
require "org/allbinary/game/combat/destroy/DestroyedLayerProcessor"
require "org/allbinary/game/health/Health"
require "org/allbinary/game/identification/Group"
require "org/allbinary/game/identification/GroupFactory"
require "org/allbinary/game/input/GameInputProcessor"
require "org/allbinary/game/input/GameInputProcessorUtil"
require "org/allbinary/game/input/InputFactory"
require "org/allbinary/game/input/form/NullRTSFormInputFactory"
require "org/allbinary/game/layer/waypoint/Waypoint2LogHelper"
require "org/allbinary/game/layer/waypoint/WaypointLogHelper"
require "org/allbinary/game/layer/waypoint/WaypointRunnableLogHelper"
require "org/allbinary/game/tracking/TrackingEvent"
require "org/allbinary/game/view/TileLayerPositionIntoViewPosition"
require "org/allbinary/graphics/Rectangle"
require "org/allbinary/graphics/RectangleFactory"
require "org/allbinary/graphics/form/ScrollSelectionForm"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/layer/AllBinaryLayerManager"
require "org/allbinary/media/graphics/geography/map/BasicGeographicMap"
require "org/allbinary/time/TimeDelayHelper"
require "org/allbinary/view/event/ViewPositionEventHandler"
require "org/allbinary/game/multiplayer/layer/RemoteInfo"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/math/LayerDistanceUtil"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellHistory"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition"
require "org/allbinary/media/graphics/geography/map/GeographicMapCompositeInterface"
require "org/allbinary/util/ABHashtable"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/view/ViewPositionBase"
require "org/allbinary/game/layer/AllBinaryGameLayerManager"
require "org/allbinary/game/layer/AllBinaryTiledLayer"
require "org/allbinary/game/layer/GeographicMapCellPositionArea"
require "org/allbinary/game/layer/GeographicMapCellPositionAreaBase"
require "org/allbinary/game/layer/RTSLayer2LogHelper"
require "org/allbinary/game/layer/RTSLayerUtil"
require "org/allbinary/game/layer/RTSPlayerLayerInterface"
require "org/allbinary/game/layer/SelectionHudPaintable"
require "org/allbinary/game/layer/WaypointBehaviorBase"

class RTSLayer
    @@id = 0
    MAIN_INDEX = 0
    SECONDARY_INDEX = 1
end

