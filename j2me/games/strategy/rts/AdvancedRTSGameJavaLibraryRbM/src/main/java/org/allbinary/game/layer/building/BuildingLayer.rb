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

require "java/lang/JavaOverload"
require "org/allbinary/game/layer/AdvancedRTSGameLayer"
require "org/allbinary/animation/RotationAnimationInterfaceCompositeInterface"
require "org/allbinary/game/tracking/TrackingEventListenerInterface"

module ::Org; module Allbinary; module Game; module Layer; module Building

class BuildingLayer < ::Org::Allbinary::Game::Layer::AdvancedRTSGameLayer
    include ::Org::Allbinary::Animation::RotationAnimationInterfaceCompositeInterface
    include ::Org::Allbinary::Game::Tracking::TrackingEventListenerInterface
    attr_accessor :buildingLevelCost, :productivity, :efficiency, :efficiencyPerLevel, :trackingEvent, :damageFloaters, :damageFloatersPaintableInterface, :healthBar, :pathsHashtable, :local, :timeDelayHelper

    def jfields_org_allbinary_game_layer_building_BuildingLayer
        @buildingLevelCost = 0 unless instance_variable_defined?(:@buildingLevelCost)
        @productivity = 0 unless instance_variable_defined?(:@productivity)
        @efficiency = nil unless instance_variable_defined?(:@efficiency)
        @efficiencyPerLevel = nil unless instance_variable_defined?(:@efficiencyPerLevel)
        @trackingEvent = nil unless instance_variable_defined?(:@trackingEvent)
        @damageFloaters = nil unless instance_variable_defined?(:@damageFloaters)
        @damageFloatersPaintableInterface = nil unless instance_variable_defined?(:@damageFloatersPaintableInterface)
        @healthBar = nil unless instance_variable_defined?(:@healthBar)
        @pathsHashtable = nil unless instance_variable_defined?(:@pathsHashtable)
        @local = false unless instance_variable_defined?(:@local)
        @timeDelayHelper = ::Org::Allbinary::TimePackage::TimeDelayHelper.new(3000)
    end
    

    # throws Exception
    def self.createSimulated()
        nullAnimationInterfaceFactoryInterface = ::Org::Allbinary::Animation::NullAnimationFactory.getFactoryInstance()
        nullIndexedAnimationInterfaceFactoryInterface = ::Org::Allbinary::Animation::NullIndexedAnimationFactory.getFactoryInstance()
        return BuildingLayer.new(::Org::Allbinary::Game::Multiplayer::Layer::RemoteInfo::REMOTE_INFO, SimulatedBuildingPropertiesFactory.getInstance(), ::Org::Allbinary::Game::Layer::AdvancedRTSProperties.createPropertiesSimulated(), ::Org::Allbinary::Game::Identification::GroupFactory.getInstance().NULL_GROUP_ARRAY, ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING, ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING, ::Org::Allbinary::Game::Health::Health::NULL_HEALTH, ::Org::Allbinary::Game::Input::Form::NullRTSFormInputFactory.getInstance(), nullAnimationInterfaceFactoryInterface, nullIndexedAnimationInterfaceFactoryInterface, nullAnimationInterfaceFactoryInterface, nullAnimationInterfaceFactoryInterface, nullIndexedAnimationInterfaceFactoryInterface, ::Org::Allbinary::Animation::NullIndexedAnimationFactory.getFactoryInstance(), ::Org::Allbinary::Graphics::RectangleFactory::SINGLETON, 0, 0)
    end
    

    def initialize(remoteInfo, buildingPropertiesFactory, advancedRTSProperties, groupInterface, rootName, name, healthInterface, rtsFormInput, animationInterfaceFactoryInterface, emptyAnimationInterfaceFactoryInterface, baseAnimationInterfaceFactoryInterface, buildAnimationInterfaceFactoryInterface, verticleBuildAnimationInterfaceFactoryInterface, proceduralAnimationInterfaceFactoryInterface, rectangle, x, y)
        super(remoteInfo, ::Org::Allbinary::Game::Layer::NullPathFindingLayer::NULL_PATH_FINDING_LAYER, advancedRTSProperties, groupInterface, rootName, name, healthInterface, rtsFormInput, animationInterfaceFactoryInterface, emptyAnimationInterfaceFactoryInterface, baseAnimationInterfaceFactoryInterface, buildAnimationInterfaceFactoryInterface, verticleBuildAnimationInterfaceFactoryInterface, proceduralAnimationInterfaceFactoryInterface, rectangle, x, y, ::Org::Allbinary::Game::View::TileLayerPositionIntoViewPosition.new())
        jfields_org_allbinary_game_layer_building_BuildingLayer
        self.setCollidableInferface(::Org::Allbinary::Game::Layer::CollidableRTSBehavior.new(true))
        self.getWaypointBehavior().setWaypoint(::Org::Allbinary::Game::Layer::Waypoint::Waypoint.new(self, ::Org::Allbinary::Media::Audio::SelectSound.getInstance()))
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
        BuildingLayer.superclass.java_super_method(:initVisibility, 1).bind(self).call(rtsPlayerLayerInterface)
    end
    java_overload :initVisibility, 1
    

    # throws Exception
    def construct(rtsPlayerLayerInterface)
        BuildingLayer.superclass.java_super_method(:construct, 1).bind(self).call(rtsPlayerLayerInterface)
        ::Org::Allbinary::Game::Tracking::TrackingEventHandler.getInstance().addListenerInterface(self)
    end
    java_overload :construct, 1
    

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
    java_overload :onMovement, 1
    

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
                ::Org::Allbinary::Media::Audio::SecondaryPlayerQueueFactory.getInstance().add(::Org::Allbinary::Ag::Weapon::Media::Audio::ExplosionBasicSound.getInstance())
                @shakeListener.onSmallShakeEvent()
                @vibration.vibrate(@duration, 0, 0)
                @timeDelayHelper.setStartTimeTNT()
                self.setReadyForExplosion(true)
            end
        else
            BuildingLayer.superclass.java_super_method(:processBuiltTick, 1).bind(self).call(allBinaryLayerManager)
        end
        @indexedButShouldBeRotationAnimationInterface.nextFrame()
    end
    java_overload :processBuiltTick, 1
    

    def calculateEfficiency()
        return @efficiencyPerLevel
    end
    java_overload :calculateEfficiency, 0
    

    def getCost()
        total = ::Org::Allbinary::Game::Layer::RTSLayerUtil.getInstance().getCostExponential((((self.getLevel() * self.getBuildingLevelCost())).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
        return total
    end
    java_overload :getCost, 0
    

    def getDowngradeCost()
        downgradeCost = ::Org::Allbinary::Game::Layer::RTSLayerUtil.getInstance().getCostExponential(((((self.getLevel() - 1) * self.getBuildingLevelCost())).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
        @logUtil.putF("Cost: " + (downgradeCost).to_s, self, "getDowngradeCost")
        return downgradeCost * 9 / 10
    end
    java_overload :getDowngradeCost, 0
    

    def getUpgradeCost()
        upgradeCost = ::Org::Allbinary::Game::Layer::RTSLayerUtil.getInstance().getCostExponential(((((self.getLevel() + 1) * self.getBuildingLevelCost())).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
        return upgradeCost
    end
    java_overload :getUpgradeCost, 0
    

    def downgrade()
        BuildingLayer.superclass.java_super_method(:downgrade, 0).bind(self).call()
        self.setProductivity(self.getProductivity() - 1)
        self.setEfficiency(self.getEfficiency() - self.calculateEfficiency())
        self.getHealthInterface().setMaxHealth(self.getHealthInterface().getMaxHealth() - ((self.getLevel() + 1) * 100))
    end
    java_overload :downgrade, 0
    

    def upgrade()
        BuildingLayer.superclass.java_super_method(:upgrade, 0).bind(self).call()
        self.setProductivity(self.getProductivity() + 1)
        self.setEfficiency(self.getEfficiency() + self.calculateEfficiency())
        self.getHealthInterface().setMaxHealth(self.getHealthInterface().getMaxHealth() + (self.getLevel() * 100))
    end
    java_overload :upgrade, 0
    

    def getBuildingLevelCost()
        return @buildingLevelCost
    end
    java_overload :getBuildingLevelCost, 0
    

    def setBuildingLevelCost(buildingLevelCost)
        @buildingLevelCost = buildingLevelCost
    end
    java_overload :setBuildingLevelCost, 1
    

    def getProductivity()
        return @productivity
    end
    java_overload :getProductivity, 0
    

    def setProductivity(productivity)
        @productivity = productivity
    end
    java_overload :setProductivity, 1
    

    def getEfficiency()
        return @efficiency
    end
    java_overload :getEfficiency, 0
    

    def setEfficiency(efficiency)
        @efficiency = efficiency
    end
    java_overload :setEfficiency, 1
    

    # throws Exception
    def generateMoveOutOfBuildAreaPaths()
        occupyList = @geographicMapCellPositionAreaBase.getOccupyingGeographicMapCellPositionList()
        surroundList = @geographicMapCellPositionAreaBase.getSurroundingGeographicMapCellPositionList()
        _NO_DIRECTION = ::Org::Allbinary::Direction::DirectionFactory.getInstance().NO_DIRECTION
        geographicMapDirectionUtil = ::Org::Allbinary::Media::Graphics::Geography::Map::GeographicMapDirectionUtil.getInstance()
        pathsList = nil
        occupyGeographicMapCellPosition = nil
        surroundGeographicMapCellPosition = nil
        list = nil
        (occupyList.size() - 1).step(0, -(1)) do |index2|
            pathsList = ::Org::Allbinary::Util::BasicArrayListD.new()
            occupyGeographicMapCellPosition = occupyList.get(index2)
            (surroundList.size() - 1).step(0, -(1)) do |index|
                surroundGeographicMapCellPosition = surroundList.get(index)
                if geographicMapDirectionUtil.getEightDirectionFromCellPositionToAdjacentCellPosition(surroundGeographicMapCellPosition, occupyGeographicMapCellPosition) != _NO_DIRECTION
                    list = ::Org::Allbinary::Util::BasicArrayListS.new(1)
                    list.add(surroundGeographicMapCellPosition)
                    pathsList.add(list)
                end
            end
            @pathsHashtable.put(occupyGeographicMapCellPosition, pathsList)
        end
    end
    java_overload :generateMoveOutOfBuildAreaPaths, 0
    

    def getMoveOutOfBuildAreaPath(geographicMapCellPosition)
        pathsList = @pathsHashtable.get(geographicMapCellPosition)
        return pathsList
    end
    java_overload :getMoveOutOfBuildAreaPath, 1
    

    def getEndGeographicMapCellPositionList()
        return @geographicMapCellPositionAreaBase.getSurroundingGeographicMapCellPositionList()
    end
    java_overload :getEndGeographicMapCellPositionList, 0
    

    def shouldHandleStartSameAsEnd()
        return false
    end
    java_overload :shouldHandleStartSameAsEnd, 0
    

    def paint(graphics)
        if self.isVisible()
            BuildingLayer.superclass.java_super_method(:paint, 1).bind(self).call(graphics)
            @damageFloatersPaintableInterface.paint(graphics)
            @healthBar.paint(graphics)
        end
    end
    java_overload :paint, 1
    

    # throws Exception
    def damage(damage, damageType)
        BuildingLayer.superclass.java_super_method(:damage, 2).bind(self).call(damage, damageType)
        @damageFloaters.add(damage)
        if damage > 0
            self.getHealthInterface().damage(damage)
        end
    end
    java_overload :damage, 2
    

    # throws Exception
    def getDamage(damageType)
        return 0
    end
    java_overload :getDamage, 1
    

    def addVisibility()
        geographicMapCellPositionArea = @geographicMapCellPositionAreaBase
        occupyList = geographicMapCellPositionArea.getOccupyingGeographicMapCellPositionList()
        ::Org::Allbinary::Game::Input::Form::VisibleCellPositionsSingleton.getInstance().addStationaryCellPositions(occupyList)
        surroundList = geographicMapCellPositionArea.getSurroundingGeographicMapCellPositionList()
        ::Org::Allbinary::Game::Input::Form::VisibleCellPositionsSingleton.getInstance().addStationaryCellPositions(surroundList)
    end
    java_overload :addVisibility, 0
    

    def removeVisibility()
        occupyList = @geographicMapCellPositionAreaBase.getOccupyingGeographicMapCellPositionList()
        ::Org::Allbinary::Game::Input::Form::VisibleCellPositionsSingleton.getInstance().removeStationaryCellPositions(occupyList)
        surroundList = @geographicMapCellPositionAreaBase.getSurroundingGeographicMapCellPositionList()
        ::Org::Allbinary::Game::Input::Form::VisibleCellPositionsSingleton.getInstance().removeStationaryCellPositions(surroundList)
    end
    java_overload :removeVisibility, 0
    

    # throws Exception
    def setDestroyed(destroyed)
        BuildingLayer.superclass.java_super_method(:setDestroyed, 1).bind(self).call(destroyed)
        if self.isDestroyed()
            ::Org::Allbinary::Media::Graphics::Geography::Map::Drop::DropCellPositionHistory.getInstance().removeAll(self)
            ::Org::Allbinary::Game::Tracking::TrackingEventHandler.getInstance().removeListener(self)
            if @local
                self.removeVisibility()
            end
            if !self.getHealthInterface().isAlive()
                damage = self.getHealthInterface().getMaxHealth()
                if damage > 10
                    ::Org::Allbinary::Media::Audio::SecondaryPlayerQueueFactory.getInstance().add(::Org::Allbinary::Ag::Weapon::Media::Audio::ExplosionBasicSound.getInstance())
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
    java_overload :setDestroyed, 1
    

    def createHudPaintable()
        buildingInfoHudPaintable = BuildingInfoHudPaintable.getInstance()
        buildingInfoHudPaintable.setBasicColorP(@allBinaryGameLayerManagerP.getForegroundBasicColor())
        buildingInfoHudPaintable.setRtsLayer(self)
        return buildingInfoHudPaintable
    end
    java_overload :createHudPaintable, 0
    

    def getHudPaintable()
        buildingInfoHudPaintable = BuildingInfoHudPaintable.getInstance()
        return buildingInfoHudPaintable
    end
    java_overload :getHudPaintable, 0
    

    def getType()
        return BuildingLayer.getStaticType()
    end
    java_overload :getType, 0
    

    def self.getStaticType()
        return 2
    end
    

    def getRotationAnimationInterface()
        return BuildingLayer.superclass.java_super_method(:getRotationAnimationInterface, 0).bind(self).call()
    end
    java_overload :getRotationAnimationInterface, 0
    

    def setFrame(index)
        BuildingLayer.superclass.java_super_method(:setFrame, 1).bind(self).call(index)
    end
    java_overload :setFrame, 1
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Ag; module Weapon; module Media; module Audio; autoload :ExplosionBasicSound, "org/allbinary/ag/weapon/media/audio/ExplosionBasicSound" unless const_defined?(:ExplosionBasicSound, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Animation; autoload :NullAnimationFactory, "org/allbinary/animation/NullAnimationFactory" unless const_defined?(:NullAnimationFactory, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :NullIndexedAnimationFactory, "org/allbinary/animation/NullIndexedAnimationFactory" unless const_defined?(:NullIndexedAnimationFactory, false); end; end; end
module ::Org; module Allbinary; module Game; module Identification; autoload :GroupFactory, "org/allbinary/game/identification/GroupFactory" unless const_defined?(:GroupFactory, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Input; module Form; autoload :NullRTSFormInputFactory, "org/allbinary/game/input/form/NullRTSFormInputFactory" unless const_defined?(:NullRTSFormInputFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Input; module Form; autoload :RTSFormInput, "org/allbinary/game/input/form/RTSFormInput" unless const_defined?(:RTSFormInput, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Input; module Form; autoload :VisibleCellPositionsSingleton, "org/allbinary/game/input/form/VisibleCellPositionsSingleton" unless const_defined?(:VisibleCellPositionsSingleton, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :AdvancedRTSPlayerLayerInterface, "org/allbinary/game/layer/AdvancedRTSPlayerLayerInterface" unless const_defined?(:AdvancedRTSPlayerLayerInterface, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :AdvancedRTSProperties, "org/allbinary/game/layer/AdvancedRTSProperties" unless const_defined?(:AdvancedRTSProperties, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :CollidableRTSBehavior, "org/allbinary/game/layer/CollidableRTSBehavior" unless const_defined?(:CollidableRTSBehavior, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :RTSLayerUtil, "org/allbinary/game/layer/RTSLayerUtil" unless const_defined?(:RTSLayerUtil, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :RTSPlayerLayerInterface, "org/allbinary/game/layer/RTSPlayerLayerInterface" unless const_defined?(:RTSPlayerLayerInterface, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :SelectionHudPaintable, "org/allbinary/game/layer/SelectionHudPaintable" unless const_defined?(:SelectionHudPaintable, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Waypoint; autoload :Waypoint, "org/allbinary/game/layer/waypoint/Waypoint" unless const_defined?(:Waypoint, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module View; autoload :TileLayerPositionIntoViewPosition, "org/allbinary/game/view/TileLayerPositionIntoViewPosition" unless const_defined?(:TileLayerPositionIntoViewPosition, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; autoload :RectangleFactory, "org/allbinary/graphics/RectangleFactory" unless const_defined?(:RectangleFactory, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :AnimationInterfaceFactoryInterface, "org/allbinary/animation/AnimationInterfaceFactoryInterface" unless const_defined?(:AnimationInterfaceFactoryInterface, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :ProceduralAnimationInterfaceFactoryInterface, "org/allbinary/animation/ProceduralAnimationInterfaceFactoryInterface" unless const_defined?(:ProceduralAnimationInterfaceFactoryInterface, false); end; end; end
module ::Org; module Allbinary; module Direction; autoload :Direction, "org/allbinary/direction/Direction" unless const_defined?(:Direction, false); end; end; end
module ::Org; module Allbinary; module Direction; autoload :DirectionFactory, "org/allbinary/direction/DirectionFactory" unless const_defined?(:DirectionFactory, false); end; end; end
module ::Org; module Allbinary; module Game; module Combat; module Damage; autoload :DamageFloaters, "org/allbinary/game/combat/damage/DamageFloaters" unless const_defined?(:DamageFloaters, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Health; autoload :Health, "org/allbinary/game/health/Health" unless const_defined?(:Health, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Identification; autoload :Group, "org/allbinary/game/identification/Group" unless const_defined?(:Group, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :GeographicMapCellPositionAreaBase, "org/allbinary/game/layer/GeographicMapCellPositionAreaBase" unless const_defined?(:GeographicMapCellPositionAreaBase, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :NullPathFindingLayer, "org/allbinary/game/layer/NullPathFindingLayer" unless const_defined?(:NullPathFindingLayer, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Tracking; autoload :TrackingEvent, "org/allbinary/game/tracking/TrackingEvent" unless const_defined?(:TrackingEvent, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Tracking; autoload :TrackingEventHandler, "org/allbinary/game/tracking/TrackingEventHandler" unless const_defined?(:TrackingEventHandler, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; autoload :Rectangle, "org/allbinary/graphics/Rectangle" unless const_defined?(:Rectangle, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Paint; autoload :Paintable, "org/allbinary/graphics/paint/Paintable" unless const_defined?(:Paintable, false); end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager" unless const_defined?(:AllBinaryLayerManager, false); end; end; end
module ::Org; module Allbinary; module Media; module Audio; autoload :SecondaryPlayerQueueFactory, "org/allbinary/media/audio/SecondaryPlayerQueueFactory" unless const_defined?(:SecondaryPlayerQueueFactory, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Audio; autoload :SelectSound, "org/allbinary/media/audio/SelectSound" unless const_defined?(:SelectSound, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellPosition, "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition" unless const_defined?(:GeographicMapCellPosition, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapDirectionUtil, "org/allbinary/media/graphics/geography/map/GeographicMapDirectionUtil" unless const_defined?(:GeographicMapDirectionUtil, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; module Drop; autoload :DropCellPositionHistory, "org/allbinary/media/graphics/geography/map/drop/DropCellPositionHistory" unless const_defined?(:DropCellPositionHistory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module TimePackage; autoload :TimeDelayHelper, "org/allbinary/time/TimeDelayHelper" unless const_defined?(:TimeDelayHelper, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListS, "org/allbinary/util/BasicArrayListS" unless const_defined?(:BasicArrayListS, false); end; end; end
module ::Org; module Allbinary; module Game; module Multiplayer; module Layer; autoload :RemoteInfo, "org/allbinary/game/multiplayer/layer/RemoteInfo" unless const_defined?(:RemoteInfo, false); end; end; end; end; end
module ::Org; module Allbinary; module Util; autoload :ABHashtable, "org/allbinary/util/ABHashtable" unless const_defined?(:ABHashtable, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :RotationAnimation, "org/allbinary/animation/RotationAnimation" unless const_defined?(:RotationAnimation, false); end; end; end
autoload :BuildingInfoHudPaintable, "org/allbinary/game/layer/building/BuildingInfoHudPaintable" unless const_defined?(:BuildingInfoHudPaintable, false)
autoload :BuildingPropertiesFactory, "org/allbinary/game/layer/building/BuildingPropertiesFactory" unless const_defined?(:BuildingPropertiesFactory, false)
autoload :SimulatedBuildingPropertiesFactory, "org/allbinary/game/layer/building/SimulatedBuildingPropertiesFactory" unless const_defined?(:SimulatedBuildingPropertiesFactory, false)

end; end; end; end; end

