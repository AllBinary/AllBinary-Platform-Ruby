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
# package org.allbinary.game.layer.unit

require "java/lang/JavaOverload"
require "org/allbinary/game/layer/AdvancedRTSGameLayer"
require "org/allbinary/game/layer/building/event/BuildingEventListenerInterface"
require "org/allbinary/game/tracking/TrackingEventListenerInterface"

module ::Org; module Allbinary; module Game; module Layer; module Unit

class UnitLayer < ::Org::Allbinary::Game::Layer::AdvancedRTSGameLayer
    include ::Org::Allbinary::Game::Layer::Building::Event::BuildingEventListenerInterface
    include ::Org::Allbinary::Game::Tracking::TrackingEventListenerInterface
    attr_accessor :basicColorFactory, :groupCommonFactory, :layerPartialCellPositionsUtil, :layerDistanceUtil, :angleFactory, :cellPositionFactory, :maxResourceLoad, :vehicleProperties, :accelerationBasicDecimal, :decelerationBasicDecimal, :trackingEvent, :damageFloaters, :damageFloatersPaintableInterface, :healthBar, :moveSoundInterface, :initResourceAnimation, :resourceAnimation, :initPathAnimation, :pathAnimation, :captionAnimationHelper, :decalAnimation, :waypointLayerInterfaceFactoryInterface, :resourceLoad, :weaponRange, :rtsLogHelper, :rotationAnimationInterfaceP, :movementAngle, :steeringInsideGeographicMapCellPosition, :sensorGeographicMapCellPositionList, :CAPITAL_EVENT

    def jfields_org_allbinary_game_layer_unit_UnitLayer
        @basicColorFactory = ::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance()
        @groupCommonFactory = ::Org::Allbinary::Game::Identification::GroupCommonFactory.getInstance()
        @layerPartialCellPositionsUtil = ::Org::Allbinary::Game::Layer::Geographic::Map::LayerPartialCellPositionsUtil.getInstance()
        @layerDistanceUtil = ::Org::Allbinary::MathPackage::LayerDistanceUtil.getInstance()
        @angleFactory = ::Org::Allbinary::MathPackage::AngleFactory.getInstance()
        @cellPositionFactory = ::Org::Allbinary::Graphics::CellPositionFactory.getInstance()
        @maxResourceLoad = nil unless instance_variable_defined?(:@maxResourceLoad)
        @vehicleProperties = nil unless instance_variable_defined?(:@vehicleProperties)
        @accelerationBasicDecimal = ::Org::Allbinary::Logic::MathPackage::BasicDecimal.new(1600)
        @decelerationBasicDecimal = ::Org::Allbinary::Logic::MathPackage::BasicDecimal.new(-1000)
        @trackingEvent = nil unless instance_variable_defined?(:@trackingEvent)
        @damageFloaters = nil unless instance_variable_defined?(:@damageFloaters)
        @damageFloatersPaintableInterface = nil unless instance_variable_defined?(:@damageFloatersPaintableInterface)
        @healthBar = nil unless instance_variable_defined?(:@healthBar)
        @moveSoundInterface = nil unless instance_variable_defined?(:@moveSoundInterface)
        @initResourceAnimation = nil unless instance_variable_defined?(:@initResourceAnimation)
        @resourceAnimation = ::Org::Allbinary::Animation::NullIndexedAnimationFactory.getFactoryInstance().getInstance(0)
        @initPathAnimation = nil unless instance_variable_defined?(:@initPathAnimation)
        @pathAnimation = ::Org::Allbinary::Animation::NullAnimationFactory.getFactoryInstance().getInstance(0)
        @captionAnimationHelper = ::Org::Allbinary::Animation::Caption::CaptionAnimationHelper.new(::Org::Allbinary::Animation::FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get(::Org::Allbinary::Game::Layer::LayerCaptionResources.getInstance().RESOURCE).getInstance(0), -23, -25, 6, 0)
        @decalAnimation = nil unless instance_variable_defined?(:@decalAnimation)
        @waypointLayerInterfaceFactoryInterface = nil unless instance_variable_defined?(:@waypointLayerInterfaceFactoryInterface)
        @resourceLoad = 0
        @weaponRange = 0 unless instance_variable_defined?(:@weaponRange)
        @rtsLogHelper = ::Org::Allbinary::Game::Layer::RTSLayerLogHelper.getInstance()
        @rotationAnimationInterfaceP = nil unless instance_variable_defined?(:@rotationAnimationInterfaceP)
        @movementAngle = @angleFactory.NOT_ANGLE
        @steeringInsideGeographicMapCellPosition = ::Org::Allbinary::Media::Graphics::Geography::Map::SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
        @sensorGeographicMapCellPositionList = ::Org::Allbinary::Util::BasicArrayListD.new()
        @CAPITAL_EVENT = ::Org::Allbinary::Game::Layer::Capital::Event::CapitalEvent.new(self)
    end
    

    def initialize(remoteInfo, parentLayer, advancedRTSProperties, groupInterface, rootName, name, vehicleProperties, healthInterface, maxResourceLoad, moveSoundInterface, waypointLayerInterfaceFactoryInterface, animationInterfaceFactoryInterface, emptyAnimationInterfaceFactoryInterface, baseAnimationInterfaceFactoryInterface, buildAnimationInterfaceFactoryInterface, verticleBuildAnimationInterfaceFactoryInterface, decalAnimationInterfaceFactoryInterface, resourceAnimationInterfaceFactoryInterface, proceduralAnimationInterfaceFactoryInterface, rectangle, direction, x, y, z, viewPosition)
        super(remoteInfo, parentLayer, advancedRTSProperties, groupInterface, rootName, name, healthInterface, ::Org::Allbinary::Game::Input::Form::WaypointRTSFormInput.new(groupInterface, true), animationInterfaceFactoryInterface, emptyAnimationInterfaceFactoryInterface, baseAnimationInterfaceFactoryInterface, buildAnimationInterfaceFactoryInterface, verticleBuildAnimationInterfaceFactoryInterface, proceduralAnimationInterfaceFactoryInterface, rectangle, x, y, viewPosition)
        jfields_org_allbinary_game_layer_unit_UnitLayer
        self.setCollidableInferface(CollidableUnitBehavior.new(true))
        @waypointLayerInterfaceFactoryInterface = waypointLayerInterfaceFactoryInterface
        @maxResourceLoad = maxResourceLoad.to_i
        @moveSoundInterface = moveSoundInterface
        if ::Org::Allbinary::Game::Configuration::Feature::Features.getInstance().isFeature(::Org::Allbinary::Game::Configuration::Feature::GameFeatureFactory.getInstance().DAMAGE_FLOATERS)
            @damageFloaters = ::Org::Allbinary::Game::Combat::Damage::PtsDamageFloaters.new(self)
            @damageFloatersPaintableInterface = @damageFloaters
        else
            @damageFloatersPaintableInterface = ::Org::Allbinary::Graphics::Paint::NullPaintable.getInstance()
            @damageFloaters = ::Org::Allbinary::Game::Combat::Damage::DamageFloaters.new()
        end
        if ::Org::Allbinary::Game::Configuration::Feature::Features.getInstance().isFeature(::Org::Allbinary::Game::Configuration::Feature::GameFeatureFactory.getInstance().HEALTH_BARS)
            @healthBar = ::Org::Allbinary::Game::Health::HealthBar.new(self, self.getHealthInterface(), ::Org::Allbinary::Game::Health::HealthBarTwodAnimation.new(self, ::Org::Allbinary::Game::Graphics::Hud::BasicHudFactory.getInstance().BOTTOMLEFT), -1)
        else
            @healthBar = ::Org::Allbinary::Graphics::Paint::NullPaintable.getInstance()
        end
        @decalAnimation = decalAnimationInterfaceFactoryInterface.getInstance(0)
        @initResourceAnimation = resourceAnimationInterfaceFactoryInterface.getInstance(0)
        @initResourceAnimation.setFrameByDirection(direction)
        @decalAnimation.setFrameByDirection(direction)
        @rotationAnimationInterfaceP = @indexedButShouldBeRotationAnimationInterface
        @rotationAnimationInterfaceP.setFrameByDirection(direction)
        self.setMaxLevel(12)
        @vehicleProperties = vehicleProperties
        @trackingEvent = ::Org::Allbinary::Game::Tracking::TrackingEvent.new(self)
        @initPathAnimation = ::Org::Allbinary::Game::Layer::PathAnimation.new(self, ::Org::Allbinary::Game::Layer::LinePathRelativeAnimation.getInstance())
    end
    

    # throws Exception
    def setAllBinaryGameLayerManager(allBinaryGameLayerManager)
        UnitLayer.superclass.java_super_method(:setAllBinaryGameLayerManager, 1).bind(self).call(allBinaryGameLayerManager)
        @initPathAnimation.setAllBinaryGameLayerManager(allBinaryGameLayerManager)
    end
    java_overload :setAllBinaryGameLayerManager, 1
    

    # throws Exception
    def updateWaypointBehavior(geographicMapInterface)
        hashtable = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashtable()
        hashtable.put(@groupCommonFactory.ID, self.getGroupInterface())
        hashtable.put(::Org::Allbinary::Layer::Layer::ID, self)
        hashtable.put(::Org::Allbinary::Game::Layer::AllBinaryGameLayerManager::ID, @allBinaryGameLayerManagerP)
        self.setWaypointBehavior(UnitWaypointBehavior2.new(self, @waypointLayerInterfaceFactoryInterface.getNextInstance(hashtable, @x, @y, @z)))
        features = ::Org::Allbinary::Game::Configuration::Feature::Features.getInstance()
        waypoint = (::Org::Allbinary::J2MEUtil.isHTML() ? ::Org::Allbinary::Game::Layer::Waypoint::MultipassNoCacheWaypoint.new(self, ::Org::Allbinary::Media::Audio::AttackSound.getInstance()) : ::Org::Allbinary::Game::Layer::Waypoint::NoCacheWaypoint.new(self, ::Org::Allbinary::Media::Audio::AttackSound.getInstance()))
        self.getWaypointBehavior().setWaypoint(waypoint)
        UnitLayer.superclass.java_super_method(:updateWaypointBehavior, 1).bind(self).call(geographicMapInterface)
        self.initRangeHack()
    end
    java_overload :updateWaypointBehavior, 1
    

    # throws Exception
    def construct(rtsPlayerLayerInterface)
        UnitLayer.superclass.java_super_method(:construct, 1).bind(self).call(rtsPlayerLayerInterface)
        ::Org::Allbinary::Game::Tracking::TrackingEventHandler.getInstance().addListenerInterface(self)
        ::Org::Allbinary::Game::Layer::Waypoint::Event::WaypointEventHandlerFactory.getInstance(self.getGroupInterface()[0]).addListenerInterface(self.getUnitWaypointBehavior())
        ::Org::Allbinary::Game::Layer::Building::Event::BuildingEventHandler.getInstance().addListenerInterface(self)
        self.getUnitWaypointBehavior().setCurrentPathGeographicMapCellPosition(self.getCurrentGeographicMapCellPosition())
        self.updateSensorGeographicMapCellPositionList()
        self.getUnitWaypointBehavior().setLastPathGeographicMapCellPosition(self.getUnitWaypointBehavior().getCurrentPathGeographicMapCellPosition())
    end
    java_overload :construct, 1
    

    # throws Exception
    def updateSensorGeographicMapCellPositionList()
        if ::Org::Allbinary::Game::Input::Form::VisibleCellPositionsSingleton.getInstance().shouldProcess()
            currentGeographicMapCellPosition = self.getCurrentGeographicMapCellPosition()
            @sensorGeographicMapCellPositionList.clear()
            @sensorGeographicMapCellPositionList.add(currentGeographicMapCellPosition)
            sensorRange = @weaponRange * SENSOR_RANGE_MULTIPLIER
            geographicMapCompositeInterface = @allBinaryGameLayerManagerP
            geographicMapInterface = geographicMapCompositeInterface.getGeographicMapInterface()[0]
            tiledLayer = geographicMapInterface.getAllBinaryTiledLayer()
            totalCells = (sensorRange / tiledLayer.getCellHeight()) / 2
            geographicMapCellPositionFactory = geographicMapInterface.getGeographicMapCellPositionFactory()
            column = currentGeographicMapCellPosition.getColumn()
            row = currentGeographicMapCellPosition.getRow()
            lastColumn = column + totalCells
            lastRow = row + totalCells
            if lastColumn > tiledLayer.getColumns()
                lastColumn = tiledLayer.getColumns()
            end
            if lastRow > tiledLayer.getRows()
                lastRow = tiledLayer.getRows()
            end
            firstColumn = column - totalCells
            firstRow = row - totalCells
            if firstColumn < 0
                firstColumn = 0
            end
            if firstRow < 0
                firstRow = 0
            end
            (lastColumn - 1).step(firstColumn, -(1)) do |index|
                (lastRow - 1).step(firstRow, -(1)) do |index2|
                    geographicMapCellPosition = geographicMapCellPositionFactory.getAt(index, index2)
                    if !@sensorGeographicMapCellPositionList.contains(geographicMapCellPosition)
                        @sensorGeographicMapCellPositionList.add(geographicMapCellPosition)
                    end
                end
            end
        end
    end
    java_overload :updateSensorGeographicMapCellPositionList, 0
    

    def getSensorGeographicMapCellPositionList()
        return @sensorGeographicMapCellPositionList
    end
    java_overload :getSensorGeographicMapCellPositionList, 0
    

    def select()
        @pathAnimation = @initPathAnimation
        UnitLayer.superclass.java_super_method(:select, 0).bind(self).call()
    end
    java_overload :select, 0
    

    def deselect()
        @pathAnimation = ::Org::Allbinary::Animation::NullAnimationFactory.getFactoryInstance().getInstance(0)
        UnitLayer.superclass.java_super_method(:deselect, 0).bind(self).call()
    end
    java_overload :deselect, 0
    

    def setSelected(selected)
        UnitLayer.superclass.java_super_method(:setSelected, 1).bind(self).call(selected)
        if selected
            if @debug
                @rtsLogHelper = ::Org::Allbinary::Game::Layer::RTSLayerSelectedLogHelper.getInstance()
            end
            @rtsLayer2LogHelper = ::Org::Allbinary::Game::Layer::RTSLayer2SelectedLogHelper.getInstance()
        else
            if @debug
                @rtsLogHelper = ::Org::Allbinary::Game::Layer::RTSLayerLogHelper.getInstance()
            end
            @rtsLayer2LogHelper = ::Org::Allbinary::Game::Layer::RTSLayer2LogHelper.getInstance()
        end
    end
    java_overload :setSelected, 1
    

    # throws Exception
    def setClosestGeographicMapCellHistory(pathsList)
        @rtsLogHelper.setClosestGeographicMapCellHistory(self, pathsList)
        closestIndex = -1
        shortestDistance = 2147483647
        currentDistance = 2147483647
        (pathsList.size() - 1).step(0, -(1)) do |index|
            geographicMapCellPositionBasicArrayList = pathsList.get(index)
            geographicMapCellPosition = geographicMapCellPositionBasicArrayList.get(geographicMapCellPositionBasicArrayList.size() - 1)
            currentDistance = @layerDistanceUtil.getDistanceAt(self, geographicMapCellPosition.getMidPoint())
            if currentDistance < shortestDistance
                shortestDistance = currentDistance
                closestIndex = index
            end
        end
        if closestIndex >= 0
            geographicMapCellPositionBasicArrayList = pathsList.get(closestIndex)
            geographicMapCellPosition = geographicMapCellPositionBasicArrayList.get(0)
            self.teleportTo(geographicMapCellPosition)
        end
    end
    java_overload :setClosestGeographicMapCellHistory, 1
    

    # throws Exception
    def init(geographicMapCellHistory, geographicMapCellPositionBasicArrayList)
        geographicMapCellHistory.trackAll(geographicMapCellPositionBasicArrayList)
    end
    java_overload :init, 2
    

    def onMovement(trackingEvent)
        begin
            layerInterface = trackingEvent.getLayerInterface()
            if layerInterface.getGroupInterface()[0] != self.getGroupInterface()[0]
                self.getUnitWaypointBehavior().getPossibleTargetList().add(layerInterface)
                layerInterface.onMovementFound(self.getTrackingEvent())
            end
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "onMovement", e)
        end
    end
    java_overload :onMovement, 1
    

    # throws Exception
    def onMovementFound(trackingEvent)
        layerInterface = trackingEvent.getLayerInterface()
        if layerInterface.getGroupInterface()[0] != self.getGroupInterface()[0]
            self.getUnitWaypointBehavior().getPossibleTargetList().add(layerInterface)
        end
    end
    java_overload :onMovementFound, 1
    

    def initRangeHack()
        basicWeaponPart = self.getPartInterfaceArray()[0]
        weaponProperties = basicWeaponPart.getWeaponProperties()
        @weaponRange = weaponProperties.getRange()
        @initRangeAnimation = ::Org::Allbinary::Animation::Vector::AdjustedCircleAnimation.createW(@weaponRange, @weaponRange, self.getWidth(), @basicColorFactory.GREEN)
        sensorRange = @weaponRange * SENSOR_RANGE_MULTIPLIER
        @initSensorRangeAnimation = ::Org::Allbinary::Animation::Vector::AdjustedCircleAnimation.createW(sensorRange, sensorRange, self.getWidth(), @basicColorFactory.RED)
        self.getUnitWaypointBehavior().initRange(@weaponRange)
        @fireTimeHelper.delay = (((weaponProperties.getReloadTime()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
    end
    java_overload :initRangeHack, 0
    

    # throws Exception
    def processBuiltTick(allBinaryLayerManager)
        if !self.getHealthInterface().isAlive()
            if self.isReadyForExplosion()
                currentFrame = @destroyAnimationInterface.getFrame()
                size = @destroyAnimationInterface.getSize() - 1
                if currentFrame == size
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
                self.setReadyForExplosion(true)
            end
        else
            UnitLayer.superclass.java_super_method(:processBuiltTick, 1).bind(self).call(allBinaryLayerManager)
        end
        @captionAnimationHelper.tick()
        self.getUnitWaypointBehavior().processTick(allBinaryLayerManager)
    end
    java_overload :processBuiltTick, 1
    

    def teleportTo(geographicMapCellPosition)
        point = geographicMapCellPosition.getMidPoint()
        self.setPosition(point.getX() - self.getHalfWidth(), point.getY() - self.getHalfHeight(), @z)
    end
    java_overload :teleportTo, 1
    

    # throws Exception
    def getCurrentGeographicMapCellPosition()
        geographicMapCompositeInterface = @allBinaryGameLayerManagerP
        geographicMapInterface = geographicMapCompositeInterface.getGeographicMapInterface()[0]
        geographicMapCellPosition = geographicMapInterface.getCellPositionAtXY(@x + self.getHalfWidth(), @y + self.getHalfHeight())
        raceTrackGeographicMap = geographicMapInterface
        if !raceTrackGeographicMap.isValid(geographicMapCellPosition)
            raise StandardError.new("Position is not really on the map: " + (geographicMapCellPosition).to_s)
        end
        return geographicMapCellPosition
    end
    java_overload :getCurrentGeographicMapCellPosition, 0
    

    # throws Exception
    def fire(layerManager, gameKeyEvent)
        if @fireTimeHelper.isTimeTNT()
            self.fireAll(layerManager)
        else
            self.reload()
        end
    end
    java_overload :fire, 2
    

    # throws Exception
    def left()
        @initResourceAnimation.previousRotation()
        @decalAnimation.previousRotation()
        @rotationAnimationInterfaceP.previousRotation()
    end
    java_overload :left, 0
    

    # throws Exception
    def right()
        @initResourceAnimation.nextRotation()
        @decalAnimation.nextRotation()
        @rotationAnimationInterfaceP.nextRotation()
    end
    java_overload :right, 0
    

    def down()
        velocityProperties = self.getVehicleProperties().getVelocityProperties()
        if !velocityProperties.isOverXYMaxForwardVelocity()
            self.accelerate(@decelerationBasicDecimal)
        end
    end
    java_overload :down, 0
    

    def up()
        velocityProperties = self.getVehicleProperties().getVelocityProperties()
        if !velocityProperties.isOverXYMaxForwardVelocity()
            self.accelerate(@accelerationBasicDecimal)
        end
    end
    java_overload :up, 0
    

    def initInputProcessors()
        @inputProcessorArray[::Javax::Microedition::Lcdui::Canvas::RIGHT] = ::Org::Allbinary::Game::Layer::Special::SpecialRightGameInputProcessor.new(self)
        @inputProcessorArray[::Javax::Microedition::Lcdui::Canvas::LEFT] = ::Org::Allbinary::Game::Layer::Special::SpecialLeftGameInputProcessor.new(self)
        @inputProcessorArray[::Javax::Microedition::Lcdui::Canvas::KEY_NUM0] = ::Org::Allbinary::Game::Layer::Special::SpecialFireGameInputProcessor.new(self)
        @inputProcessorArray[::Javax::Microedition::Lcdui::Canvas::KEY_POUND] = @inputProcessorArray[::Javax::Microedition::Lcdui::Canvas::KEY_NUM0]
        @inputProcessorArray[::Javax::Microedition::Lcdui::Canvas::DOWN] = ::Org::Allbinary::Game::Layer::Special::SpecialDownGameInputProcessor.new(self)
        @inputProcessorArray[::Javax::Microedition::Lcdui::Canvas::UP] = ::Org::Allbinary::Game::Layer::Special::SpecialUpGameInputProcessor.new(self)
        UnitLayer.superclass.java_super_method(:initInputProcessors, 0).bind(self).call()
    end
    java_overload :initInputProcessors, 0
    

    # throws Exception
    def processInput(layerManager)
        list = self.getGameKeyEventList()
        size = list.size()
        (0...size).each do |index|
            anyType = list.get(index)
            key = ::Org::Allbinary::Game::Input::Event::GameKeyEventUtil.getKey(anyType)
            @inputProcessorArray[key].processEvent(layerManager, ::Org::Allbinary::Game::Input::Event::GameKeyEvent::NONE)
        end
        list.clear()
        self.groundFriction()
        self.move()
    end
    java_overload :processInput, 1
    

    def accelerate(accelerate)
        self.getVehicleProperties().getVelocityProperties().addVelocityi(accelerate.getUnscaled(), ((@rotationAnimationInterfaceP.getAngleInfoP().getAngle()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }), 90)
    end
    java_overload :accelerate, 1
    

    # throws Exception
    def fireAll(layerManager)
        angleInfo = @rotationAnimationInterfaceP.getAngleInfoP()
        angle = (((angleInfo.getAngle() + @slightAngle)).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })
        @hashtable.put(::Org::Allbinary::Logic::MathPackage::SmallIntegerSingletonFactory.getInstance().getAt(1), ::Org::Allbinary::Logic::MathPackage::SmallIntegerSingletonFactory.getInstance().getAt(((::Org::Allbinary::MathPackage::AngleFactory.getInstance().getAt(angle).getValue()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })))
        salvoInterface = self.getPartInterfaceArray()[0]
        salvoInterface.process(layerManager, (((angle).to_i + 32768) % 65536 - 32768), (((90).to_i + 32768) % 65536 - 32768))
    end
    java_overload :fireAll, 1
    

    def downgrade()
        if self.getLevel() > 1
            UnitLayer.superclass.java_super_method(:downgrade, 0).bind(self).call()
        end
    end
    java_overload :downgrade, 0
    

    def upgrade()
        UnitLayer.superclass.java_super_method(:upgrade, 0).bind(self).call()
        self.initRangeHack()
    end
    java_overload :upgrade, 0
    

    def groundFriction()
        vehicleFrictionProperties = self.getVehicleProperties().getVehicleFrictionProperties()
        self.getVehicleProperties().getVehicleFrictionProperties().friction(self.getVehicleProperties().getVelocityProperties(), vehicleFrictionProperties.getTireFrictionNominator())
    end
    java_overload :groundFriction, 0
    

    # throws Exception
    def trackTo(reason)
        waypointBehaviorBase = @waypointBehaviorBase
        nextUnvisitedPathGeographicMapCellPosition = waypointBehaviorBase.getNextUnvisitedPathGeographicMapCellPosition()
        point = nextUnvisitedPathGeographicMapCellPosition.getMidPoint()
        dx = (self.getXP() + self.getHalfWidth()) - point.getX()
        dy = (self.getYP() + self.getHalfHeight()) - point.getY()
        @rtsLogHelper.trackTo(self, nextUnvisitedPathGeographicMapCellPosition, dx, dy, reason)
        self.trackToDXY(dx, dy)
    end
    java_overload :trackTo, 1
    

    # throws Exception
    def trackToDXY(dx, dy)
        angleOfTarget = 0
        self.trackToDXYTargetAngle(dx, dy, angleOfTarget)
    end
    java_overload :trackToDXY, 2
    

    # throws Exception
    def turnTo(dx, dy, targetAngle)
        waypointBehaviorBase = @waypointBehaviorBase
        nextUnvisitedPathGeographicMapCellPosition = waypointBehaviorBase.getNextUnvisitedPathGeographicMapCellPosition()
        evading = false
        if self.getUnitWaypointBehavior().getSensorAction() == ::Org::Allbinary::Game::Layer::SensorActionFactory.getInstance().EVADE
            @rtsLogHelper.evade(self)
            evading = true
            targetAngle += 180
        end
        angleInfo = @rotationAnimationInterfaceP.getAngleInfoP()
        angle = ::Org::Allbinary::MathPackage::FrameUtil.getInstance().adjustAngleToFrameAngle(angleInfo.getAngle() - 270)
        @rtsLogHelper.turnTo(self, dx, dy, angleInfo, angle, @movementAngle, evading, targetAngle)
        gameKeyEventFactory = ::Org::Allbinary::Game::Input::Event::GameKeyEventFactory.getInstance()
        if dx == 0 && dy == 0
            @rtsLogHelper.doneMoving(self)
            return true
        elsif (((@movementAngle.getValue()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })) == angle
            if dx > 0 && @movementAngle == @angleFactory.LEFT
                @rtsLogHelper.movingLeft(self)
                return false
            end
            if dx < 0 && @movementAngle == @angleFactory.RIGHT
                @rtsLogHelper.movingRight(self)
                return false
            end
            if dy > 0 && @movementAngle == @angleFactory.UP
                @rtsLogHelper.movingUp(self)
                return false
            end
            if dy < 0 && @movementAngle == @angleFactory.DOWN
                @rtsLogHelper.movingDown(self)
                return false
            end
            @rtsLogHelper.currentMoveEnded(self)
            if @movementAngle == @angleFactory.LEFT || @movementAngle == @angleFactory.RIGHT
                self.handleDeltalY(dx, dy)
            elsif @movementAngle == @angleFactory.UP || @movementAngle == @angleFactory.DOWN
                self.handleDeltalX(dx, dy)
            end
            return true
        else
            if nextUnvisitedPathGeographicMapCellPosition != ::Org::Allbinary::Media::Graphics::Geography::Map::SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
                if @steeringInsideGeographicMapCellPosition != nextUnvisitedPathGeographicMapCellPosition
                    if (dx).abs > (dy).abs && dy != 0
                        self.handleDeltalY(dx, dy)
                    elsif dx != 0
                        self.handleDeltalX(dx, dy)
                    else
                        self.handleDeltalY(dx, dy)
                    end
                end
                deltaAngle2 = @movementAngle.getValue() - angle
                if deltaAngle2 > 0
                    @rtsLogHelper.rotateRight(self)
                    self.getGameKeyEventList().add(gameKeyEventFactory.getInstanceForKey(self, ::Javax::Microedition::Lcdui::Canvas::RIGHT))
                else
                    @rtsLogHelper.rotateLeft(self)
                    self.getGameKeyEventList().add(gameKeyEventFactory.getInstanceForKey(self, ::Javax::Microedition::Lcdui::Canvas::LEFT))
                end
                return true
            else
                @rtsLogHelper.noRotation(self)
            end
            return false
        end
    end
    java_overload :turnTo, 3
    

    def handleDeltalX(dx, dy)
        waypointBehaviorBase = @waypointBehaviorBase
        nextUnvisitedPathGeographicMapCellPosition = waypointBehaviorBase.getNextUnvisitedPathGeographicMapCellPosition()
        if dx > 0
            @movementAngle = @angleFactory.LEFT
            @steeringInsideGeographicMapCellPosition = nextUnvisitedPathGeographicMapCellPosition
        else
            @movementAngle = @angleFactory.RIGHT
            @steeringInsideGeographicMapCellPosition = nextUnvisitedPathGeographicMapCellPosition
        end
        @rtsLogHelper.handle(self, @movementAngle)
    end
    java_overload :handleDeltalX, 2
    

    def handleDeltalY(dx, dy)
        waypointBehaviorBase = @waypointBehaviorBase
        nextUnvisitedPathGeographicMapCellPosition = waypointBehaviorBase.getNextUnvisitedPathGeographicMapCellPosition()
        if dy > 0
            @movementAngle = @angleFactory.UP
            @steeringInsideGeographicMapCellPosition = nextUnvisitedPathGeographicMapCellPosition
        else
            @movementAngle = @angleFactory.DOWN
            @steeringInsideGeographicMapCellPosition = nextUnvisitedPathGeographicMapCellPosition
        end
        @rtsLogHelper.handle(self, @movementAngle)
    end
    java_overload :handleDeltalY, 2
    

    # throws Exception
    def trackToDXYTargetAngle(dx, dy, targetAngle)
        list = self.getUnitWaypointBehavior().getSteeringVisitorList()
        if list.size() > 0
            (list.size() - 1).step(0, -(1)) do |index|
                steeringVisitor = list.get(index)
                anyType = steeringVisitor.visit(self)
                if anyType == nil
                    list.removeAt(index)
                end
            end
            self.fireOrMove()
        elsif !self.turnTo(dx, dy, targetAngle)
            self.fireOrMove()
        end
    end
    java_overload :trackToDXYTargetAngle, 3
    

    # throws Exception
    def fireOrMove()
        gameKeyEventFactory = ::Org::Allbinary::Game::Input::Event::GameKeyEventFactory.getInstance()
        if self.getUnitWaypointBehavior().needToMove()
            @rtsLayer2LogHelper.steeringUp(self)
            if @showMoreCaptionStates && !@captionAnimationHelper.isShowing()
                @captionAnimationHelper.update(MOVE, @basicColorFactory.GREEN)
            end
            self.getGameKeyEventList().add(gameKeyEventFactory.getInstanceForKey(self, ::Javax::Microedition::Lcdui::Canvas::UP))
        else
            @captionAnimationHelper.update(::Org::Allbinary::StringPackage::CommonPhoneStrings.getInstance().FIRE, @basicColorFactory.RED)
            @rtsLayer2LogHelper.steeringFireOrStop(self)
            self.allStop()
            self.getGameKeyEventList().add(gameKeyEventFactory.getInstanceForKey(self, ::Javax::Microedition::Lcdui::Canvas::KEY_NUM0))
            ::Org::Allbinary::Game::Tracking::TrackingEventHandler.getInstance().fireEvent(self.getTrackingEvent())
        end
    end
    java_overload :fireOrMove, 0
    

    def move()
        begin
            velocityProperties = self.getVehicleProperties().getVelocityProperties()
            velocityXScaled = ((velocityProperties.getVelocityXBasicDecimalP().getScaled()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })
            velocityYScaled = ((velocityProperties.getVelocityYBasicDecimalP().getScaled()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })
            self.getUnitWaypointBehavior().move()
            if velocityXScaled != 0 || velocityYScaled != 0
                self.getUnitWaypointBehavior().setMoving(true)
                geographicMapCompositeInterface = @allBinaryGameLayerManagerP
                geographicMapInterface = geographicMapCompositeInterface.getGeographicMapInterface()[0]
                @layerPartialCellPositionsUtil.getAllDXY(geographicMapInterface, self, velocityXScaled, velocityYScaled, UnitLayer.getPartialpositionlist())
                cellPosition = ::Org::Allbinary::Media::Graphics::Geography::Map::Drop::DropCellPositionHistory.getInstance().getCellPositionWithDrop(UnitLayer.getPartialpositionlist())
                if cellPosition == @cellPositionFactory.NONE
                    tiledLayer = geographicMapInterface.getAllBinaryTiledLayer()
                    tiledLayerUtil = ::Org::Allbinary::Game::Layer::TiledLayerUtil.getInstance()
                    x = @x + velocityXScaled
                    y = @y + velocityYScaled
                    x = tiledLayerUtil.keepOnMapX(tiledLayer, x, self.getWidth())
                    y = tiledLayerUtil.keepOnMapY(tiledLayer, y, self.getHeight())
                    self.setPosition(x, y, @z)
                else
                    allbinaryLayer = ::Org::Allbinary::Media::Graphics::Geography::Map::Drop::DropCellPositionHistory.getInstance().getLayerInterface(cellPosition)
                    self.getUnitWaypointBehavior().setMovingFromStopped(false)
                    self.getUnitWaypointBehavior().addBuildingChase(allbinaryLayer, cellPosition)
                end
            end
            if self.getUnitWaypointBehavior().isMoving()
                ::Org::Allbinary::Game::Tracking::TrackingEventHandler.getInstance().fireEvent(self.getTrackingEvent())
            else
                self.getUnitWaypointBehavior().setMovingFromStopped(false)
            end
            if self.getUnitWaypointBehavior().isMovingFromStopped() && self.isVisible()
                ::Org::Allbinary::Media::Audio::SecondaryPlayerQueueFactory.getInstance().add(@moveSoundInterface)
            end
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "move", e)
        end
    end
    java_overload :move, 0
    

    def allStop()
        velocityProperties = self.getVehicleProperties().getVelocityProperties()
        velocityProperties.getVelocityXBasicDecimalP().setint(0)
        velocityProperties.getVelocityYBasicDecimalP().setint(0)
    end
    java_overload :allStop, 0
    

    def paint(graphics)
        if self.isVisible()
            UnitLayer.superclass.java_super_method(:paint, 1).bind(self).call(graphics)
            viewPosition = self.getViewPosition()
            viewX = viewPosition.getX()
            viewY = viewPosition.getY()
            @decalAnimation.paintXY(graphics, viewX, viewY)
            @rangeAnimation.paintXY(graphics, viewX, viewY)
            @sensorRangeAnimation.paintXY(graphics, viewX, viewY)
            @damageFloatersPaintableInterface.paint(graphics)
            @healthBar.paint(graphics)
            @captionAnimationHelper.paintXY(graphics, viewX, viewY)
            @pathAnimation.paintXY(graphics, viewX, viewY)
            @resourceAnimation.paintXY(graphics, viewX, viewY)
        end
    end
    java_overload :paint, 1
    

    # throws Exception
    def onBuildingEvent(event)
        buildingLayer = event.getRtsLayer()
        self.getUnitWaypointBehavior().moveAwayFromBuilding(buildingLayer)
    end
    java_overload :onBuildingEvent, 1
    

    def getVehicleProperties()
        return @vehicleProperties
    end
    java_overload :getVehicleProperties, 0
    

    # throws Exception
    def damage(damage, damageType)
        UnitLayer.superclass.java_super_method(:damage, 2).bind(self).call(damage, damageType)
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
    

    # throws Exception
    def setDestroyed(destroyed)
        @logUtil.putF(@commonStrings.START, self, "setDestroyed")
        UnitLayer.superclass.java_super_method(:setDestroyed, 1).bind(self).call(destroyed)
        if self.isDestroyed()
            ::Org::Allbinary::Game::Layer::Waypoint::Event::WaypointEventHandlerFactory.getInstance(self.getGroupInterface()[0]).removeListener(self.getUnitWaypointBehavior())
            ::Org::Allbinary::Game::Tracking::TrackingEventHandler.getInstance().removeListener(self)
            ::Org::Allbinary::Game::Layer::Building::Event::BuildingEventHandler.getInstance().removeListener(self)
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
    

    def getLoad()
        return @resourceLoad
    end
    java_overload :getLoad, 0
    

    # throws Exception
    def clearResourceAnimation()
        @resourceAnimation = ::Org::Allbinary::Animation::NullIndexedAnimationFactory.getFactoryInstance().getInstance(0)
    end
    java_overload :clearResourceAnimation, 0
    

    # throws Exception
    def setLoad(resource)
        if resource > 0
            @resourceAnimation = @initResourceAnimation
        else
            self.clearResourceAnimation()
        end
        @resourceLoad = resource
    end
    java_overload :setLoad, 1
    

    def addLoad(resource)
        @resourceLoad += resource
    end
    java_overload :addLoad, 1
    

    # throws Exception
    def handleCost(ownerLayer)
        if self.getLoad() > 0
            @CAPITAL_EVENT.setValue(self.getLoad())
            ::Org::Allbinary::Game::Layer::Capital::Event::CapitalEventHandlerFactory.getInstance(ownerLayer.getGroupInterface()[0]).fireEvent(@CAPITAL_EVENT)
            self.setLoad(0)
        end
    end
    java_overload :handleCost, 1
    

    def createHudPaintable()
        rtsLayerHudPaintable = ::Org::Allbinary::Game::Layer::RTSLayerHudPaintable.getInstance()
        rtsLayerHudPaintable.setBasicColorP(@allBinaryGameLayerManagerP.getForegroundBasicColor())
        rtsLayerHudPaintable.setRtsLayer(self)
        return rtsLayerHudPaintable
    end
    java_overload :createHudPaintable, 0
    

    def getHudPaintable()
        rtsLayerHudPaintable = ::Org::Allbinary::Game::Layer::RTSLayerHudPaintable.getInstance()
        return rtsLayerHudPaintable
    end
    java_overload :getHudPaintable, 0
    

    def getType()
        return 1
    end
    java_overload :getType, 0
    

    def self.getStaticType()
        return 1
    end
    

    def getUnitWaypointBehavior()
        return self.getWaypointBehavior()
    end
    java_overload :getUnitWaypointBehavior, 0
    

    def getTrackingEvent()
        return @trackingEvent
    end
    java_overload :getTrackingEvent, 0
    

    def getCaptionAnimationHelper()
        return @captionAnimationHelper
    end
    java_overload :getCaptionAnimationHelper, 0
    

    def isSelfUpgradeable()
        return false
    end
    java_overload :isSelfUpgradeable, 0
    

    def getMaxResourceLoad()
        return @maxResourceLoad
    end
    java_overload :getMaxResourceLoad, 0
    

    def self.getPartialpositionlist()
        return @@partialPositionList
    end

    def self.partialPositionList()
        UnitLayer.java_static_fields unless @java_static_fields_started
        return defined?(@@partialPositionList) ? @@partialPositionList : nil
    end

    def self.partialPositionList=(value)
        UnitLayer.java_static_fields unless @java_static_fields_started
        @@partialPositionList = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:SENSOR_RANGE_MULTIPLIER, 6)
        const_set(:MOVE, "Moving")
        begin
            @@partialPositionList = ::Org::Allbinary::Util::BasicArrayListS.new(4)
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "UnitLayer"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:SENSOR_RANGE_MULTIPLIER, :MOVE].include?(name)
        end
        super
    end
end

module ::Javax; module Microedition; module Lcdui; autoload :Canvas, "javax/microedition/lcdui/Canvas" unless const_defined?(:Canvas, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; autoload :J2MEUtil, "org/allbinary/J2MEUtil" unless const_defined?(:J2MEUtil, false); end; end
module ::Org; module Allbinary; module Ag; module Weapon; module Media; module Audio; autoload :ExplosionBasicSound, "org/allbinary/ag/weapon/media/audio/ExplosionBasicSound" unless const_defined?(:ExplosionBasicSound, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Animation; autoload :Animation, "org/allbinary/animation/Animation" unless const_defined?(:Animation, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :AnimationInterfaceFactoryInterface, "org/allbinary/animation/AnimationInterfaceFactoryInterface" unless const_defined?(:AnimationInterfaceFactoryInterface, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :FeaturedAnimationInterfaceFactoryInterfaceFactory, "org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory" unless const_defined?(:FeaturedAnimationInterfaceFactoryInterfaceFactory, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :IndexedAnimation, "org/allbinary/animation/IndexedAnimation" unless const_defined?(:IndexedAnimation, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :NullAnimationFactory, "org/allbinary/animation/NullAnimationFactory" unless const_defined?(:NullAnimationFactory, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :NullIndexedAnimationFactory, "org/allbinary/animation/NullIndexedAnimationFactory" unless const_defined?(:NullIndexedAnimationFactory, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :ProceduralAnimationInterfaceFactoryInterface, "org/allbinary/animation/ProceduralAnimationInterfaceFactoryInterface" unless const_defined?(:ProceduralAnimationInterfaceFactoryInterface, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :RotationAnimation, "org/allbinary/animation/RotationAnimation" unless const_defined?(:RotationAnimation, false); end; end; end
module ::Org; module Allbinary; module Animation; module Caption; autoload :CaptionAnimationHelper, "org/allbinary/animation/caption/CaptionAnimationHelper" unless const_defined?(:CaptionAnimationHelper, false); end; end; end; end
module ::Org; module Allbinary; module Animation; module Caption; autoload :CaptionAnimationHelperBase, "org/allbinary/animation/caption/CaptionAnimationHelperBase" unless const_defined?(:CaptionAnimationHelperBase, false); end; end; end; end
module ::Org; module Allbinary; module Animation; module Vector; autoload :AdjustedCircleAnimation, "org/allbinary/animation/vector/AdjustedCircleAnimation" unless const_defined?(:AdjustedCircleAnimation, false); end; end; end; end
module ::Org; module Allbinary; module Direction; autoload :Direction, "org/allbinary/direction/Direction" unless const_defined?(:Direction, false); end; end; end
module ::Org; module Allbinary; module Game; module Combat; module Damage; autoload :DamageFloaters, "org/allbinary/game/combat/damage/DamageFloaters" unless const_defined?(:DamageFloaters, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Combat; module Damage; autoload :PtsDamageFloaters, "org/allbinary/game/combat/damage/PtsDamageFloaters" unless const_defined?(:PtsDamageFloaters, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Combat; module Weapon; autoload :WeaponProperties, "org/allbinary/game/combat/weapon/WeaponProperties" unless const_defined?(:WeaponProperties, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :Features, "org/allbinary/game/configuration/feature/Features" unless const_defined?(:Features, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :GameFeatureFactory, "org/allbinary/game/configuration/feature/GameFeatureFactory" unless const_defined?(:GameFeatureFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Graphics; module Hud; autoload :BasicHudFactory, "org/allbinary/game/graphics/hud/BasicHudFactory" unless const_defined?(:BasicHudFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Health; autoload :Health, "org/allbinary/game/health/Health" unless const_defined?(:Health, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Health; autoload :HealthBar, "org/allbinary/game/health/HealthBar" unless const_defined?(:HealthBar, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Health; autoload :HealthBarTwodAnimation, "org/allbinary/game/health/HealthBarTwodAnimation" unless const_defined?(:HealthBarTwodAnimation, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Identification; autoload :Group, "org/allbinary/game/identification/Group" unless const_defined?(:Group, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Identification; autoload :GroupCommonFactory, "org/allbinary/game/identification/GroupCommonFactory" unless const_defined?(:GroupCommonFactory, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Input; module Event; autoload :GameKeyEvent, "org/allbinary/game/input/event/GameKeyEvent" unless const_defined?(:GameKeyEvent, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Input; module Event; autoload :GameKeyEventFactory, "org/allbinary/game/input/event/GameKeyEventFactory" unless const_defined?(:GameKeyEventFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Input; module Event; autoload :GameKeyEventUtil, "org/allbinary/game/input/event/GameKeyEventUtil" unless const_defined?(:GameKeyEventUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Input; module Form; autoload :VisibleCellPositionsSingleton, "org/allbinary/game/input/form/VisibleCellPositionsSingleton" unless const_defined?(:VisibleCellPositionsSingleton, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Input; module Form; autoload :WaypointRTSFormInput, "org/allbinary/game/input/form/WaypointRTSFormInput" unless const_defined?(:WaypointRTSFormInput, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :AdvancedRTSProperties, "org/allbinary/game/layer/AdvancedRTSProperties" unless const_defined?(:AdvancedRTSProperties, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :AllBinaryGameLayerManager, "org/allbinary/game/layer/AllBinaryGameLayerManager" unless const_defined?(:AllBinaryGameLayerManager, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :AllBinaryTiledLayer, "org/allbinary/game/layer/AllBinaryTiledLayer" unless const_defined?(:AllBinaryTiledLayer, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :LayerCaptionResources, "org/allbinary/game/layer/LayerCaptionResources" unless const_defined?(:LayerCaptionResources, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :LinePathRelativeAnimation, "org/allbinary/game/layer/LinePathRelativeAnimation" unless const_defined?(:LinePathRelativeAnimation, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :PathAnimation, "org/allbinary/game/layer/PathAnimation" unless const_defined?(:PathAnimation, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :PathFindingLayerInterface, "org/allbinary/game/layer/PathFindingLayerInterface" unless const_defined?(:PathFindingLayerInterface, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :RTSLayer2LogHelper, "org/allbinary/game/layer/RTSLayer2LogHelper" unless const_defined?(:RTSLayer2LogHelper, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :RTSLayer2SelectedLogHelper, "org/allbinary/game/layer/RTSLayer2SelectedLogHelper" unless const_defined?(:RTSLayer2SelectedLogHelper, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :RTSLayerEvent, "org/allbinary/game/layer/RTSLayerEvent" unless const_defined?(:RTSLayerEvent, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :RTSLayerHudPaintable, "org/allbinary/game/layer/RTSLayerHudPaintable" unless const_defined?(:RTSLayerHudPaintable, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :RTSLayerLogHelper, "org/allbinary/game/layer/RTSLayerLogHelper" unless const_defined?(:RTSLayerLogHelper, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :RTSLayerSelectedLogHelper, "org/allbinary/game/layer/RTSLayerSelectedLogHelper" unless const_defined?(:RTSLayerSelectedLogHelper, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :RTSPlayerLayerInterface, "org/allbinary/game/layer/RTSPlayerLayerInterface" unless const_defined?(:RTSPlayerLayerInterface, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :SelectionHudPaintable, "org/allbinary/game/layer/SelectionHudPaintable" unless const_defined?(:SelectionHudPaintable, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :SensorActionFactory, "org/allbinary/game/layer/SensorActionFactory" unless const_defined?(:SensorActionFactory, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :SteeringVisitor, "org/allbinary/game/layer/SteeringVisitor" unless const_defined?(:SteeringVisitor, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :TiledLayerUtil, "org/allbinary/game/layer/TiledLayerUtil" unless const_defined?(:TiledLayerUtil, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :VehicleFrictionProperties, "org/allbinary/game/layer/VehicleFrictionProperties" unless const_defined?(:VehicleFrictionProperties, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :VehicleProperties, "org/allbinary/game/layer/VehicleProperties" unless const_defined?(:VehicleProperties, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :WaypointBehaviorBase, "org/allbinary/game/layer/WaypointBehaviorBase" unless const_defined?(:WaypointBehaviorBase, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Building; autoload :BuildingLayer, "org/allbinary/game/layer/building/BuildingLayer" unless const_defined?(:BuildingLayer, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Building; module Event; autoload :BuildingEventHandler, "org/allbinary/game/layer/building/event/BuildingEventHandler" unless const_defined?(:BuildingEventHandler, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Capital; module Event; autoload :CapitalEvent, "org/allbinary/game/layer/capital/event/CapitalEvent" unless const_defined?(:CapitalEvent, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Capital; module Event; autoload :CapitalEventHandlerFactory, "org/allbinary/game/layer/capital/event/CapitalEventHandlerFactory" unless const_defined?(:CapitalEventHandlerFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Geographic; module Map; autoload :LayerPartialCellPositionsUtil, "org/allbinary/game/layer/geographic/map/LayerPartialCellPositionsUtil" unless const_defined?(:LayerPartialCellPositionsUtil, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Special; autoload :SpecialDownGameInputProcessor, "org/allbinary/game/layer/special/SpecialDownGameInputProcessor" unless const_defined?(:SpecialDownGameInputProcessor, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Special; autoload :SpecialFireGameInputProcessor, "org/allbinary/game/layer/special/SpecialFireGameInputProcessor" unless const_defined?(:SpecialFireGameInputProcessor, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Special; autoload :SpecialLeftGameInputProcessor, "org/allbinary/game/layer/special/SpecialLeftGameInputProcessor" unless const_defined?(:SpecialLeftGameInputProcessor, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Special; autoload :SpecialRightGameInputProcessor, "org/allbinary/game/layer/special/SpecialRightGameInputProcessor" unless const_defined?(:SpecialRightGameInputProcessor, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Special; autoload :SpecialUpGameInputProcessor, "org/allbinary/game/layer/special/SpecialUpGameInputProcessor" unless const_defined?(:SpecialUpGameInputProcessor, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Waypoint; autoload :MultipassNoCacheWaypoint, "org/allbinary/game/layer/waypoint/MultipassNoCacheWaypoint" unless const_defined?(:MultipassNoCacheWaypoint, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Waypoint; autoload :NoCacheWaypoint, "org/allbinary/game/layer/waypoint/NoCacheWaypoint" unless const_defined?(:NoCacheWaypoint, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Waypoint; autoload :WaypointBase, "org/allbinary/game/layer/waypoint/WaypointBase" unless const_defined?(:WaypointBase, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Waypoint; module Event; autoload :WaypointEventHandlerFactory, "org/allbinary/game/layer/waypoint/event/WaypointEventHandlerFactory" unless const_defined?(:WaypointEventHandlerFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Game; module Multiplayer; module Layer; autoload :RemoteInfo, "org/allbinary/game/multiplayer/layer/RemoteInfo" unless const_defined?(:RemoteInfo, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Part; module Weapon; autoload :BasicWeaponPart, "org/allbinary/game/part/weapon/BasicWeaponPart" unless const_defined?(:BasicWeaponPart, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Part; module Weapon; autoload :SalvoInterface, "org/allbinary/game/part/weapon/SalvoInterface" unless const_defined?(:SalvoInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Physics; module Velocity; autoload :VelocityProperties, "org/allbinary/game/physics/velocity/VelocityProperties" unless const_defined?(:VelocityProperties, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Tracking; autoload :TrackingEvent, "org/allbinary/game/tracking/TrackingEvent" unless const_defined?(:TrackingEvent, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Tracking; autoload :TrackingEventHandler, "org/allbinary/game/tracking/TrackingEventHandler" unless const_defined?(:TrackingEventHandler, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; autoload :CellPositionFactory, "org/allbinary/graphics/CellPositionFactory" unless const_defined?(:CellPositionFactory, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :GPoint, "org/allbinary/graphics/GPoint" unless const_defined?(:GPoint, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :Rectangle, "org/allbinary/graphics/Rectangle" unless const_defined?(:Rectangle, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory" unless const_defined?(:BasicColorFactory, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Paint; autoload :NullPaintable, "org/allbinary/graphics/paint/NullPaintable" unless const_defined?(:NullPaintable, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Paint; autoload :Paintable, "org/allbinary/graphics/paint/Paintable" unless const_defined?(:Paintable, false); end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager" unless const_defined?(:AllBinaryLayerManager, false); end; end; end
module ::Org; module Allbinary; module Layer; autoload :Layer, "org/allbinary/layer/Layer" unless const_defined?(:Layer, false); end; end; end
module ::Org; module Allbinary; module Layer; autoload :LayerInterfaceFactoryInterface, "org/allbinary/layer/LayerInterfaceFactoryInterface" unless const_defined?(:LayerInterfaceFactoryInterface, false); end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :BasicDecimal, "org/allbinary/logic/math/BasicDecimal" unless const_defined?(:BasicDecimal, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :SmallIntegerSingletonFactory, "org/allbinary/logic/math/SmallIntegerSingletonFactory" unless const_defined?(:SmallIntegerSingletonFactory, false); end; end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :AngleFactory, "org/allbinary/math/AngleFactory" unless const_defined?(:AngleFactory, false); end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :AngleInfo, "org/allbinary/math/AngleInfo" unless const_defined?(:AngleInfo, false); end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :FrameUtil, "org/allbinary/math/FrameUtil" unless const_defined?(:FrameUtil, false); end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :LayerDistanceUtil, "org/allbinary/math/LayerDistanceUtil" unless const_defined?(:LayerDistanceUtil, false); end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :NamedAngle, "org/allbinary/math/NamedAngle" unless const_defined?(:NamedAngle, false); end; end; end
module ::Org; module Allbinary; module Media; module Audio; autoload :AttackSound, "org/allbinary/media/audio/AttackSound" unless const_defined?(:AttackSound, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Audio; autoload :SecondaryPlayerQueueFactory, "org/allbinary/media/audio/SecondaryPlayerQueueFactory" unless const_defined?(:SecondaryPlayerQueueFactory, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Audio; autoload :Sound, "org/allbinary/media/audio/Sound" unless const_defined?(:Sound, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :BasicGeographicMap, "org/allbinary/media/graphics/geography/map/BasicGeographicMap" unless const_defined?(:BasicGeographicMap, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :BasicGeographicMapCellPositionFactory, "org/allbinary/media/graphics/geography/map/BasicGeographicMapCellPositionFactory" unless const_defined?(:BasicGeographicMapCellPositionFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellHistory, "org/allbinary/media/graphics/geography/map/GeographicMapCellHistory" unless const_defined?(:GeographicMapCellHistory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellPosition, "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition" unless const_defined?(:GeographicMapCellPosition, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCompositeInterface, "org/allbinary/media/graphics/geography/map/GeographicMapCompositeInterface" unless const_defined?(:GeographicMapCompositeInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :SimpleGeographicMapCellPositionFactory, "org/allbinary/media/graphics/geography/map/SimpleGeographicMapCellPositionFactory" unless const_defined?(:SimpleGeographicMapCellPositionFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; module Drop; autoload :DropCellPositionHistory, "org/allbinary/media/graphics/geography/map/drop/DropCellPositionHistory" unless const_defined?(:DropCellPositionHistory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; module Racetrack; autoload :RaceTrackGeographicMap, "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackGeographicMap" unless const_defined?(:RaceTrackGeographicMap, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonPhoneStrings, "org/allbinary/string/CommonPhoneStrings" unless const_defined?(:CommonPhoneStrings, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :ABHashtable, "org/allbinary/util/ABHashtable" unless const_defined?(:ABHashtable, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListS, "org/allbinary/util/BasicArrayListS" unless const_defined?(:BasicArrayListS, false); end; end; end
module ::Org; module Allbinary; module View; autoload :ViewPositionBase, "org/allbinary/view/ViewPositionBase" unless const_defined?(:ViewPositionBase, false); end; end; end
autoload :CollidableUnitBehavior, "org/allbinary/game/layer/unit/CollidableUnitBehavior" unless const_defined?(:CollidableUnitBehavior, false)
autoload :UnitWaypointBehavior, "org/allbinary/game/layer/unit/UnitWaypointBehavior" unless const_defined?(:UnitWaypointBehavior, false)
autoload :UnitWaypointBehavior2, "org/allbinary/game/layer/unit/UnitWaypointBehavior2" unless const_defined?(:UnitWaypointBehavior2, false)

begin
    UnitLayer.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

