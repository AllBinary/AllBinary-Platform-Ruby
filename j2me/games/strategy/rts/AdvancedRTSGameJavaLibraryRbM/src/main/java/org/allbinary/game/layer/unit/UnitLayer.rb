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

# require "javax/microedition/lcdui/Canvas"
# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/game/layer/AdvancedRTSGameLayer"
require "org/allbinary/game/layer/building/event/BuildingEventListenerInterface"
require "org/allbinary/game/tracking/TrackingEventListenerInterface"

class UnitLayer < AdvancedRTSGameLayer
    include BuildingEventListenerInterface
    include TrackingEventListenerInterface
    attr_accessor :basicColorFactory, :groupCommonFactory, :layerPartialCellPositionsUtil, :layerDistanceUtil, :angleFactory, :cellPositionFactory, :maxResourceLoad, :vehicleProperties, :accelerationBasicDecimal, :decelerationBasicDecimal, :trackingEvent, :damageFloaters, :damageFloatersPaintableInterface, :healthBar, :moveSoundInterface, :initResourceAnimation, :resourceAnimation, :initPathAnimation, :pathAnimation, :captionAnimationHelper, :decalAnimation, :waypointLayerInterfaceFactoryInterface, :resourceLoad, :weaponRange, :rtsLogHelper, :rotationAnimationInterfaceP, :movementAngle, :steeringInsideGeographicMapCellPosition, :sensorGeographicMapCellPositionList, :CAPITAL_EVENT

    def initialize_fields
        @basicColorFactory = BasicColorFactory.getInstance()
        @groupCommonFactory = GroupCommonFactory.getInstance()
        @layerPartialCellPositionsUtil = LayerPartialCellPositionsUtil.getInstance()
        @layerDistanceUtil = LayerDistanceUtil.getInstance()
        @angleFactory = AngleFactory.getInstance()
        @cellPositionFactory = CellPositionFactory.getInstance()
        @maxResourceLoad = nil
        @vehicleProperties = nil
        @accelerationBasicDecimal = BasicDecimal.new(1600)
        @decelerationBasicDecimal = BasicDecimal.new(-1000)
        @trackingEvent = nil
        @damageFloaters = nil
        @damageFloatersPaintableInterface = nil
        @healthBar = nil
        @moveSoundInterface = nil
        @initResourceAnimation = nil
        @resourceAnimation = NullIndexedAnimationFactory.getFactoryInstance().getInstance(0)
        @initPathAnimation = nil
        @pathAnimation = NullAnimationFactory.getFactoryInstance().getInstance(0)
        @captionAnimationHelper = CaptionAnimationHelper.new(FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get(CaptionResources.getInstance().RESOURCE).getInstance(0), -23, -25, 6, 0)
        @decalAnimation = nil
        @waypointLayerInterfaceFactoryInterface = nil
        @resourceLoad = 0
        @weaponRange = 0
        @rtsLogHelper = RTSLayerLogHelper.getInstance()
        @rotationAnimationInterfaceP = nil
        @movementAngle = @angleFactory.NOT_ANGLE
        @steeringInsideGeographicMapCellPosition = SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
        @sensorGeographicMapCellPositionList = BasicArrayListD.new()
        @CAPITAL_EVENT = CapitalEvent.new(self)
    end
    

    def initialize(remoteInfo, parentLayer, advancedRTSProperties, groupInterface, rootName, name, vehicleProperties, healthInterface, maxResourceLoad, moveSoundInterface, waypointLayerInterfaceFactoryInterface, animationInterfaceFactoryInterface, emptyAnimationInterfaceFactoryInterface, baseAnimationInterfaceFactoryInterface, buildAnimationInterfaceFactoryInterface, verticleBuildAnimationInterfaceFactoryInterface, decalAnimationInterfaceFactoryInterface, resourceAnimationInterfaceFactoryInterface, proceduralAnimationInterfaceFactoryInterface, rectangle, direction, x, y, z, viewPosition)
        super(remoteInfo, parentLayer, advancedRTSProperties, groupInterface, rootName, name, healthInterface, WaypointRTSFormInput.new(groupInterface, true), animationInterfaceFactoryInterface, emptyAnimationInterfaceFactoryInterface, baseAnimationInterfaceFactoryInterface, buildAnimationInterfaceFactoryInterface, verticleBuildAnimationInterfaceFactoryInterface, proceduralAnimationInterfaceFactoryInterface, rectangle, x, y, viewPosition)
        initialize_fields
        self.setCollidableInferface(CollidableUnitBehavior.new(true))
        @waypointLayerInterfaceFactoryInterface = waypointLayerInterfaceFactoryInterface
        @maxResourceLoad = maxResourceLoad.to_i
        @moveSoundInterface = moveSoundInterface
        if Features.getInstance().isFeature(GameFeatureFactory.getInstance().DAMAGE_FLOATERS)
            @damageFloaters = PtsDamageFloaters.new(self)
            @damageFloatersPaintableInterface = @damageFloaters
        else
            @damageFloatersPaintableInterface = NullPaintable.getInstance()
            @damageFloaters = DamageFloaters.new()
        end
        if Features.getInstance().isFeature(GameFeatureFactory.getInstance().HEALTH_BARS)
            @healthBar = HealthBar.new(self, self.getHealthInterface(), HealthBarTwodAnimation.new(self, BasicHudFactory.getInstance().BOTTOMLEFT), -1)
        else
            @healthBar = NullPaintable.getInstance()
        end
        @decalAnimation = decalAnimationInterfaceFactoryInterface.getInstance(0)
        @initResourceAnimation = resourceAnimationInterfaceFactoryInterface.getInstance(0)
        @initResourceAnimation.setFrameByDirection(direction)
        @decalAnimation.setFrameByDirection(direction)
        @rotationAnimationInterfaceP = @indexedButShouldBeRotationAnimationInterface
        @rotationAnimationInterfaceP.setFrameByDirection(direction)
        self.setMaxLevel(12)
        @vehicleProperties = vehicleProperties
        @trackingEvent = TrackingEvent.new(self)
        @initPathAnimation = PathAnimation.new(self, LinePathRelativeAnimation.getInstance())
    end
    

    # throws Exception
    def setAllBinaryGameLayerManager(allBinaryGameLayerManager)
        super(allBinaryGameLayerManager)
        @initPathAnimation.setAllBinaryGameLayerManager(allBinaryGameLayerManager)
    end
    

    # throws Exception
    def updateWaypointBehavior(geographicMapInterface)
        hashtable = StdUtil.getInstance().createHashtable()
        hashtable.put(@groupCommonFactory.ID, self.getGroupInterface())
        hashtable.put(Layer::ID, self)
        hashtable.put(AllBinaryGameLayerManager::ID, @allBinaryGameLayerManagerP)
        self.setWaypointBehavior(UnitWaypointBehavior2.new(self, @waypointLayerInterfaceFactoryInterface.getNextInstance(hashtable, @x, @y, @z)))
        features = Features.getInstance()
        waypoint = (J2MEUtil.isHTML() ? MultipassNoCacheWaypoint.new(self, AttackSound.getInstance()) : NoCacheWaypoint.new(self, AttackSound.getInstance()))
        self.getWaypointBehavior().setWaypoint(waypoint)
        super(geographicMapInterface)
        self.initRangeHack()
    end
    

    # throws Exception
    def construct(rtsPlayerLayerInterface)
        super(rtsPlayerLayerInterface)
        TrackingEventHandler.getInstance().addListenerInterface(self)
        WaypointEventHandlerFactory.getInstance(self.getGroupInterface()[0]).addListenerInterface(self.getUnitWaypointBehavior())
        BuildingEventHandler.getInstance().addListenerInterface(self)
        self.getUnitWaypointBehavior().setCurrentPathGeographicMapCellPosition(self.getCurrentGeographicMapCellPosition())
        self.updateSensorGeographicMapCellPositionList()
        self.getUnitWaypointBehavior().setLastPathGeographicMapCellPosition(self.getUnitWaypointBehavior().getCurrentPathGeographicMapCellPosition())
    end
    

    # throws Exception
    def updateSensorGeographicMapCellPositionList()
        if VisibleCellPositionsSingleton.getInstance().shouldProcess()
            currentGeographicMapCellPosition = self.getCurrentGeographicMapCellPosition()
            @sensorGeographicMapCellPositionList.clear()
            @sensorGeographicMapCellPositionList.add(currentGeographicMapCellPosition)
            sensorRange = @weaponRange * UnitLayer::SENSOR_RANGE_MULTIPLIER
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
    

    def getSensorGeographicMapCellPositionList()
        return @sensorGeographicMapCellPositionList
    end
    

    def select()
        @pathAnimation = @initPathAnimation
        super()
    end
    

    def deselect()
        @pathAnimation = NullAnimationFactory.getFactoryInstance().getInstance(0)
        super()
    end
    

    def setSelected(selected)
        super(selected)
        if selected
            if @debug
                @rtsLogHelper = RTSLayerSelectedLogHelper.getInstance()
            end
            @rtsLayer2LogHelper = RTSLayer2SelectedLogHelper.getInstance()
        else
            if @debug
                @rtsLogHelper = RTSLayerLogHelper.getInstance()
            end
            @rtsLayer2LogHelper = RTSLayer2LogHelper.getInstance()
        end
    end
    

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
    

    # throws Exception
    def init(geographicMapCellHistory, geographicMapCellPositionBasicArrayList)
        geographicMapCellHistory.trackAll(geographicMapCellPositionBasicArrayList)
    end
    

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
    

    # throws Exception
    def onMovementFound(trackingEvent)
        layerInterface = trackingEvent.getLayerInterface()
        if layerInterface.getGroupInterface()[0] != self.getGroupInterface()[0]
            self.getUnitWaypointBehavior().getPossibleTargetList().add(layerInterface)
        end
    end
    

    def initRangeHack()
        basicWeaponPart = self.getPartInterfaceArray()[0]
        weaponProperties = basicWeaponPart.getWeaponProperties()
        @weaponRange = weaponProperties.getRange()
        @initRangeAnimation = AdjustedCircleAnimation.createW(@weaponRange, @weaponRange, self.getWidth(), @basicColorFactory.GREEN)
        sensorRange = @weaponRange * UnitLayer::SENSOR_RANGE_MULTIPLIER
        @initSensorRangeAnimation = AdjustedCircleAnimation.createW(sensorRange, sensorRange, self.getWidth(), @basicColorFactory.RED)
        self.getUnitWaypointBehavior().initRange(@weaponRange)
        @fireTimeHelper.delay = ((weaponProperties.getReloadTime()).to_i)
    end
    

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
                SecondaryPlayerQueueFactory.getInstance().add(ExplosionBasicSound.getInstance())
                @shakeListener.onSmallShakeEvent()
                @vibration.vibrate(@duration, 0, 0)
                self.setReadyForExplosion(true)
            end
        else
            super(allBinaryLayerManager)
        end
        @captionAnimationHelper.tick()
        self.getUnitWaypointBehavior().processTick(allBinaryLayerManager)
    end
    

    def teleportTo(geographicMapCellPosition)
        point = geographicMapCellPosition.getMidPoint()
        self.setPosition(point.getX() - self.getHalfWidth(), point.getY() - self.getHalfHeight(), @z)
    end
    

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
    

    # throws Exception
    def fire(layerManager, gameKeyEvent)
        if @fireTimeHelper.isTimeTNT()
            self.fireAll(layerManager)
        else
            self.reload()
        end
    end
    

    # throws Exception
    def left()
        @initResourceAnimation.previousRotation()
        @decalAnimation.previousRotation()
        @rotationAnimationInterfaceP.previousRotation()
    end
    

    # throws Exception
    def right()
        @initResourceAnimation.nextRotation()
        @decalAnimation.nextRotation()
        @rotationAnimationInterfaceP.nextRotation()
    end
    

    def down()
        velocityProperties = self.getVehicleProperties().getVelocityProperties()
        if !velocityProperties.isOverXYMaxForwardVelocity()
            self.accelerate(@decelerationBasicDecimal)
        end
    end
    

    def up()
        velocityProperties = self.getVehicleProperties().getVelocityProperties()
        if !velocityProperties.isOverXYMaxForwardVelocity()
            self.accelerate(@accelerationBasicDecimal)
        end
    end
    

    def initInputProcessors()
        @inputProcessorArray[Canvas::RIGHT] = SpecialRightGameInputProcessor.new(self)
        @inputProcessorArray[Canvas::LEFT] = SpecialLeftGameInputProcessor.new(self)
        @inputProcessorArray[Canvas::KEY_NUM0] = SpecialFireGameInputProcessor.new(self)
        @inputProcessorArray[Canvas::KEY_POUND] = @inputProcessorArray[Canvas::KEY_NUM0]
        @inputProcessorArray[Canvas::DOWN] = SpecialDownGameInputProcessor.new(self)
        @inputProcessorArray[Canvas::UP] = SpecialUpGameInputProcessor.new(self)
        super()
    end
    

    # throws Exception
    def processInput(layerManager)
        list = self.getGameKeyEventList()
        size = list.size()
        (0...size).each do |index|
            anyType = list.get(index)
            key = GameKeyEventUtil.getKey(anyType)
            @inputProcessorArray[key].processEvent(layerManager, GameKeyEvent::NONE)
        end
        list.clear()
        self.groundFriction()
        self.move()
    end
    

    def accelerate(accelerate)
        self.getVehicleProperties().getVelocityProperties().addVelocityi(accelerate.getUnscaled(), (@rotationAnimationInterfaceP.getAngleInfoP().getAngle()).to_i, 90)
    end
    

    # throws Exception
    def fireAll(layerManager)
        angleInfo = @rotationAnimationInterfaceP.getAngleInfoP()
        angle = ((angleInfo.getAngle() + @slightAngle)).to_i
        @hashtable.put(SmallIntegerSingletonFactory.getInstance().getAt(1), SmallIntegerSingletonFactory.getInstance().getAt((AngleFactory.getInstance().getAt(angle).getValue()).to_i))
        salvoInterface = self.getPartInterfaceArray()[0]
        salvoInterface.process(layerManager, (((angle).to_i + 32768) % 65536 - 32768), (((90).to_i + 32768) % 65536 - 32768))
    end
    

    def downgrade()
        if self.getLevel() > 1
            super()
        end
    end
    

    def upgrade()
        super()
        self.initRangeHack()
    end
    

    def groundFriction()
        vehicleFrictionProperties = self.getVehicleProperties().getVehicleFrictionProperties()
        self.getVehicleProperties().getVehicleFrictionProperties().friction(self.getVehicleProperties().getVelocityProperties(), vehicleFrictionProperties.getTireFrictionNominator())
    end
    

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
    

    # throws Exception
    def trackToDXY(dx, dy)
        angleOfTarget = 0
        self.trackToDXYTargetAngle(dx, dy, angleOfTarget)
    end
    

    # throws Exception
    def turnTo(dx, dy, targetAngle)
        waypointBehaviorBase = @waypointBehaviorBase
        nextUnvisitedPathGeographicMapCellPosition = waypointBehaviorBase.getNextUnvisitedPathGeographicMapCellPosition()
        evading = false
        if self.getUnitWaypointBehavior().getSensorAction() == SensorActionFactory.getInstance().EVADE
            @rtsLogHelper.evade(self)
            evading = true
            targetAngle += 180
        end
        angleInfo = @rotationAnimationInterfaceP.getAngleInfoP()
        angle = FrameUtil.getInstance().adjustAngleToFrameAngle(angleInfo.getAngle() - 270)
        @rtsLogHelper.turnTo(self, dx, dy, angleInfo, angle, @movementAngle, evading, targetAngle)
        gameKeyEventFactory = GameKeyEventFactory.getInstance()
        if dx == 0 && dy == 0
            @rtsLogHelper.doneMoving(self)
            return true
        elsif ((@movementAngle.getValue()).to_i) == angle
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
            if nextUnvisitedPathGeographicMapCellPosition != SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
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
                    self.getGameKeyEventList().add(gameKeyEventFactory.getInstanceForKey(self, Canvas::RIGHT))
                else
                    @rtsLogHelper.rotateLeft(self)
                    self.getGameKeyEventList().add(gameKeyEventFactory.getInstanceForKey(self, Canvas::LEFT))
                end
                return true
            else
                @rtsLogHelper.noRotation(self)
            end
            return false
        end
    end
    

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
    

    # throws Exception
    def fireOrMove()
        gameKeyEventFactory = GameKeyEventFactory.getInstance()
        if self.getUnitWaypointBehavior().needToMove()
            @rtsLayer2LogHelper.steeringUp(self)
            if @showMoreCaptionStates && !@captionAnimationHelper.isShowing()
                @captionAnimationHelper.update(UnitLayer::MOVE, @basicColorFactory.GREEN)
            end
            self.getGameKeyEventList().add(gameKeyEventFactory.getInstanceForKey(self, Canvas::UP))
        else
            @captionAnimationHelper.update(CommonPhoneStrings.getInstance().FIRE, @basicColorFactory.RED)
            @rtsLayer2LogHelper.steeringFireOrStop(self)
            self.allStop()
            self.getGameKeyEventList().add(gameKeyEventFactory.getInstanceForKey(self, Canvas::KEY_NUM0))
            TrackingEventHandler.getInstance().fireEvent(self.getTrackingEvent())
        end
    end
    

    def move()
        begin
            velocityProperties = self.getVehicleProperties().getVelocityProperties()
            velocityXScaled = (velocityProperties.getVelocityXBasicDecimalP().getScaled()).to_i
            velocityYScaled = (velocityProperties.getVelocityYBasicDecimalP().getScaled()).to_i
            self.getUnitWaypointBehavior().move()
            if velocityXScaled != 0 || velocityYScaled != 0
                self.getUnitWaypointBehavior().setMoving(true)
                geographicMapCompositeInterface = @allBinaryGameLayerManagerP
                geographicMapInterface = geographicMapCompositeInterface.getGeographicMapInterface()[0]
                @layerPartialCellPositionsUtil.getAllDXY(geographicMapInterface, self, velocityXScaled, velocityYScaled, UnitLayer.getPartialpositionlist())
                cellPosition = DropCellPositionHistory.getInstance().getCellPositionWithDrop(UnitLayer.getPartialpositionlist())
                if cellPosition == @cellPositionFactory.NONE
                    tiledLayer = geographicMapInterface.getAllBinaryTiledLayer()
                    tiledLayerUtil = TiledLayerUtil.getInstance()
                    x = @x + velocityXScaled
                    y = @y + velocityYScaled
                    x = tiledLayerUtil.keepOnMapX(tiledLayer, x, self.getWidth())
                    y = tiledLayerUtil.keepOnMapY(tiledLayer, y, self.getHeight())
                    self.setPosition(x, y, @z)
                else
                    allbinaryLayer = DropCellPositionHistory.getInstance().getLayerInterface(cellPosition)
                    self.getUnitWaypointBehavior().setMovingFromStopped(false)
                    self.getUnitWaypointBehavior().addBuildingChase(allbinaryLayer, cellPosition)
                end
            end
            if self.getUnitWaypointBehavior().isMoving()
                TrackingEventHandler.getInstance().fireEvent(self.getTrackingEvent())
            else
                self.getUnitWaypointBehavior().setMovingFromStopped(false)
            end
            if self.getUnitWaypointBehavior().isMovingFromStopped() && self.isVisible()
                SecondaryPlayerQueueFactory.getInstance().add(@moveSoundInterface)
            end
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "move", e)
        end
    end
    

    def allStop()
        velocityProperties = self.getVehicleProperties().getVelocityProperties()
        velocityProperties.getVelocityXBasicDecimalP().setint(0)
        velocityProperties.getVelocityYBasicDecimalP().setint(0)
    end
    

    def paint(graphics)
        if self.isVisible()
            super(graphics)
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
    

    # throws Exception
    def onBuildingEvent(event)
        buildingLayer = event.getRtsLayer()
        self.getUnitWaypointBehavior().moveAwayFromBuilding(buildingLayer)
    end
    

    def getVehicleProperties()
        return @vehicleProperties
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
    

    # throws Exception
    def setDestroyed(destroyed)
        @logUtil.putF(@commonStrings.START, self, "setDestroyed")
        super(destroyed)
        if self.isDestroyed()
            WaypointEventHandlerFactory.getInstance(self.getGroupInterface()[0]).removeListener(self.getUnitWaypointBehavior())
            TrackingEventHandler.getInstance().removeListener(self)
            BuildingEventHandler.getInstance().removeListener(self)
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
    

    def getLoad()
        return @resourceLoad
    end
    

    # throws Exception
    def clearResourceAnimation()
        @resourceAnimation = NullIndexedAnimationFactory.getFactoryInstance().getInstance(0)
    end
    

    # throws Exception
    def setLoad(resource)
        if resource > 0
            @resourceAnimation = @initResourceAnimation
        else
            self.clearResourceAnimation()
        end
        @resourceLoad = resource
    end
    

    def addLoad(resource)
        @resourceLoad += resource
    end
    

    # throws Exception
    def handleCost(ownerLayer)
        if self.getLoad() > 0
            @CAPITAL_EVENT.setValue(self.getLoad())
            CapitalEventHandlerFactory.getInstance(ownerLayer.getGroupInterface()[0]).fireEvent(@CAPITAL_EVENT)
            self.setLoad(0)
        end
    end
    

    def createHudPaintable()
        rtsLayerHudPaintable = RTSLayerHudPaintable.getInstance()
        rtsLayerHudPaintable.setBasicColorP(@allBinaryGameLayerManagerP.getForegroundBasicColor())
        rtsLayerHudPaintable.setRtsLayer(self)
        return rtsLayerHudPaintable
    end
    

    def getHudPaintable()
        rtsLayerHudPaintable = RTSLayerHudPaintable.getInstance()
        return rtsLayerHudPaintable
    end
    

    def getType()
        return UnitLayer.getStaticType()
    end
    

    def self.getStaticType()
        return 1
    end
    

    def getUnitWaypointBehavior()
        return self.getWaypointBehavior()
    end
    

    def getTrackingEvent()
        return @trackingEvent
    end
    

    def getCaptionAnimationHelper()
        return @captionAnimationHelper
    end
    

    def isSelfUpgradeable()
        return false
    end
    

    def getMaxResourceLoad()
        return @maxResourceLoad
    end
    

    def self.getPartialpositionlist()
        return UnitLayer.partialPositionList
    end

    def self.partialPositionList()
        return defined?(@@partialPositionList) ? @@partialPositionList : nil
    end

    def self.partialPositionList=(value)
        @@partialPositionList = value
    end
end

require "org/allbinary/J2MEUtil"
require "org/allbinary/ag/weapon/media/audio/ExplosionBasicSound"
require "org/allbinary/animation/Animation"
require "org/allbinary/animation/AnimationInterfaceFactoryInterface"
require "org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory"
require "org/allbinary/animation/IndexedAnimation"
require "org/allbinary/animation/NullAnimationFactory"
require "org/allbinary/animation/NullIndexedAnimationFactory"
require "org/allbinary/animation/ProceduralAnimationInterfaceFactoryInterface"
require "org/allbinary/animation/RotationAnimation"
require "org/allbinary/animation/caption/CaptionAnimationHelper"
require "org/allbinary/animation/caption/CaptionAnimationHelperBase"
require "org/allbinary/animation/vector/AdjustedCircleAnimation"
require "org/allbinary/direction/Direction"
require "org/allbinary/game/combat/damage/DamageFloaters"
require "org/allbinary/game/combat/damage/PtsDamageFloaters"
require "org/allbinary/game/combat/weapon/WeaponProperties"
require "org/allbinary/game/configuration/feature/Features"
require "org/allbinary/game/configuration/feature/GameFeatureFactory"
require "org/allbinary/game/graphics/hud/BasicHudFactory"
require "org/allbinary/game/health/Health"
require "org/allbinary/game/health/HealthBar"
require "org/allbinary/game/health/HealthBarTwodAnimation"
require "org/allbinary/game/identification/Group"
require "org/allbinary/game/identification/GroupCommonFactory"
require "org/allbinary/game/input/event/GameKeyEvent"
require "org/allbinary/game/input/event/GameKeyEventFactory"
require "org/allbinary/game/input/event/GameKeyEventUtil"
require "org/allbinary/game/input/form/VisibleCellPositionsSingleton"
require "org/allbinary/game/input/form/WaypointRTSFormInput"
require "org/allbinary/game/layer/AdvancedRTSProperties"
require "org/allbinary/game/layer/AllBinaryGameLayerManager"
require "org/allbinary/game/layer/AllBinaryTiledLayer"
require "org/allbinary/game/layer/CaptionResources"
require "org/allbinary/game/layer/LinePathRelativeAnimation"
require "org/allbinary/game/layer/PathAnimation"
require "org/allbinary/game/layer/PathFindingLayerInterface"
require "org/allbinary/game/layer/RTSLayer2LogHelper"
require "org/allbinary/game/layer/RTSLayer2SelectedLogHelper"
require "org/allbinary/game/layer/RTSLayerEvent"
require "org/allbinary/game/layer/RTSLayerHudPaintable"
require "org/allbinary/game/layer/RTSLayerLogHelper"
require "org/allbinary/game/layer/RTSLayerSelectedLogHelper"
require "org/allbinary/game/layer/RTSPlayerLayerInterface"
require "org/allbinary/game/layer/SelectionHudPaintable"
require "org/allbinary/game/layer/SensorActionFactory"
require "org/allbinary/game/layer/SteeringVisitor"
require "org/allbinary/game/layer/TiledLayerUtil"
require "org/allbinary/game/layer/VehicleFrictionProperties"
require "org/allbinary/game/layer/VehicleProperties"
require "org/allbinary/game/layer/WaypointBehaviorBase"
require "org/allbinary/game/layer/building/BuildingLayer"
require "org/allbinary/game/layer/building/event/BuildingEventHandler"
require "org/allbinary/game/layer/capital/event/CapitalEvent"
require "org/allbinary/game/layer/capital/event/CapitalEventHandlerFactory"
require "org/allbinary/game/layer/geographic/map/LayerPartialCellPositionsUtil"
require "org/allbinary/game/layer/special/SpecialDownGameInputProcessor"
require "org/allbinary/game/layer/special/SpecialFireGameInputProcessor"
require "org/allbinary/game/layer/special/SpecialLeftGameInputProcessor"
require "org/allbinary/game/layer/special/SpecialRightGameInputProcessor"
require "org/allbinary/game/layer/special/SpecialUpGameInputProcessor"
require "org/allbinary/game/layer/waypoint/MultipassNoCacheWaypoint"
require "org/allbinary/game/layer/waypoint/NoCacheWaypoint"
require "org/allbinary/game/layer/waypoint/WaypointBase"
require "org/allbinary/game/layer/waypoint/event/WaypointEventHandlerFactory"
require "org/allbinary/game/multiplayer/layer/RemoteInfo"
require "org/allbinary/game/part/weapon/BasicWeaponPart"
require "org/allbinary/game/part/weapon/SalvoInterface"
require "org/allbinary/game/physics/velocity/VelocityProperties"
require "org/allbinary/game/tracking/TrackingEvent"
require "org/allbinary/game/tracking/TrackingEventHandler"
require "org/allbinary/graphics/CellPositionFactory"
require "org/allbinary/graphics/GPoint"
require "org/allbinary/graphics/Rectangle"
require "org/allbinary/graphics/color/BasicColorFactory"
require "org/allbinary/graphics/paint/NullPaintable"
require "org/allbinary/graphics/paint/Paintable"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/layer/AllBinaryLayerManager"
require "org/allbinary/layer/Layer"
require "org/allbinary/layer/LayerInterfaceFactoryInterface"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/math/BasicDecimal"
require "org/allbinary/logic/math/SmallIntegerSingletonFactory"
require "org/allbinary/math/AngleFactory"
require "org/allbinary/math/AngleInfo"
require "org/allbinary/math/FrameUtil"
require "org/allbinary/math/LayerDistanceUtil"
require "org/allbinary/math/NamedAngle"
require "org/allbinary/media/audio/AttackSound"
require "org/allbinary/media/audio/SecondaryPlayerQueueFactory"
require "org/allbinary/media/audio/Sound"
require "org/allbinary/media/graphics/geography/map/BasicGeographicMap"
require "org/allbinary/media/graphics/geography/map/BasicGeographicMapCellPositionFactory"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellHistory"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition"
require "org/allbinary/media/graphics/geography/map/GeographicMapCompositeInterface"
require "org/allbinary/media/graphics/geography/map/SimpleGeographicMapCellPositionFactory"
require "org/allbinary/media/graphics/geography/map/drop/DropCellPositionHistory"
require "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackGeographicMap"
require "org/allbinary/string/CommonPhoneStrings"
require "org/allbinary/util/ABHashtable"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/util/BasicArrayListS"
require "org/allbinary/view/ViewPositionBase"
require "org/allbinary/game/layer/unit/CollidableUnitBehavior"
require "org/allbinary/game/layer/unit/UnitWaypointBehavior"
require "org/allbinary/game/layer/unit/UnitWaypointBehavior2"

class UnitLayer
    @@partialPositionList = BasicArrayListS.new(4)
    SENSOR_RANGE_MULTIPLIER = 6
    MOVE = "Moving"
end

