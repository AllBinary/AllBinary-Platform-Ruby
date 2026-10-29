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

require "org/allbinary/game/layer/SteeringVisitor"
require "org/allbinary/game/layer/unit/UnitWaypointBehavior"

class UnitWaypointBehavior2 < UnitWaypointBehavior
    attr_accessor :logUtil, :unitWaypointStrings, :basicColorFactory, :layerDistanceUtil, :pathFindingThreadPool, :progressTimeDelayHelper, :wanderPathsList, :waypointPathRunnable, :sensorRange, :closeRange, :nextUnvisitedPathGeographicMapCellPosition, :afterNextUnvisitedPathGeographicMapCellPosition, :waitingOnTargetPath, :waitingOnWaypointPath, :targetWithoutCachedPathLayerInterface, :buildingSteeringVisitor
    class BuildingSteeringVisitor < SteeringVisitor
        attr_accessor :positionList

        def initialize_fields
            @positionList = BasicArrayListD.new()
        end

        def initialize
            super()
            initialize_fields
        end
        

        def visit(anyType)
            logUtil = LogUtil.getInstance()
            begin
                if self.getList().size() > 0
                    allbinaryLayer = self.getList().get(0)
                    cellPosition = self.getPositionList().get(0)
                    clear = self.buildingChase(allbinaryLayer, cellPosition)
                    if clear
                        self.getList().clear()
                        @positionList.clear()
                        return NullUtil.getInstance().NULL_OBJECT
                    end
                    return BooleanFactory.getInstance().FALSE
                end
                return NullUtil.getInstance().NULL_OBJECT
            rescue StandardError => e
                commonStrings = CommonStrings.getInstance()
                logUtil.put(commonStrings.EXCEPTION, self, "visit", e)
                return NullUtil.getInstance().NULL_OBJECT
            end
        end
        

        def getPositionList()
            return @positionList
        end
    end

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @unitWaypointStrings = UnitWaypointStrings.getInstance()
        @basicColorFactory = BasicColorFactory.getInstance()
        @layerDistanceUtil = LayerDistanceUtil.getInstance()
        @pathFindingThreadPool = PathFindingThreadPool.getInstance()
        @progressTimeDelayHelper = nil
        @wanderPathsList = nil
        @waypointPathRunnable = nil
        @sensorRange = 0
        @closeRange = 0
        @nextUnvisitedPathGeographicMapCellPosition = SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
        @afterNextUnvisitedPathGeographicMapCellPosition = SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
        @waitingOnTargetPath = false
        @waitingOnWaypointPath = false
        @targetWithoutCachedPathLayerInterface = CollidableDestroyableDamageableLayer.getNullInstance()
        @buildingSteeringVisitor = BuildingSteeringVisitor.new()
    end
    

    def initialize(ownerAdvancedRTSGameLayer, fakeWaypoint)
        super(ownerAdvancedRTSGameLayer, fakeWaypoint)
        initialize_fields
        @progressTimeDelayHelper = TimeDelayHelper.new(5000)
        @wanderPathsList = BasicArrayListD.new()
        features = Features.getInstance()
        @waypointPathRunnable = (J2MEUtil.isHTML() ? MultipassWaypointPathRunnable.new() : WaypointPathRunnable.new())
    end
    

    def initRange(weaponRange)
        super(weaponRange)
        @closeRange = weaponRange
        @sensorRange = weaponRange * 4
        @associatedAdvancedRTSGameLayer.waypoint2LogHelperP.initRange(@associatedAdvancedRTSGameLayer, @closeRange, @sensorRange)
    end
    

    def getNextUnvisitedPathGeographicMapCellPosition()
        return @nextUnvisitedPathGeographicMapCellPosition
    end
    

    def isRunning()
        if @waypointPathRunnable.isRunning()
            return true
        else
            return false
        end
    end
    

    # throws Exception
    def processTick(allBinaryLayerManager)
        if @waypointPathRunnable.isRunning()
            if @waypointPathsListP != UnitWaypointBehavior2.runningWaypointPathList
                @waypointPathRunnable.setRunning(false)
                if @waitingOnTargetPath
                    self.setTargetPath()
                elsif @waitingOnWaypointPath
                    self.setWaypointPath(@waypointPathRunnable.getTargetLayer())
                else
                    raise StandardError.new("Should not happen")
                end
            else
                return
            end
        end
        self.processTargetList()
        if !@waypointPathRunnable.isRunning()
            self.processWaypoint()
        else
            return
        end
        if !@waypointPathRunnable.isRunning()
            self.processTargeting()
        else
            return
        end
        if !@waypointPathRunnable.isRunning()
            self.teleportIfNoProgress()
        else
            return
        end
    end
    

    # throws Exception
    def onEnemyMovement(layerInterface)
        anotherTargetDistance = @layerDistanceUtil.getDistance(@associatedAdvancedRTSGameLayer, layerInterface)
        if layerInterface == @currentTargetLayerInterfaceP
            self.setCurrentTargetDistance(anotherTargetDistance)
        else
            self.processPossibleTarget(layerInterface, anotherTargetDistance)
        end
    end
    

    # throws Exception
    def processPossibleTarget(layerInterface, anotherTargetDistance)
        isShorterThanCurrentTargetDistance = self.getCurrentTargetDistance() > anotherTargetDistance
        isCurrentTargetDestroyed = @currentTargetLayerInterfaceP != CollidableDestroyableDamageableLayer.getNullInstance() && @currentTargetLayerInterfaceP.isDestroyed()
        @associatedAdvancedRTSGameLayer.waypoint2LogHelperP.processPossibleTarget(@associatedAdvancedRTSGameLayer, self, layerInterface, anotherTargetDistance, isShorterThanCurrentTargetDistance, isCurrentTargetDestroyed)
        if self.isWaypointListEmptyOrOnlyTargets() && self.isInSensorRange(layerInterface, anotherTargetDistance) && (isShorterThanCurrentTargetDistance || isCurrentTargetDestroyed)
            @associatedAdvancedRTSGameLayer.waypoint2LogHelperP.processSetTarget(@associatedAdvancedRTSGameLayer, self, layerInterface, anotherTargetDistance)
            self.setTarget(layerInterface, anotherTargetDistance)
        elsif self.isCloseRange(layerInterface, anotherTargetDistance) && (isShorterThanCurrentTargetDistance || isCurrentTargetDestroyed)
            @associatedAdvancedRTSGameLayer.waypoint2LogHelperP.processPossibleTargetCloser(@associatedAdvancedRTSGameLayer, self, layerInterface, anotherTargetDistance)
            self.setTarget(layerInterface, anotherTargetDistance)
        end
    end
    

    # throws Exception
    def teleportIfNoProgress()
        if self.isTrackingWaypoint() || @associatedAdvancedRTSGameLayer.getParentLayer().isDestroyed()
            if @progressTimeDelayHelper.isTimeTNT() && @nextUnvisitedPathGeographicMapCellPosition != SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
                @associatedAdvancedRTSGameLayer.teleportTo(@nextUnvisitedPathGeographicMapCellPosition)
            end
            if self.getCompleteTimeDelayHelper().isTimeTNT()
                geographicMapCellPosition = @currentGeographicMapCellHistoryP.getTracked().get(@currentGeographicMapCellHistoryP.getSize() - 1)
                @associatedAdvancedRTSGameLayer.teleportTo(geographicMapCellPosition)
            end
        end
    end
    

    # throws Exception
    def setTarget(layerInterface, anotherTargetDistance)
        @associatedAdvancedRTSGameLayer.waypoint2LogHelperP.setTarget(@associatedAdvancedRTSGameLayer, self, layerInterface, anotherTargetDistance)
        @associatedAdvancedRTSGameLayer.getCaptionAnimationHelper().update(@unitWaypointStrings.TARGET, BasicColorFactory.getInstance().GREEN)
        @associatedAdvancedRTSGameLayer.setLoad(0)
        self.setCurrentTargetDistance(anotherTargetDistance)
        self.setCurrentTargetLayerInterface(layerInterface)
        self.setTrackingWaypoint(false)
        @targetList.clear()
        if !self.isCloseRange(layerInterface, anotherTargetDistance) && self.canInsertWaypoint(0, @currentTargetLayerInterfaceP)
            geographicMapCellPosition = @associatedAdvancedRTSGameLayer.getCurrentGeographicMapCellPosition()
            pathFindingLayerInterface = (@currentTargetLayerInterfaceP)
            waypoint = pathFindingLayerInterface.getWaypointBehavior().getWaypoint()
            list = waypoint.getPathsListFromCacheOnly(geographicMapCellPosition)
            self.setWaypointPathsList(list)
            if @waypointPathsListP == nil
                @targetWithoutCachedPathLayerInterface = @currentTargetLayerInterfaceP
            elsif @waypointPathsListP.size() != 0
                self.setTargetPath()
            end
        end
    end
    

    # throws Exception
    def setTargetPath()
        if @currentTargetLayerInterfaceP != CollidableDestroyableDamageableLayer.getNullInstance()
            if @currentTargetLayerInterfaceP.isDestroyed()
                @associatedAdvancedRTSGameLayer.waypoint2LogHelperP.setTargetPath(@associatedAdvancedRTSGameLayer)
                @associatedAdvancedRTSGameLayer.getCaptionAnimationHelper().update(@unitWaypointStrings.KILL, @basicColorFactory.ORANGE)
                self.clearTarget()
                return
            end
            if @currentTargetLayerInterfaceP == @waypointPathRunnable.getTargetLayer()
                @associatedAdvancedRTSGameLayer.waypoint2LogHelperP.setTargetPathIgnoreNewPath(@associatedAdvancedRTSGameLayer, self)
                self.insertWaypoint(0, @currentTargetLayerInterfaceP)
                self.setRandomGeographicMapCellHistory(@waypointPathsListP)
            end
        end
    end
    

    # throws Exception
    def setGeographicMapCellHistoryPath(geographicMapCellPositionBasicArrayList)
        self.setCurrentPathGeographicMapCellPosition(SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION)
        @nextUnvisitedPathGeographicMapCellPosition = SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
        super(geographicMapCellPositionBasicArrayList)
    end
    

    # throws Exception
    def processWaypoint()
        size = @targetList.size()
        if size > 0
            targetLayer = @targetList.get(0)
            @associatedAdvancedRTSGameLayer.waypoint2LogHelperP.processWaypoint(@associatedAdvancedRTSGameLayer, self, targetLayer, size)
            if targetLayer.isDestroyed()
                @associatedAdvancedRTSGameLayer.getCaptionAnimationHelper().update(@unitWaypointStrings.WAYPOINT_DESTROYED_SHORT, @basicColorFactory.YELLOW)
                self.removeWaypoint(targetLayer, @unitWaypointStrings.WAYPOINT_DESTROYED)
            else
                geographicMapCellPosition = @associatedAdvancedRTSGameLayer.getCurrentGeographicMapCellPosition()
                if self.isTrackingWaypoint()
                    @associatedAdvancedRTSGameLayer.waypoint2LogHelperP.processWaypointTracked(@associatedAdvancedRTSGameLayer, self)
                    if self.visitIfAtMidPoint(geographicMapCellPosition)
                        @associatedAdvancedRTSGameLayer.waypoint2LogHelperP.processWaypointTrackedVisit(@associatedAdvancedRTSGameLayer, geographicMapCellPosition)
                    end
                    if @currentGeographicMapCellHistoryP.isAllVisited2() && @currentTargetLayerInterfaceP != CollidableDestroyableDamageableLayer.getNullInstance()
                        oldWaypointLayer = @currentTargetLayerInterfaceP
                        oldWaypointLayer.getWaypointBehavior().getWaypoint().visit(@associatedAdvancedRTSGameLayer)
                        @associatedAdvancedRTSGameLayer.getCaptionAnimationHelper().update(@unitWaypointStrings.ALL_VISITED_SHORT, @basicColorFactory.GREEN)
                        self.removeWaypoint(@currentTargetLayerInterfaceP, @unitWaypointStrings.ALL_VISITED)
                    end
                elsif @currentTargetLayerInterfaceP == nil || @waypointOverridesAttacking
                    list = targetLayer.getWaypointBehavior().getWaypoint().getPathsListFromCacheOnly(geographicMapCellPosition)
                    self.setWaypointPathsList(list)
                    if @waypointPathsListP == nil
                        @waitingOnWaypointPath = true
                        @associatedAdvancedRTSGameLayer.getCaptionAnimationHelper().update(@unitWaypointStrings.THINKING, @basicColorFactory.GREEN)
                        self.runWaypointPathTask(targetLayer)
                        return
                    end
                    self.setWaypointPath(targetLayer)
                end
            end
        end
    end
    

    # throws Exception
    def wander()
        if @currentGeographicMapCellHistoryP.isAllVisited2()
            @associatedAdvancedRTSGameLayer.waypoint2LogHelperP.wander(@associatedAdvancedRTSGameLayer)
            @associatedAdvancedRTSGameLayer.getCaptionAnimationHelper().update(@unitWaypointStrings.WANDERING, @basicColorFactory.RED)
            @wanderPathsList.clear()
            @wanderPathsList.add(@associatedAdvancedRTSGameLayer.getSurroundingGeographicMapCellPositionList())
            self.setRandomGeographicMapCellHistory(@wanderPathsList)
        end
        self.visitIfAtMidPoint(self.getCurrentPathGeographicMapCellPosition())
        self.updateCurrentPathGeographicMapCellPosition()
        @associatedAdvancedRTSGameLayer.trackTo(@unitWaypointStrings.NEXT_PATH_NODE)
    end
    

    def visitIfAtMidPoint(geographicMapCellPosition)
        unitLayer = @associatedAdvancedRTSGameLayer
        if geographicMapCellPosition != SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION && @nextUnvisitedPathGeographicMapCellPosition == geographicMapCellPosition
            point = geographicMapCellPosition.getMidPoint()
            afterNextPoint = @afterNextUnvisitedPathGeographicMapCellPosition.getMidPoint()
            beyondMidPoint = true
            if geographicMapCellPosition.getColumn() == @afterNextUnvisitedPathGeographicMapCellPosition.getColumn()
            elsif point.getX() < afterNextPoint.getX()
                if unitLayer.getXP() + unitLayer.getHalfWidth() < point.getX()
                    beyondMidPoint = false
                end
            else
                if unitLayer.getXP() + unitLayer.getHalfWidth() > point.getX()
                    beyondMidPoint = false
                end
            end
            if geographicMapCellPosition.getRow() == @afterNextUnvisitedPathGeographicMapCellPosition.getRow()
            elsif point.getY() < afterNextPoint.getY()
                if unitLayer.getYP() + unitLayer.getHalfHeight() < point.getY()
                    beyondMidPoint = false
                end
            else
                if unitLayer.getYP() + unitLayer.getHalfHeight() > point.getY()
                    beyondMidPoint = false
                end
            end
            if beyondMidPoint
                return @currentGeographicMapCellHistoryP.visit(geographicMapCellPosition)
            end
        end
        return false
    end
    

    # throws Exception
    def processTargetList()
        @targetWithoutCachedPathLayerInterface = CollidableDestroyableDamageableLayer.getNullInstance()
        (self.getPossibleTargetList().size() - 1).step(0, -(1)) do |index|
            layerInterface = self.getPossibleTargetList().get(index)
            if layerInterface.isDestroyed()
                self.getPossibleTargetList().remove(layerInterface)
            else
                self.onEnemyMovement(layerInterface)
            end
        end
        if @targetWithoutCachedPathLayerInterface != CollidableDestroyableDamageableLayer.getNullInstance()
            @waitingOnTargetPath = true
            @associatedAdvancedRTSGameLayer.getCaptionAnimationHelper().update(@unitWaypointStrings.THINKING_ABOUT_TARGET, @basicColorFactory.GREEN)
            self.runWaypointPathTask(@currentTargetLayerInterfaceP)
        end
        self.getPossibleTargetList().clear()
    end
    

    # throws Exception
    def processTargeting()
        if @currentTargetLayerInterfaceP != CollidableDestroyableDamageableLayer.getNullInstance() && (self.isInSensorRange(@currentTargetLayerInterfaceP, self.getCurrentTargetDistance()) || self.isTrackingWaypoint())
            if @currentTargetLayerInterfaceP.isDestroyed()
                @associatedAdvancedRTSGameLayer.waypoint2LogHelperP.targetDestroyed(@associatedAdvancedRTSGameLayer)
                @associatedAdvancedRTSGameLayer.getCaptionAnimationHelper().update(@unitWaypointStrings.KILL, @basicColorFactory.ORANGE)
                self.clearTarget()
                return
            end
            dx = 0
            dy = 0
            if self.isTrackingWaypoint()
                self.updateCurrentPathGeographicMapCellPosition()
                point = @nextUnvisitedPathGeographicMapCellPosition.getMidPoint()
                dx = @associatedAdvancedRTSGameLayer.getXP() + @associatedAdvancedRTSGameLayer.getHalfWidth() - point.getX()
                dy = @associatedAdvancedRTSGameLayer.getYP() + @associatedAdvancedRTSGameLayer.getHalfHeight() - point.getY()
                @associatedAdvancedRTSGameLayer.waypoint2LogHelperP.processTargeting(@associatedAdvancedRTSGameLayer, dx, dy)
            else
                @associatedAdvancedRTSGameLayer.waypoint2LogHelperP.processTargetingNonWayPoint(@associatedAdvancedRTSGameLayer, dx, dy)
                dx = (@associatedAdvancedRTSGameLayer.getXP() + @associatedAdvancedRTSGameLayer.getHalfWidth()) - (@currentTargetLayerInterfaceP.getXP() + @currentTargetLayerInterfaceP.getHalfWidth())
                dy = (@associatedAdvancedRTSGameLayer.getYP() + @associatedAdvancedRTSGameLayer.getHalfHeight()) - (@currentTargetLayerInterfaceP.getYP() + @currentTargetLayerInterfaceP.getHalfHeight())
            end
            @associatedAdvancedRTSGameLayer.trackToDXY(dx, dy)
        else
            if @associatedAdvancedRTSGameLayer.getParentLayer().isDestroyed()
                self.wander()
            else
                if @associatedAdvancedRTSGameLayer.showMoreCaptionStates
                    @associatedAdvancedRTSGameLayer.getCaptionAnimationHelper().update(@unitWaypointStrings.STOP, @basicColorFactory.YELLOW)
                end
                @associatedAdvancedRTSGameLayer.allStop()
            end
        end
    end
    

    def updateCurrentPathGeographicMapCellPosition()
        self.setLastPathGeographicMapCellPosition(self.getCurrentPathGeographicMapCellPosition())
        self.setCurrentPathGeographicMapCellPosition(@nextUnvisitedPathGeographicMapCellPosition)
        @nextUnvisitedPathGeographicMapCellPosition = @currentGeographicMapCellHistoryP.getFirstUnvisited()
        @afterNextUnvisitedPathGeographicMapCellPosition = @currentGeographicMapCellHistoryP.getAfterIfNotLast(@nextUnvisitedPathGeographicMapCellPosition)
        if self.getCurrentPathGeographicMapCellPosition() != @nextUnvisitedPathGeographicMapCellPosition
            @progressTimeDelayHelper.setStartTimeTNT()
        end
    end
    

    # throws Exception
    def setWaypointPath(waypointLayer)
        if @waypointPathsListP.size() != 0
            self.setCurrentTargetLayerInterface(waypointLayer)
            _MAX = 2147483647
            self.setCurrentTargetDistance(_MAX)
            self.setRandomGeographicMapCellHistory(@waypointPathsListP)
        else
            waypointLayer.getWaypointBehavior().getWaypoint().visit(@associatedAdvancedRTSGameLayer)
            @associatedAdvancedRTSGameLayer.getCaptionAnimationHelper().update(@unitWaypointStrings.ALREADY_THERE_SHORT, @basicColorFactory.YELLOW)
            self.removeWaypoint(waypointLayer, @unitWaypointStrings.ALREADY_THERE)
        end
    end
    

    # throws Exception
    def runWaypointPathTask(waypointLayer)
        self.setWaypointPathsList(UnitWaypointBehavior2.runningWaypointPathList)
        if @waypointPathRunnable.isRunning()
            raise StandardError.new("Should never be running here")
        end
        @waypointPathRunnable.setRunning(true)
        @waypointPathRunnable.setUnitLayer(@associatedAdvancedRTSGameLayer)
        @waypointPathRunnable.setTargetLayer(waypointLayer)
        @pathFindingThreadPool.runTask(@waypointPathRunnable)
    end
    

    # throws Exception
    def removeWaypoint(waypointLayer, reason)
        @associatedAdvancedRTSGameLayer.waypoint2LogHelperP.removeWaypoint(@associatedAdvancedRTSGameLayer, self, waypointLayer, reason)
        @targetList.remove(waypointLayer)
        @associatedAdvancedRTSGameLayer.waypoint2LogHelperP.removeWaypointList(@associatedAdvancedRTSGameLayer, self, @targetList)
        if @currentTargetLayerInterfaceP == waypointLayer
            @associatedAdvancedRTSGameLayer.waypoint2LogHelperP.removeWaypointClear(@associatedAdvancedRTSGameLayer)
            self.clearTarget()
        end
    end
    

    # throws Exception
    def clearTarget()
        @associatedAdvancedRTSGameLayer.waypoint2LogHelperP.clearTarget(@associatedAdvancedRTSGameLayer)
        self.setCurrentTargetLayerInterface(CollidableDestroyableDamageableLayer.getNullInstance())
        self.setTrackingWaypoint(false)
        _MAX = 2147483647
        self.setCurrentTargetDistance(_MAX)
        TrackingEventHandler.getInstance().fireEvent(@associatedAdvancedRTSGameLayer.getTrackingEvent())
    end
    

    def isWaypointListEmptyOrOnlyTargets()
        list = @targetList
        if list.size() == 0
            return true
        end
        (list.size() - 1).step(0, -(1)) do |index|
            layerInterface = list.get(index)
            if layerInterface.isWaypointListEmptyOrOnlyTargets()
                return false
            end
        end
        return true
    end
    

    def isCloseRange(layerInterface, targetDistance)
        return targetDistance < @closeRange + layerInterface.getHalfHeight()
    end
    

    def isInSensorRange(layerInterface, targetDistance)
        return targetDistance < @sensorRange + layerInterface.getHalfHeight()
    end
    

    def getCurrentTargetingStateString()
        stringBuffer = StringMaker.new()
        if @currentTargetLayerInterfaceP != CollidableDestroyableDamageableLayer.getNullInstance()
            stringBuffer.append(UnitWaypointBehavior2::TARGET_LAYER)
            stringBuffer.append(@commonSeps.SPACE)
            stringBuffer.append(@currentTargetLayerInterfaceP.getName())
            stringBuffer.append(" with ")
            stringBuffer.append(UnitWaypointBehavior2::TARGET_DISTANCE)
            stringBuffer.append(@commonSeps.SPACE)
            stringBuffer.appendint((self.getCurrentTargetDistance()).to_i)
        end
        return stringBuffer.to_s
    end
    

    # throws Exception
    def addWaypointFromUser(advancedRTSGameLayer)
        if advancedRTSGameLayer.isDestroyed()
            raise StandardError.new("Trying to add a dead: " + (advancedRTSGameLayer).to_s)
        end
        @associatedAdvancedRTSGameLayer.waypoint2LogHelperP.addWaypointFromUser(@associatedAdvancedRTSGameLayer, advancedRTSGameLayer)
        @targetList.clear()
        @targetList.add(advancedRTSGameLayer)
        self.clearTarget()
    end
    

    # throws Exception
    def addBuildingChase(allbinaryLayer, cellPosition)
        if !@buildingSteeringVisitor.getList().contains(allbinaryLayer)
            @buildingSteeringVisitor.getList().add(allbinaryLayer)
            @buildingSteeringVisitor.getPositionList().add(cellPosition)
        end
        if !self.getSteeringVisitorList().contains(@buildingSteeringVisitor)
            self.getSteeringVisitorList().add(@buildingSteeringVisitor)
        end
    end
    

    # throws Exception
    def buildingChase(allbinaryLayer, cellPosition)
        return @associatedAdvancedRTSGameLayer.buildingChase(allbinaryLayer, cellPosition)
    end

    def self.runningWaypointPathList()
        return defined?(@@runningWaypointPathList) ? @@runningWaypointPathList : nil
    end

    def self.runningWaypointPathList=(value)
        @@runningWaypointPathList = value
    end
end

require "org/allbinary/J2MEUtil"
require "org/allbinary/game/configuration/feature/Features"
require "org/allbinary/game/layer/AdvancedRTSGameLayer"
require "org/allbinary/game/layer/MultipassWaypointPathRunnable"
require "org/allbinary/game/layer/RTSLayer"
require "org/allbinary/game/layer/WaypointPathRunnable"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/game/layer/PathFindingLayerInterface"
require "org/allbinary/game/layer/WaypointPathRunnableBase"
require "org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer"
require "org/allbinary/game/layer/waypoint/WaypointBase"
require "org/allbinary/game/tracking/TrackingEventHandler"
require "org/allbinary/graphics/GPoint"
require "org/allbinary/graphics/color/BasicColorFactory"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/layer/AllBinaryLayerManager"
require "org/allbinary/logic/NullUtil"
require "org/allbinary/logic/java/bool/BooleanFactory"
require "org/allbinary/math/LayerDistanceUtil"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition"
require "org/allbinary/media/graphics/geography/map/SimpleGeographicMapCellPositionFactory"
require "org/allbinary/thread/PathFindingThreadPool"
require "org/allbinary/thread/ThreadPool"
require "org/allbinary/time/TimeDelayHelper"
require "org/allbinary/game/layer/unit/UnitLayer"
require "org/allbinary/game/layer/unit/UnitWaypointStrings"

class UnitWaypointBehavior2
    @@runningWaypointPathList = BasicArrayListD.new()
    TARGET_DISTANCE = "Target Distance"
    TARGET_LAYER = "Target Layer"
end

