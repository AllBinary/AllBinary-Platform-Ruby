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

require "org/allbinary/game/layer/WaypointBehaviorBase"
require "org/allbinary/game/layer/waypoint/event/WaypointEventListenerInterface"

class UnitWaypointBehavior < WaypointBehaviorBase
    include WaypointEventListenerInterface
    attr_accessor :commonSeps, :longWeaponRange, :sensorAction, :completeTimeDelayHelper, :currentGeographicMapCellHistoryP, :lastPathGeographicMapCellPosition, :currentPathGeographicMapCellPosition, :FAKE_WAYPOINT_LAYER, :targetList, :possibleTargetList, :associatedAdvancedRTSGameLayer, :moving, :movingFromStopped, :waypointPathsListP, :currentTargetDistance, :currentTargetLayerInterfaceP, :trackingWaypoint, :repeatedToLong

    def initialize_fields
        @commonSeps = CommonSeps.getInstance()
        @longWeaponRange = 0
        @sensorAction = SensorActionFactory.getInstance().ATTACK
        @completeTimeDelayHelper = nil
        @currentGeographicMapCellHistoryP = nil
        @lastPathGeographicMapCellPosition = SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
        @currentPathGeographicMapCellPosition = SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
        @FAKE_WAYPOINT_LAYER = nil
        @targetList = nil
        @possibleTargetList = nil
        @associatedAdvancedRTSGameLayer = nil
        @moving = false
        @movingFromStopped = false
        @waypointPathsListP = BasicArrayListUtil.getInstance().getImmutableInstance()
        @currentTargetDistance = 2147483647
        @currentTargetLayerInterfaceP = CollidableDestroyableDamageableLayer.getNullInstance()
        @trackingWaypoint = false
        @repeatedToLong = TimeDelayHelper.new(22000)
    end
    

    def initialize(associatedAdvancedRTSGameLayer, fakeWaypoint)
        super()
        initialize_fields
        @associatedAdvancedRTSGameLayer = associatedAdvancedRTSGameLayer
        @completeTimeDelayHelper = TimeDelayHelper.new(30000)
        @targetList = BasicArrayListD.new()
        @possibleTargetList = BasicArrayListD.new()
        self.setWaypointPathsList(BasicArrayListUtil.getInstance().getImmutableInstance())
        @currentGeographicMapCellHistoryP = GeographicMapCellHistory.new()
        @FAKE_WAYPOINT_LAYER = fakeWaypoint
    end
    

    def initRange(weaponRange)
        @longWeaponRange = weaponRange / 2
    end
    

    def onEvent(eventObject)
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, self)
    end
    

    # throws Exception
    def onWaypointEvent(event)
        advancedRTSGameLayer = event.getRtsLayer()
        @associatedAdvancedRTSGameLayer.waypointLogHelperP.onWaypointEvent(@associatedAdvancedRTSGameLayer, advancedRTSGameLayer)
        if @associatedAdvancedRTSGameLayer.isSelected()
            self.addWaypointFromUser(advancedRTSGameLayer)
        elsif advancedRTSGameLayer.shouldAddWaypointFromBuilding()
            self.addWaypointFromBuilding(advancedRTSGameLayer)
        end
    end
    

    # throws Exception
    def addWaypointFromUser(advancedRTSGameLayer)
    end
    

    # throws Exception
    def addWaypointFromBuilding(advancedRTSGameLayer)
        if advancedRTSGameLayer == PrimaryWaypointHelper.getInstance().getWaypointLayer() || advancedRTSGameLayer.getParentLayer() == @associatedAdvancedRTSGameLayer.getParentLayer()
            if !@targetList.contains(advancedRTSGameLayer)
                @associatedAdvancedRTSGameLayer.waypointLogHelperP.addWaypointFromBuilding(@associatedAdvancedRTSGameLayer, advancedRTSGameLayer)
                if advancedRTSGameLayer.isDestroyed()
                    raise StandardError.new("Trying to add a dead: " + (advancedRTSGameLayer).to_s)
                end
                @targetList.add(advancedRTSGameLayer)
                @associatedAdvancedRTSGameLayer.waypointLogHelperP.addWaypointFromBuildingList(@associatedAdvancedRTSGameLayer, advancedRTSGameLayer, @targetList)
            end
        end
    end
    

    def isWaypointListEmptyOrOnlyTargets()
        return false
    end
    

    # throws Exception
    def insertWaypoint(index, rtsLayer)
        if self.canInsertWaypoint(index, rtsLayer)
            @associatedAdvancedRTSGameLayer.waypointLogHelperP.insertWaypoint(@associatedAdvancedRTSGameLayer, index, rtsLayer, self.getName())
            if rtsLayer.isDestroyed()
                raise StandardError.new("Trying to add a dead: " + (rtsLayer).to_s)
            end
            @targetList.addAt(index, rtsLayer)
            @associatedAdvancedRTSGameLayer.waypointLogHelperP.insertWaypointList(@associatedAdvancedRTSGameLayer, index, rtsLayer, self.getName(), @targetList)
            return true
        end
        return false
    end
    

    def move()
        if self.isMoving()
            self.setMovingFromStopped(false)
        else
            self.setMovingFromStopped(true)
        end
        self.setMoving(false)
    end
    

    # throws Exception
    def setRandomGeographicMapCellHistory(pathsList)
        size = pathsList.size()
        @associatedAdvancedRTSGameLayer.waypointLogHelperP.setRandomGeographicMapCellHistoryList(@associatedAdvancedRTSGameLayer, pathsList)
        if size > 0
            geographicMapCellPositionBasicArrayList = BasicArrayListUtil.getInstance().getRandom(pathsList)
            self.setGeographicMapCellHistoryPath(geographicMapCellPositionBasicArrayList)
        end
    end
    

    # throws Exception
    def setGeographicMapCellHistoryPath(geographicMapCellPositionBasicArrayList)
        @lastPathGeographicMapCellPosition = SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
        if @associatedAdvancedRTSGameLayer.showMoreCaptionStates
            @associatedAdvancedRTSGameLayer.getCaptionAnimationHelper().update(UnitWaypointBehavior::PATHING, BasicColorFactory.getInstance().GREEN)
        end
        @currentGeographicMapCellHistoryP.init()
        @associatedAdvancedRTSGameLayer.init(@currentGeographicMapCellHistoryP, geographicMapCellPositionBasicArrayList)
        self.setTrackingWaypoint(true)
        self.getCompleteTimeDelayHelper().setStartTimeTNT()
    end
    

    def canInsertWaypoint(index, rtsLayer)
        if @targetList.size() > 4
        elsif @targetList.contains(rtsLayer)
        else
            return true
        end
        return false
    end
    

    # throws Exception
    def addBuildingChase(allbinaryLayer, cellPosition)
    end
    

    # throws Exception
    def moveAwayFromBuilding(buildingLayer)
        geographicMapCellPosition = @associatedAdvancedRTSGameLayer.getCurrentGeographicMapCellPosition()
        list = buildingLayer.geographicMapCellPositionAreaBase.getOccupyingGeographicMapCellPositionList()
        if list.contains(geographicMapCellPosition)
            if self.insertWaypoint(0, @FAKE_WAYPOINT_LAYER)
                @associatedAdvancedRTSGameLayer.waypointLogHelperP.moveAwayFromBuilding(@associatedAdvancedRTSGameLayer)
                self.setCurrentTargetLayerInterface(@FAKE_WAYPOINT_LAYER)
                pathsList = buildingLayer.getMoveOutOfBuildAreaPath(geographicMapCellPosition)
                @associatedAdvancedRTSGameLayer.setClosestGeographicMapCellHistory(pathsList)
            end
        end
    end
    

    def needToMove()
        @associatedAdvancedRTSGameLayer.waypointLogHelperP.needToMove(@associatedAdvancedRTSGameLayer, self)
        if self.isTrackingWaypoint() || @sensorAction == SensorActionFactory.getInstance().EVADE || (@currentTargetLayerInterfaceP != CollidableDestroyableDamageableLayer.getNullInstance() && self.getCurrentTargetDistance() >= @longWeaponRange + @currentTargetLayerInterfaceP.getHalfHeight())
            @repeatedToLong.setStartTimeTNT()
            return true
        end
        if @repeatedToLong.isTimeTNT()
            message = "Repeating too long: " + (self.getMovementLogicAsString()).to_s
            ForcedLogUtil.log(message, @associatedAdvancedRTSGameLayer)
        end
        return false
    end
    

    def getMovementLogicAsString()
        stringBuffer = StringMaker.new()
        stringBuffer.append("isTrackingWaypoint: ")
        stringBuffer.appendboolean(self.isTrackingWaypoint())
        stringBuffer.append(" sensorAction: ")
        stringBuffer.append(@sensorAction.name)
        stringBuffer.append(" getCurrentTargetLayerInterface: ")
        stringBuffer.append(StringUtil.getInstance().toString(@currentTargetLayerInterfaceP))
        if @currentTargetLayerInterfaceP != CollidableDestroyableDamageableLayer.getNullInstance()
            stringBuffer.append(" Target Range: ")
            stringBuffer.appendint(self.getCurrentTargetDistance())
            stringBuffer.append(" >= ")
            stringBuffer.appendint((@longWeaponRange + @currentTargetLayerInterfaceP.getHalfHeight()).to_i)
        end
        return stringBuffer.to_s
    end
    

    def isMovingFromStopped()
        return @movingFromStopped
    end
    

    def setMovingFromStopped(movingFromStopped)
        @movingFromStopped = movingFromStopped
    end
    

    def setWaypointPathsList(waypointPathsList)
        @waypointPathsListP = waypointPathsList
    end
    

    def getWaypointPathsList()
        return @waypointPathsListP
    end
    

    def isMoving()
        return @moving
    end
    

    def setMoving(moving)
        @moving = moving
    end
    

    def isTrackingWaypoint()
        return @trackingWaypoint
    end
    

    def getPossibleTargetList()
        return @possibleTargetList
    end
    

    def setLastPathGeographicMapCellPosition(lastPathGeographicMapCellPosition)
        @lastPathGeographicMapCellPosition = lastPathGeographicMapCellPosition
    end
    

    def getLastPathGeographicMapCellPosition()
        return @lastPathGeographicMapCellPosition
    end
    

    def setCurrentPathGeographicMapCellPosition(currentPathGeographicMapCellPosition)
        @currentPathGeographicMapCellPosition = currentPathGeographicMapCellPosition
    end
    

    def getCurrentPathGeographicMapCellPosition()
        return @currentPathGeographicMapCellPosition
    end
    

    def setSensorAction(sensorAction)
        @sensorAction = sensorAction
    end
    

    def getSensorAction()
        return @sensorAction
    end
    

    def setCurrentTargetLayerInterface(currentTargetLayerInterface)
        @currentTargetLayerInterfaceP = currentTargetLayerInterface
    end
    

    def getCurrentTargetLayerInterface()
        return @currentTargetLayerInterfaceP
    end
    

    def setCurrentTargetDistance(currentTargetDistance)
        @currentTargetDistance = currentTargetDistance
    end
    

    def getCurrentTargetDistance()
        return @currentTargetDistance
    end
    

    def getCompleteTimeDelayHelper()
        return @completeTimeDelayHelper
    end
    

    def getCurrentGeographicMapCellHistory()
        return @currentGeographicMapCellHistoryP
    end
    

    def setTrackingWaypoint(trackingWaypoint)
        @trackingWaypoint = trackingWaypoint
    end
end

require "org/allbinary/game/input/form/PrimaryWaypointHelper"
require "org/allbinary/game/layer/AdvancedRTSGameLayer"
require "org/allbinary/game/layer/RTSLayerEvent"
require "org/allbinary/game/layer/SensorAction"
require "org/allbinary/game/layer/SensorActionFactory"
require "org/allbinary/game/layer/building/BuildingLayer"
require "org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer"
require "org/allbinary/graphics/color/BasicColorFactory"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/logic/communication/log/ForcedLogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/logic/util/event/AllBinaryEventObject"
require "org/allbinary/logic/util/event/EventStrings"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellHistory"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition"
require "org/allbinary/media/graphics/geography/map/SimpleGeographicMapCellPositionFactory"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/time/TimeDelayHelper"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/util/BasicArrayListUtil"
require "org/allbinary/game/layer/unit/UnitLayer"

class UnitWaypointBehavior
    PATHING = "Pathing"
end

