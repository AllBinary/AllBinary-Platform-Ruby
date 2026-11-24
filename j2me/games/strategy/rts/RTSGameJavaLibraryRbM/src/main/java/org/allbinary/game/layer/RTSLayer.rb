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
require "org/allbinary/game/multiplayer/layer/MultiPlayerGameLayer"
require "org/allbinary/game/input/GameInputInterface"
require "org/allbinary/game/input/GameKeyEventSourceInterface"
require "org/allbinary/game/tick/TickableInterface"
require "org/allbinary/game/layer/PathFindingLayerInterface"
require "org/allbinary/game/layer/RTSInterface"

module ::Org; module Allbinary; module Game; module Layer

class RTSLayer < ::Org::Allbinary::Game::Multiplayer::Layer::MultiPlayerGameLayer
    include ::Org::Allbinary::Game::Tick::TickableInterface
    include ::Org::Allbinary::Game::Input::GameInputInterface
    include ::Org::Allbinary::Game::Input::GameKeyEventSourceInterface
    include RTSInterface
    include PathFindingLayerInterface
    attr_accessor :debug, :showMoreCaptionStates, :inputProcessorArray, :rtsLayer2LogHelper, :waypointLogHelperP, :waypoint2LogHelperP, :waypointRunnableLogHelperP, :rtsFormInput, :verticleBuildAnimationInterface, :rangeAnimation, :initRangeAnimation, :sensorRangeAnimation, :initSensorRangeAnimation, :baseAnimationInterface, :buildFrameTimeHelper, :buildAnimationInterface, :animationInterface, :initAnimationInterface, :indexedButShouldBeRotationAnimationInterface, :emptyAnimationInterface, :destroyAnimationInterface, :fireTimeHelper, :rootName, :hashtable, :BUILD_VALUE, :geographicMapCellPositionAreaBase, :healthInterface, :level, :maxLevel, :hackVerticleBuild, :slightAngle, :percentCompleteP, :destroyed, :selected, :rtsLayerUtil, :layerDistanceUtil

    def jfields_org_allbinary_game_layer_RTSLayer
        @debug = true
        @showMoreCaptionStates = @debug
        @inputProcessorArray = Array.new(::Org::Allbinary::Game::Input::InputFactory.getInstance().MAX, nil)
        @rtsLayer2LogHelper = RTSLayer2LogHelper.getInstance()
        @waypointLogHelperP = ::Org::Allbinary::Game::Layer::Waypoint::WaypointLogHelper.getInstance()
        @waypoint2LogHelperP = ::Org::Allbinary::Game::Layer::Waypoint::Waypoint2LogHelper.getInstance()
        @waypointRunnableLogHelperP = ::Org::Allbinary::Game::Layer::Waypoint::WaypointRunnableLogHelper.getInstance()
        @rtsFormInput = nil unless instance_variable_defined?(:@rtsFormInput)
        @verticleBuildAnimationInterface = nil unless instance_variable_defined?(:@verticleBuildAnimationInterface)
        @rangeAnimation = nil unless instance_variable_defined?(:@rangeAnimation)
        @initRangeAnimation = nil unless instance_variable_defined?(:@initRangeAnimation)
        @sensorRangeAnimation = nil unless instance_variable_defined?(:@sensorRangeAnimation)
        @initSensorRangeAnimation = nil unless instance_variable_defined?(:@initSensorRangeAnimation)
        @baseAnimationInterface = nil unless instance_variable_defined?(:@baseAnimationInterface)
        @buildFrameTimeHelper = ::Org::Allbinary::TimePackage::TimeDelayHelper.new(50)
        @buildAnimationInterface = nil unless instance_variable_defined?(:@buildAnimationInterface)
        @animationInterface = nil unless instance_variable_defined?(:@animationInterface)
        @initAnimationInterface = nil unless instance_variable_defined?(:@initAnimationInterface)
        @indexedButShouldBeRotationAnimationInterface = nil unless instance_variable_defined?(:@indexedButShouldBeRotationAnimationInterface)
        @emptyAnimationInterface = nil unless instance_variable_defined?(:@emptyAnimationInterface)
        @destroyAnimationInterface = nil unless instance_variable_defined?(:@destroyAnimationInterface)
        @fireTimeHelper = ::Org::Allbinary::TimePackage::TimeDelayHelper.new(700)
        @rootName = nil unless instance_variable_defined?(:@rootName)
        @hashtable = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashtable()
        @BUILD_VALUE = 63
        @geographicMapCellPositionAreaBase = nil unless instance_variable_defined?(:@geographicMapCellPositionAreaBase)
        @healthInterface = ::Org::Allbinary::Game::Health::Health::NULL_HEALTH
        @level = 1
        @maxLevel = 1
        @hackVerticleBuild = @BUILD_VALUE
        @slightAngle = 0
        @percentCompleteP = 0 unless instance_variable_defined?(:@percentCompleteP)
        @destroyed = false
        @selected = false
        @rtsLayerUtil = RTSLayerUtil.getInstance()
        @layerDistanceUtil = ::Org::Allbinary::MathPackage::LayerDistanceUtil.getInstance()
    end
    

    # throws Exception
    def self.createSimulatedInstance(remoteInfo)
        nullAnimationInterfaceFactoryInterface = ::Org::Allbinary::Animation::NullAnimationFactory.getFactoryInstance()
        nullIndexedAnimationInterfaceFactoryInterface = ::Org::Allbinary::Animation::NullIndexedAnimationFactory.getFactoryInstance()
        return RTSLayer.new(::Org::Allbinary::Game::Multiplayer::Layer::RemoteInfo::REMOTE_INFO, ::Org::Allbinary::Game::Identification::GroupFactory.getInstance().NULL_GROUP_ARRAY, ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING, ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING, ::Org::Allbinary::Game::Health::Health::NULL_HEALTH, ::Org::Allbinary::Game::Input::Form::NullRTSFormInputFactory.getInstance(), nullAnimationInterfaceFactoryInterface, nullIndexedAnimationInterfaceFactoryInterface, nullAnimationInterfaceFactoryInterface, nullAnimationInterfaceFactoryInterface, nullIndexedAnimationInterfaceFactoryInterface, ::Org::Allbinary::Animation::NullIndexedAnimationFactory.getFactoryInstance(), ::Org::Allbinary::Graphics::RectangleFactory::SINGLETON, 0, 0, ::Org::Allbinary::Game::View::TileLayerPositionIntoViewPosition.new())
    end
    

    def initialize(remoteInfo, groupInterface, rootName, name, healthInterface, rtsFormInput, animationInterfaceFactoryInterface, emptyAnimationInterfaceFactoryInterface, baseAnimationInterfaceFactoryInterface, buildAnimationInterfaceFactoryInterface, verticleBuildAnimationInterfaceFactoryInterface, proceduralAnimationInterfaceFactoryInterface, rectangle, x, y, viewPosition)
        super(remoteInfo, groupInterface, name, rectangle, viewPosition)
        jfields_org_allbinary_game_layer_RTSLayer
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
        animation = ::Org::Allbinary::Animation::NullAnimationFactory.getFactoryInstance().getInstance(0)
        @rangeAnimation = animation
        @initRangeAnimation = animation
        @sensorRangeAnimation = animation
        @initSensorRangeAnimation = animation
        @animationInterface = @initAnimationInterface
        @geographicMapCellPositionAreaBase = GeographicMapCellPositionArea.new(self)
    end
    

    # throws Exception
    def setAllBinaryGameLayerManager(allBinaryGameLayerManager)
        RTSLayer.superclass.java_super_method(:setAllBinaryGameLayerManager, 1).bind(self).call(allBinaryGameLayerManager)
        geographicMapCompositeInterface = @allBinaryGameLayerManagerP
        geographicMapInterface = geographicMapCompositeInterface.getGeographicMapInterface()[0]
        tiledLayer = geographicMapInterface.getAllBinaryTiledLayer()
        viewPosition2 = self.getViewPosition()
        viewPosition2.setTiledLayer(tiledLayer)
        self.updateWaypointBehavior(geographicMapInterface)
    end
    java_overload :setAllBinaryGameLayerManager, 1
    

    # throws Exception
    def updateWaypointBehavior(geographicMapInterface)
        @geographicMapCellPositionAreaBase.update(geographicMapInterface)
    end
    java_overload :updateWaypointBehavior, 1
    

    # throws Exception
    def construct(rtsPlayerLayerInterface)
        ::Org::Allbinary::View::Event::ViewPositionEventHandler.getInstance().addListener(self)
        @animationInterface = @buildAnimationInterface
        @hackVerticleBuild = 0
    end
    java_overload :construct, 1
    

    def select()
        @rangeAnimation = @initRangeAnimation
        @sensorRangeAnimation = @initSensorRangeAnimation
        self.setSelected(true)
    end
    java_overload :select, 0
    

    def deselect()
        animation = ::Org::Allbinary::Animation::NullAnimationFactory.getFactoryInstance().getInstance(0)
        @rangeAnimation = animation
        @sensorRangeAnimation = animation
        self.setSelected(false)
    end
    java_overload :deselect, 0
    

    def setSelected(selected)
        @selected = selected
    end
    java_overload :setSelected, 1
    

    def isSelected()
        return @selected
    end
    java_overload :isSelected, 0
    

    def getPercentComplete()
        return @percentCompleteP
    end
    java_overload :getPercentComplete, 0
    

    def getScrollSelectionForm()
        return ::Org::Allbinary::Graphics::Form::ScrollSelectionForm.getNullScrollSelectionForm()
    end
    java_overload :getScrollSelectionForm, 0
    

    def initInputProcessors()
        ::Org::Allbinary::Game::Input::GameInputProcessorUtil.init(@inputProcessorArray)
    end
    java_overload :initInputProcessors, 0
    

    # throws Exception
    def processBuiltTick(allBinaryLayerManager)
        @animationInterface = @indexedButShouldBeRotationAnimationInterface
    end
    java_overload :processBuiltTick, 1
    

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
    java_overload :processTick, 1
    

    # throws Exception
    def processInput(layerManager)
    end
    java_overload :processInput, 1
    

    def reload()
    end
    java_overload :reload, 0
    

    def onMovement(trackingEvent)
    end
    java_overload :onMovement, 1
    

    # throws Exception
    def onMovementFound(trackingEvent)
    end
    java_overload :onMovementFound, 1
    

    def paint(graphics)
        RTSLayer.superclass.java_super_method(:paintFirst, 1).bind(self).call(graphics)
        viewPosition = self.getViewPosition()
        viewX = viewPosition.getX()
        viewY = viewPosition.getY()
        self.getAnimationInterface().paintXY(graphics, viewX, viewY)
    end
    java_overload :paint, 1
    

    # throws Exception
    def damage(damage, damageType)
    end
    java_overload :damage, 2
    

    def getSourceId()
        return RTSLayer.id
    end
    java_overload :getSourceId, 0
    

    def downgrade()
        @rtsLayerUtil.downgrade(self)
    end
    java_overload :downgrade, 0
    

    def upgrade()
        @rtsLayerUtil.upgrade(self)
    end
    java_overload :upgrade, 0
    

    def isCompleted()
        if @hackVerticleBuild < @BUILD_VALUE
            return false
        else
            return true
        end
    end
    java_overload :isCompleted, 0
    

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
    java_overload :build, 0
    

    def isSelfUpgradeable()
        return true
    end
    java_overload :isSelfUpgradeable, 0
    

    def getCost()
        return @rtsLayerUtil.getCost(self)
    end
    java_overload :getCost, 0
    

    def getDowngradeCost()
        return @rtsLayerUtil.getDowngradeCost(self)
    end
    java_overload :getDowngradeCost, 0
    

    def getUpgradeCost()
        return @rtsLayerUtil.getUpgradeCost(self)
    end
    java_overload :getUpgradeCost, 0
    

    def isUpgradeable()
        if self.getLevel() < self.getMaxLevel()
            return true
        else
            return false
        end
    end
    java_overload :isUpgradeable, 0
    

    def isDowngradeable()
        if self.getLevel() > 1
            return true
        else
            return false
        end
    end
    java_overload :isDowngradeable, 0
    

    def getLevel()
        return @level
    end
    java_overload :getLevel, 0
    

    def setLevel(level)
        @level = level
    end
    java_overload :setLevel, 1
    

    def getVerticleBuildAnimationInterface()
        return @verticleBuildAnimationInterface
    end
    java_overload :getVerticleBuildAnimationInterface, 0
    

    def getAnimationInterface()
        return @animationInterface
    end
    java_overload :getAnimationInterface, 0
    

    def setAnimationInterface(animationInterface)
        @animationInterface = animationInterface
    end
    java_overload :setAnimationInterface, 1
    

    # throws Exception
    def setTarget(targetGameLayer)
        anotherTargetDistance = @layerDistanceUtil.getDistance(self, targetGameLayer)
        waypointBehaviorBase = self.getWaypointBehavior()
        waypointBehaviorBase.setTargetWithDistance(targetGameLayer, anotherTargetDistance)
    end
    java_overload :setTarget, 1
    

    def createHudPaintable()
        raise RuntimeError.new()
    end
    java_overload :createHudPaintable, 0
    

    def getHudPaintable()
        raise RuntimeError.new()
    end
    java_overload :getHudPaintable, 0
    

    def getMaxLevel()
        return @maxLevel
    end
    java_overload :getMaxLevel, 0
    

    def setMaxLevel(maxLevel)
        @maxLevel = maxLevel
    end
    java_overload :setMaxLevel, 1
    

    def getHealthInterface()
        return @healthInterface
    end
    java_overload :getHealthInterface, 0
    

    def setHealthInterface(healthInterface)
        @healthInterface = healthInterface
    end
    java_overload :setHealthInterface, 1
    

    def getRTSFormInput()
        return @rtsFormInput
    end
    java_overload :getRTSFormInput, 0
    

    # throws Exception
    def isDestroyed()
        return @destroyed
    end
    java_overload :isDestroyed, 0
    

    # throws Exception
    def setDestroyed(destroyed)
        @destroyed = destroyed
        if self.isDestroyed()
            ::Org::Allbinary::Game::Combat::Destroy::DestroyedLayerProcessor.getInstance().add(self)
            ::Org::Allbinary::View::Event::ViewPositionEventHandler.getInstance().removeListener(self)
        end
    end
    java_overload :setDestroyed, 1
    

    def getEndGeographicMapCellPositionList()
        return @geographicMapCellPositionAreaBase.getOccupyingGeographicMapCellPositionList()
    end
    java_overload :getEndGeographicMapCellPositionList, 0
    

    def getGeographicMapCellPositionArea()
        return @geographicMapCellPositionAreaBase
    end
    java_overload :getGeographicMapCellPositionArea, 0
    

    def shouldHandleStartSameAsEnd()
        return true
    end
    java_overload :shouldHandleStartSameAsEnd, 0
    

    # throws Exception
    def handleCost(ownerLayer)
    end
    java_overload :handleCost, 1
    

    def getWaypointBehavior()
        raise RuntimeError.new()
    end
    java_overload :getWaypointBehavior, 0
    

    def getParentLayer()
        raise RuntimeError.new()
    end
    java_overload :getParentLayer, 0
    

    def getRTSLayer2LogHelper()
        return @rtsLayer2LogHelper
    end
    java_overload :getRTSLayer2LogHelper, 0
    

    def getWaypointLogHelper()
        return @waypointLogHelperP
    end
    java_overload :getWaypointLogHelper, 0
    

    def getWaypoint2LogHelper()
        return @waypoint2LogHelperP
    end
    java_overload :getWaypoint2LogHelper, 0
    

    def getWaypointRunnableLogHelper()
        return @waypointRunnableLogHelperP
    end
    java_overload :getWaypointRunnableLogHelper, 0
    

    def shouldAddWaypointFromBuilding()
        return false
    end
    java_overload :shouldAddWaypointFromBuilding, 0
    

    def getCaptionAnimationHelper()
        raise RuntimeError.new()
    end
    java_overload :getCaptionAnimationHelper, 0
    

    def isShowMoreCaptionStates()
        return @showMoreCaptionStates
    end
    java_overload :isShowMoreCaptionStates, 0
    

    # throws Exception
    def init(geographicMapCellHistory, geographicMapCellPositionBasicArrayList)
    end
    java_overload :init, 2
    

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
    

    def getMoveOutOfBuildAreaPath(geographicMapCellPosition)
        raise RuntimeError.new()
    end
    java_overload :getMoveOutOfBuildAreaPath, 1
    

    # throws Exception
    def setClosestGeographicMapCellHistory(pathsList)
    end
    java_overload :setClosestGeographicMapCellHistory, 1
    

    def teleportTo(geographicMapCellPosition)
    end
    java_overload :teleportTo, 1
    

    # throws Exception
    def setLoad(resource)
    end
    java_overload :setLoad, 1
    

    # throws Exception
    def getSurroundingGeographicMapCellPositionList()
        raise RuntimeError.new()
    end
    java_overload :getSurroundingGeographicMapCellPositionList, 0
    

    # throws Exception
    def trackTo(reason)
    end
    java_overload :trackTo, 1
    

    # throws Exception
    def trackToDXY(dx, dy)
    end
    java_overload :trackToDXY, 2
    

    def isWaypointListEmptyOrOnlyTargets()
        return false
    end
    java_overload :isWaypointListEmptyOrOnlyTargets, 0
    

    def getTrackingEvent()
        raise RuntimeError.new()
    end
    java_overload :getTrackingEvent, 0
    

    # throws Exception
    def buildingChase(allbinaryLayer, cellPosition)
        return false
    end
    java_overload :buildingChase, 2
    

    def allStop()
    end
    java_overload :allStop, 0
    

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
    java_overload :implmentsTickableInterface, 0
    

    def implmentsGameInputInterface()
        return true
    end
    java_overload :implmentsGameInputInterface, 0
    

    def getRootName()
        return @rootName
    end
    java_overload :getRootName, 0
    

    def getRotationAnimationInterface()
        return @indexedButShouldBeRotationAnimationInterface
    end
    java_overload :getRotationAnimationInterface, 0
    

    def setFrame(index)
        self.getRotationAnimationInterface().setFrame(index)
    end
    java_overload :setFrame, 1
    

    def setRotationAnimationInterface(rotationAnimationInterface)
        @indexedButShouldBeRotationAnimationInterface = rotationAnimationInterface
    end
    java_overload :setRotationAnimationInterface, 1

    def self.id()
        RTSLayer.java_static_fields unless @java_static_fields_started
        return defined?(@@id) ? @@id : nil
    end

    def self.id=(value)
        RTSLayer.java_static_fields unless @java_static_fields_started
        @@id = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        @@id = 0
        const_set(:MAIN_INDEX, 0)
        const_set(:SECONDARY_INDEX, 1)
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "RTSLayer"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:MAIN_INDEX, :SECONDARY_INDEX].include?(name)
        end
        super
    end
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Game; module Input; module Form; autoload :RTSFormInput, "org/allbinary/game/input/form/RTSFormInput" unless const_defined?(:RTSFormInput, false); end; end; end; end; end
module ::Org; module Allbinary; module Animation; autoload :Animation, "org/allbinary/animation/Animation" unless const_defined?(:Animation, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :AnimationInterfaceFactoryInterface, "org/allbinary/animation/AnimationInterfaceFactoryInterface" unless const_defined?(:AnimationInterfaceFactoryInterface, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :IndexedAnimation, "org/allbinary/animation/IndexedAnimation" unless const_defined?(:IndexedAnimation, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :NullAnimationFactory, "org/allbinary/animation/NullAnimationFactory" unless const_defined?(:NullAnimationFactory, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :NullIndexedAnimationFactory, "org/allbinary/animation/NullIndexedAnimationFactory" unless const_defined?(:NullIndexedAnimationFactory, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :ProceduralAnimationInterfaceFactoryInterface, "org/allbinary/animation/ProceduralAnimationInterfaceFactoryInterface" unless const_defined?(:ProceduralAnimationInterfaceFactoryInterface, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :RotationAnimation, "org/allbinary/animation/RotationAnimation" unless const_defined?(:RotationAnimation, false); end; end; end
module ::Org; module Allbinary; module Animation; module Caption; autoload :CaptionAnimationHelperBase, "org/allbinary/animation/caption/CaptionAnimationHelperBase" unless const_defined?(:CaptionAnimationHelperBase, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Combat; module Destroy; autoload :DestroyedLayerProcessor, "org/allbinary/game/combat/destroy/DestroyedLayerProcessor" unless const_defined?(:DestroyedLayerProcessor, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Health; autoload :Health, "org/allbinary/game/health/Health" unless const_defined?(:Health, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Identification; autoload :Group, "org/allbinary/game/identification/Group" unless const_defined?(:Group, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Identification; autoload :GroupFactory, "org/allbinary/game/identification/GroupFactory" unless const_defined?(:GroupFactory, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Input; autoload :GameInputProcessor, "org/allbinary/game/input/GameInputProcessor" unless const_defined?(:GameInputProcessor, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Input; autoload :GameInputProcessorUtil, "org/allbinary/game/input/GameInputProcessorUtil" unless const_defined?(:GameInputProcessorUtil, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Input; autoload :InputFactory, "org/allbinary/game/input/InputFactory" unless const_defined?(:InputFactory, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Input; module Form; autoload :NullRTSFormInputFactory, "org/allbinary/game/input/form/NullRTSFormInputFactory" unless const_defined?(:NullRTSFormInputFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Waypoint; autoload :Waypoint2LogHelper, "org/allbinary/game/layer/waypoint/Waypoint2LogHelper" unless const_defined?(:Waypoint2LogHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Waypoint; autoload :WaypointLogHelper, "org/allbinary/game/layer/waypoint/WaypointLogHelper" unless const_defined?(:WaypointLogHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Waypoint; autoload :WaypointRunnableLogHelper, "org/allbinary/game/layer/waypoint/WaypointRunnableLogHelper" unless const_defined?(:WaypointRunnableLogHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Tracking; autoload :TrackingEvent, "org/allbinary/game/tracking/TrackingEvent" unless const_defined?(:TrackingEvent, false); end; end; end; end
module ::Org; module Allbinary; module Game; module View; autoload :TileLayerPositionIntoViewPosition, "org/allbinary/game/view/TileLayerPositionIntoViewPosition" unless const_defined?(:TileLayerPositionIntoViewPosition, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; autoload :Rectangle, "org/allbinary/graphics/Rectangle" unless const_defined?(:Rectangle, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :RectangleFactory, "org/allbinary/graphics/RectangleFactory" unless const_defined?(:RectangleFactory, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Form; autoload :ScrollSelectionForm, "org/allbinary/graphics/form/ScrollSelectionForm" unless const_defined?(:ScrollSelectionForm, false); end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager" unless const_defined?(:AllBinaryLayerManager, false); end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :BasicGeographicMap, "org/allbinary/media/graphics/geography/map/BasicGeographicMap" unless const_defined?(:BasicGeographicMap, false); end; end; end; end; end; end
module ::Org; module Allbinary; module TimePackage; autoload :TimeDelayHelper, "org/allbinary/time/TimeDelayHelper" unless const_defined?(:TimeDelayHelper, false); end; end; end
module ::Org; module Allbinary; module View; module Event; autoload :ViewPositionEventHandler, "org/allbinary/view/event/ViewPositionEventHandler" unless const_defined?(:ViewPositionEventHandler, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Multiplayer; module Layer; autoload :RemoteInfo, "org/allbinary/game/multiplayer/layer/RemoteInfo" unless const_defined?(:RemoteInfo, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :LayerDistanceUtil, "org/allbinary/math/LayerDistanceUtil" unless const_defined?(:LayerDistanceUtil, false); end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellHistory, "org/allbinary/media/graphics/geography/map/GeographicMapCellHistory" unless const_defined?(:GeographicMapCellHistory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellPosition, "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition" unless const_defined?(:GeographicMapCellPosition, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCompositeInterface, "org/allbinary/media/graphics/geography/map/GeographicMapCompositeInterface" unless const_defined?(:GeographicMapCompositeInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Util; autoload :ABHashtable, "org/allbinary/util/ABHashtable" unless const_defined?(:ABHashtable, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module View; autoload :ViewPositionBase, "org/allbinary/view/ViewPositionBase" unless const_defined?(:ViewPositionBase, false); end; end; end
autoload :AllBinaryGameLayerManager, "org/allbinary/game/layer/AllBinaryGameLayerManager" unless const_defined?(:AllBinaryGameLayerManager, false)
autoload :AllBinaryTiledLayer, "org/allbinary/game/layer/AllBinaryTiledLayer" unless const_defined?(:AllBinaryTiledLayer, false)
autoload :GeographicMapCellPositionArea, "org/allbinary/game/layer/GeographicMapCellPositionArea" unless const_defined?(:GeographicMapCellPositionArea, false)
autoload :GeographicMapCellPositionAreaBase, "org/allbinary/game/layer/GeographicMapCellPositionAreaBase" unless const_defined?(:GeographicMapCellPositionAreaBase, false)
autoload :RTSLayer2LogHelper, "org/allbinary/game/layer/RTSLayer2LogHelper" unless const_defined?(:RTSLayer2LogHelper, false)
autoload :RTSLayerUtil, "org/allbinary/game/layer/RTSLayerUtil" unless const_defined?(:RTSLayerUtil, false)
autoload :RTSPlayerLayerInterface, "org/allbinary/game/layer/RTSPlayerLayerInterface" unless const_defined?(:RTSPlayerLayerInterface, false)
autoload :SelectionHudPaintable, "org/allbinary/game/layer/SelectionHudPaintable" unless const_defined?(:SelectionHudPaintable, false)
autoload :WaypointBehaviorBase, "org/allbinary/game/layer/WaypointBehaviorBase" unless const_defined?(:WaypointBehaviorBase, false)

begin
    RTSLayer.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

