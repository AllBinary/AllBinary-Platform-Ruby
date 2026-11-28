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
require "java/lang/JavaClass"
require "org/allbinary/game/layer/SteeringVisitor"
require "org/allbinary/game/layer/unit/UnitWaypointBehavior"

module ::Org; module Allbinary; module Game; module Layer; module Unit

class UnitWaypointBehavior2 < UnitWaypointBehavior
    attr_accessor :logUtil, :unitWaypointStrings, :basicColorFactory, :layerDistanceUtil, :pathFindingThreadPool, :progressTimeDelayHelper, :wanderPathsList, :waypointPathRunnable, :sensorRange, :closeRange, :nextUnvisitedPathGeographicMapCellPosition, :afterNextUnvisitedPathGeographicMapCellPosition, :waitingOnTargetPath, :waitingOnWaypointPath, :targetWithoutCachedPathLayerInterface, :buildingSteeringVisitor
    class BuildingSteeringVisitor < ::Org::Allbinary::Game::Layer::SteeringVisitor
        attr_accessor :positionList

        def jfields_org_allbinary_game_layer_unit_UnitWaypointBehavior2_BuildingSteeringVisitor
            @positionList = ::Org::Allbinary::Util::BasicArrayListD.new()
        end

        def initialize
            super()
            jfields_org_allbinary_game_layer_unit_UnitWaypointBehavior2_BuildingSteeringVisitor
        end
        

        def visit(anyType)
            logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
            begin
                if self.getList().size() > 0
                    allbinaryLayer = self.getList().get(0)
                    cellPosition = self.getPositionList().get(0)
                    clear = self.buildingChase(allbinaryLayer, cellPosition)
                    if clear
                        self.getList().clear()
                        @positionList.clear()
                        return ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT
                    end
                    return ::Org::Allbinary::Logic::Java::Bool::BooleanFactory.getInstance().FALSE
                end
                return ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT
            rescue StandardError => e
                commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
                logUtil.put(commonStrings.EXCEPTION, self, "visit", e)
                return ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT
            end
        end
        java_overload :visit, 1
        

        def getPositionList()
            return @positionList
        end
        java_overload :getPositionList, 0
    end

    def jfields_org_allbinary_game_layer_unit_UnitWaypointBehavior2
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @unitWaypointStrings = UnitWaypointStrings.getInstance()
        @basicColorFactory = ::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance()
        @layerDistanceUtil = ::Org::Allbinary::MathPackage::LayerDistanceUtil.getInstance()
        @pathFindingThreadPool = ::Org::Allbinary::ThreadPackage::PathFindingThreadPool.getInstance()
        @progressTimeDelayHelper = nil unless instance_variable_defined?(:@progressTimeDelayHelper)
        @wanderPathsList = nil unless instance_variable_defined?(:@wanderPathsList)
        @waypointPathRunnable = nil unless instance_variable_defined?(:@waypointPathRunnable)
        @sensorRange = 0
        @closeRange = 0
        @nextUnvisitedPathGeographicMapCellPosition = ::Org::Allbinary::Media::Graphics::Geography::Map::SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
        @afterNextUnvisitedPathGeographicMapCellPosition = ::Org::Allbinary::Media::Graphics::Geography::Map::SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
        @waitingOnTargetPath = false unless instance_variable_defined?(:@waitingOnTargetPath)
        @waitingOnWaypointPath = false unless instance_variable_defined?(:@waitingOnWaypointPath)
        @targetWithoutCachedPathLayerInterface = ::Org::Allbinary::Game::Layer::Special::CollidableDestroyableDamageableLayer.getNullInstance()
        @buildingSteeringVisitor = BuildingSteeringVisitor.new()
    end
    

    def initialize(ownerAdvancedRTSGameLayer, fakeWaypoint)
        super(ownerAdvancedRTSGameLayer, fakeWaypoint)
        jfields_org_allbinary_game_layer_unit_UnitWaypointBehavior2
        @progressTimeDelayHelper = ::Org::Allbinary::TimePackage::TimeDelayHelper.new(5000)
        @wanderPathsList = ::Org::Allbinary::Util::BasicArrayListD.new()
        features = ::Org::Allbinary::Game::Configuration::Feature::Features.getInstance()
        @waypointPathRunnable = (::Org::Allbinary::J2MEUtil.isHTML() ? ::Org::Allbinary::Game::Layer::MultipassWaypointPathRunnable.new() : ::Org::Allbinary::Game::Layer::WaypointPathRunnable.new())
    end
    

    def initRange(weaponRange)
        UnitWaypointBehavior2.superclass.java_super_method(:initRange, 1).bind(self).call(weaponRange)
        @closeRange = weaponRange
        @sensorRange = weaponRange * 4
        @associatedAdvancedRTSGameLayer.waypoint2LogHelperP.initRange(@associatedAdvancedRTSGameLayer, @closeRange, @sensorRange)
    end
    java_overload :initRange, 1
    

    def getNextUnvisitedPathGeographicMapCellPosition()
        return @nextUnvisitedPathGeographicMapCellPosition
    end
    java_overload :getNextUnvisitedPathGeographicMapCellPosition, 0
    

    def isRunning()
        if @waypointPathRunnable.isRunning()
            return true
        else
            return false
        end
    end
    java_overload :isRunning, 0
    

    # throws Exception
    def processTick(allBinaryLayerManager)
        if @waypointPathRunnable.isRunning()
            if @waypointPathsListP != @@runningWaypointPathList
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
    java_overload :processTick, 1
    

    # throws Exception
    def onEnemyMovement(layerInterface)
        anotherTargetDistance = @layerDistanceUtil.getDistance(@associatedAdvancedRTSGameLayer, layerInterface)
        if layerInterface == @currentTargetLayerInterfaceP
            self.setCurrentTargetDistance(anotherTargetDistance)
        else
            self.processPossibleTarget(layerInterface, anotherTargetDistance)
        end
    end
    java_overload :onEnemyMovement, 1
    

    # throws Exception
    def processPossibleTarget(layerInterface, anotherTargetDistance)
        isShorterThanCurrentTargetDistance = self.getCurrentTargetDistance() > anotherTargetDistance
        isCurrentTargetDestroyed = @currentTargetLayerInterfaceP != ::Org::Allbinary::Game::Layer::Special::CollidableDestroyableDamageableLayer.getNullInstance() && @currentTargetLayerInterfaceP.isDestroyed()
        @associatedAdvancedRTSGameLayer.waypoint2LogHelperP.processPossibleTarget(@associatedAdvancedRTSGameLayer, self, layerInterface, anotherTargetDistance, isShorterThanCurrentTargetDistance, isCurrentTargetDestroyed)
        if self.isWaypointListEmptyOrOnlyTargets() && self.isInSensorRange(layerInterface, anotherTargetDistance) && (isShorterThanCurrentTargetDistance || isCurrentTargetDestroyed)
            @associatedAdvancedRTSGameLayer.waypoint2LogHelperP.processSetTarget(@associatedAdvancedRTSGameLayer, self, layerInterface, anotherTargetDistance)
            self.setTarget(layerInterface, anotherTargetDistance)
        elsif self.isCloseRange(layerInterface, anotherTargetDistance) && (isShorterThanCurrentTargetDistance || isCurrentTargetDestroyed)
            @associatedAdvancedRTSGameLayer.waypoint2LogHelperP.processPossibleTargetCloser(@associatedAdvancedRTSGameLayer, self, layerInterface, anotherTargetDistance)
            self.setTarget(layerInterface, anotherTargetDistance)
        end
    end
    java_overload :processPossibleTarget, 2
    

    # throws Exception
    def teleportIfNoProgress()
        if self.isTrackingWaypoint() || @associatedAdvancedRTSGameLayer.getParentLayer().isDestroyed()
            if @progressTimeDelayHelper.isTimeTNT() && @nextUnvisitedPathGeographicMapCellPosition != ::Org::Allbinary::Media::Graphics::Geography::Map::SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
                @associatedAdvancedRTSGameLayer.teleportTo(@nextUnvisitedPathGeographicMapCellPosition)
            end
            if self.getCompleteTimeDelayHelper().isTimeTNT()
                geographicMapCellPosition = @currentGeographicMapCellHistoryP.getTracked().get(@currentGeographicMapCellHistoryP.getSize() - 1)
                @associatedAdvancedRTSGameLayer.teleportTo(geographicMapCellPosition)
            end
        end
    end
    java_overload :teleportIfNoProgress, 0
    

    # throws Exception
    def setTarget(layerInterface, anotherTargetDistance)
        @associatedAdvancedRTSGameLayer.waypoint2LogHelperP.setTarget(@associatedAdvancedRTSGameLayer, self, layerInterface, anotherTargetDistance)
        @associatedAdvancedRTSGameLayer.getCaptionAnimationHelper().update(@unitWaypointStrings.TARGET, ::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance().GREEN)
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
    java_overload :setTarget, 2
    

    # throws Exception
    def setTargetPath()
        if @currentTargetLayerInterfaceP != ::Org::Allbinary::Game::Layer::Special::CollidableDestroyableDamageableLayer.getNullInstance()
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
    java_overload :setTargetPath, 0
    

    # throws Exception
    def setGeographicMapCellHistoryPath(geographicMapCellPositionBasicArrayList)
        self.setCurrentPathGeographicMapCellPosition(::Org::Allbinary::Media::Graphics::Geography::Map::SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION)
        @nextUnvisitedPathGeographicMapCellPosition = ::Org::Allbinary::Media::Graphics::Geography::Map::SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
        UnitWaypointBehavior2.superclass.java_super_method(:setGeographicMapCellHistoryPath, 1).bind(self).call(geographicMapCellPositionBasicArrayList)
    end
    java_overload :setGeographicMapCellHistoryPath, 1
    

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
                    if @currentGeographicMapCellHistoryP.isAllVisited2() && @currentTargetLayerInterfaceP != ::Org::Allbinary::Game::Layer::Special::CollidableDestroyableDamageableLayer.getNullInstance()
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
    java_overload :processWaypoint, 0
    

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
    java_overload :wander, 0
    

    def visitIfAtMidPoint(geographicMapCellPosition)
        unitLayer = @associatedAdvancedRTSGameLayer
        if geographicMapCellPosition != ::Org::Allbinary::Media::Graphics::Geography::Map::SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION && @nextUnvisitedPathGeographicMapCellPosition == geographicMapCellPosition
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
    java_overload :visitIfAtMidPoint, 1
    

    # throws Exception
    def processTargetList()
        @targetWithoutCachedPathLayerInterface = ::Org::Allbinary::Game::Layer::Special::CollidableDestroyableDamageableLayer.getNullInstance()
        (self.getPossibleTargetList().size() - 1).step(0, -(1)) do |index|
            layerInterface = self.getPossibleTargetList().get(index)
            if layerInterface.isDestroyed()
                self.getPossibleTargetList().remove(layerInterface)
            else
                self.onEnemyMovement(layerInterface)
            end
        end
        if @targetWithoutCachedPathLayerInterface != ::Org::Allbinary::Game::Layer::Special::CollidableDestroyableDamageableLayer.getNullInstance()
            @waitingOnTargetPath = true
            @associatedAdvancedRTSGameLayer.getCaptionAnimationHelper().update(@unitWaypointStrings.THINKING_ABOUT_TARGET, @basicColorFactory.GREEN)
            self.runWaypointPathTask(@currentTargetLayerInterfaceP)
        end
        self.getPossibleTargetList().clear()
    end
    java_overload :processTargetList, 0
    

    # throws Exception
    def processTargeting()
        if @currentTargetLayerInterfaceP != ::Org::Allbinary::Game::Layer::Special::CollidableDestroyableDamageableLayer.getNullInstance() && (self.isInSensorRange(@currentTargetLayerInterfaceP, self.getCurrentTargetDistance()) || self.isTrackingWaypoint())
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
    java_overload :processTargeting, 0
    

    def updateCurrentPathGeographicMapCellPosition()
        self.setLastPathGeographicMapCellPosition(self.getCurrentPathGeographicMapCellPosition())
        self.setCurrentPathGeographicMapCellPosition(@nextUnvisitedPathGeographicMapCellPosition)
        @nextUnvisitedPathGeographicMapCellPosition = @currentGeographicMapCellHistoryP.getFirstUnvisited()
        @afterNextUnvisitedPathGeographicMapCellPosition = @currentGeographicMapCellHistoryP.getAfterIfNotLast(@nextUnvisitedPathGeographicMapCellPosition)
        if self.getCurrentPathGeographicMapCellPosition() != @nextUnvisitedPathGeographicMapCellPosition
            @progressTimeDelayHelper.setStartTimeTNT()
        end
    end
    java_overload :updateCurrentPathGeographicMapCellPosition, 0
    

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
    java_overload :setWaypointPath, 1
    

    # throws Exception
    def runWaypointPathTask(waypointLayer)
        self.setWaypointPathsList(@@runningWaypointPathList)
        if @waypointPathRunnable.isRunning()
            raise StandardError.new("Should never be running here")
        end
        @waypointPathRunnable.setRunning(true)
        @waypointPathRunnable.setUnitLayer(@associatedAdvancedRTSGameLayer)
        @waypointPathRunnable.setTargetLayer(waypointLayer)
        @pathFindingThreadPool.runTask(@waypointPathRunnable)
    end
    java_overload :runWaypointPathTask, 1
    

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
    java_overload :removeWaypoint, 2
    

    # throws Exception
    def clearTarget()
        @associatedAdvancedRTSGameLayer.waypoint2LogHelperP.clearTarget(@associatedAdvancedRTSGameLayer)
        self.setCurrentTargetLayerInterface(::Org::Allbinary::Game::Layer::Special::CollidableDestroyableDamageableLayer.getNullInstance())
        self.setTrackingWaypoint(false)
        _MAX = 2147483647
        self.setCurrentTargetDistance(_MAX)
        ::Org::Allbinary::Game::Tracking::TrackingEventHandler.getInstance().fireEvent(@associatedAdvancedRTSGameLayer.getTrackingEvent())
    end
    java_overload :clearTarget, 0
    

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
    java_overload :isWaypointListEmptyOrOnlyTargets, 0
    

    def isCloseRange(layerInterface, targetDistance)
        return targetDistance < @closeRange + layerInterface.getHalfHeight()
    end
    java_overload :isCloseRange, 2
    

    def isInSensorRange(layerInterface, targetDistance)
        return targetDistance < @sensorRange + layerInterface.getHalfHeight()
    end
    java_overload :isInSensorRange, 2
    

    def getCurrentTargetingStateString()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        if @currentTargetLayerInterfaceP != ::Org::Allbinary::Game::Layer::Special::CollidableDestroyableDamageableLayer.getNullInstance()
            stringBuffer.append(TARGET_LAYER)
            stringBuffer.append(@commonSeps.SPACE)
            stringBuffer.append(@currentTargetLayerInterfaceP.getName())
            stringBuffer.append(" with ")
            stringBuffer.append(TARGET_DISTANCE)
            stringBuffer.append(@commonSeps.SPACE)
            stringBuffer.appendint(((self.getCurrentTargetDistance()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
        end
        return stringBuffer.to_s
    end
    java_overload :getCurrentTargetingStateString, 0
    

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
    java_overload :addWaypointFromUser, 1
    

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
    java_overload :addBuildingChase, 2
    

    # throws Exception
    def buildingChase(allbinaryLayer, cellPosition)
        return @associatedAdvancedRTSGameLayer.buildingChase(allbinaryLayer, cellPosition)
    end
    java_overload :buildingChase, 2

    def self.runningWaypointPathList()
        UnitWaypointBehavior2.java_static_fields unless @java_static_fields_started
        return defined?(@@runningWaypointPathList) ? @@runningWaypointPathList : nil
    end

    def self.runningWaypointPathList=(value)
        UnitWaypointBehavior2.java_static_fields unless @java_static_fields_started
        @@runningWaypointPathList = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:TARGET_DISTANCE, "Target Distance")
        const_set(:TARGET_LAYER, "Target Layer")
        begin
            @@runningWaypointPathList = ::Org::Allbinary::Util::BasicArrayListD.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "UnitWaypointBehavior2"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:TARGET_DISTANCE, :TARGET_LAYER].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; autoload :J2MEUtil, "org/allbinary/J2MEUtil" unless const_defined?(:J2MEUtil, false); end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :Features, "org/allbinary/game/configuration/feature/Features" unless const_defined?(:Features, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :AdvancedRTSGameLayer, "org/allbinary/game/layer/AdvancedRTSGameLayer" unless const_defined?(:AdvancedRTSGameLayer, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :MultipassWaypointPathRunnable, "org/allbinary/game/layer/MultipassWaypointPathRunnable" unless const_defined?(:MultipassWaypointPathRunnable, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :RTSLayer, "org/allbinary/game/layer/RTSLayer" unless const_defined?(:RTSLayer, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :WaypointPathRunnable, "org/allbinary/game/layer/WaypointPathRunnable" unless const_defined?(:WaypointPathRunnable, false); end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :PathFindingLayerInterface, "org/allbinary/game/layer/PathFindingLayerInterface" unless const_defined?(:PathFindingLayerInterface, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :WaypointPathRunnableBase, "org/allbinary/game/layer/WaypointPathRunnableBase" unless const_defined?(:WaypointPathRunnableBase, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Special; autoload :CollidableDestroyableDamageableLayer, "org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer" unless const_defined?(:CollidableDestroyableDamageableLayer, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Waypoint; autoload :WaypointBase, "org/allbinary/game/layer/waypoint/WaypointBase" unless const_defined?(:WaypointBase, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Tracking; autoload :TrackingEventHandler, "org/allbinary/game/tracking/TrackingEventHandler" unless const_defined?(:TrackingEventHandler, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; autoload :GPoint, "org/allbinary/graphics/GPoint" unless const_defined?(:GPoint, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory" unless const_defined?(:BasicColorFactory, false); end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager" unless const_defined?(:AllBinaryLayerManager, false); end; end; end
module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Java; module Bool; autoload :BooleanFactory, "org/allbinary/logic/java/bool/BooleanFactory" unless const_defined?(:BooleanFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :LayerDistanceUtil, "org/allbinary/math/LayerDistanceUtil" unless const_defined?(:LayerDistanceUtil, false); end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellPosition, "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition" unless const_defined?(:GeographicMapCellPosition, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :SimpleGeographicMapCellPositionFactory, "org/allbinary/media/graphics/geography/map/SimpleGeographicMapCellPositionFactory" unless const_defined?(:SimpleGeographicMapCellPositionFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module ThreadPackage; autoload :PathFindingThreadPool, "org/allbinary/thread/PathFindingThreadPool" unless const_defined?(:PathFindingThreadPool, false); end; end; end
module ::Org; module Allbinary; module ThreadPackage; autoload :ThreadPool, "org/allbinary/thread/ThreadPool" unless const_defined?(:ThreadPool, false); end; end; end
module ::Org; module Allbinary; module TimePackage; autoload :TimeDelayHelper, "org/allbinary/time/TimeDelayHelper" unless const_defined?(:TimeDelayHelper, false); end; end; end
autoload :UnitLayer, "org/allbinary/game/layer/unit/UnitLayer" unless const_defined?(:UnitLayer, false)
autoload :UnitWaypointStrings, "org/allbinary/game/layer/unit/UnitWaypointStrings" unless const_defined?(:UnitWaypointStrings, false)

begin
    UnitWaypointBehavior2.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

