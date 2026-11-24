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
require "org/allbinary/game/layer/WaypointBehaviorBase"
require "org/allbinary/game/layer/waypoint/event/WaypointEventListenerInterface"

module ::Org; module Allbinary; module Game; module Layer; module Unit

class UnitWaypointBehavior < ::Org::Allbinary::Game::Layer::WaypointBehaviorBase
    include ::Org::Allbinary::Game::Layer::Waypoint::Event::WaypointEventListenerInterface
    attr_accessor :commonSeps, :unitWaypointStrings, :longWeaponRange, :sensorAction, :completeTimeDelayHelper, :currentGeographicMapCellHistoryP, :lastPathGeographicMapCellPosition, :currentPathGeographicMapCellPosition, :FAKE_WAYPOINT_LAYER, :targetList, :possibleTargetList, :associatedAdvancedRTSGameLayer, :moving, :movingFromStopped, :waypointPathsListP, :currentTargetDistance, :currentTargetLayerInterfaceP, :trackingWaypoint, :repeatedToLong

    def jfields_org_allbinary_game_layer_unit_UnitWaypointBehavior
        @commonSeps = ::Org::Allbinary::StringPackage::CommonSeps.getInstance()
        @unitWaypointStrings = UnitWaypointStrings.getInstance()
        @longWeaponRange = 0
        @sensorAction = ::Org::Allbinary::Game::Layer::SensorActionFactory.getInstance().ATTACK
        @completeTimeDelayHelper = nil unless instance_variable_defined?(:@completeTimeDelayHelper)
        @currentGeographicMapCellHistoryP = nil unless instance_variable_defined?(:@currentGeographicMapCellHistoryP)
        @lastPathGeographicMapCellPosition = ::Org::Allbinary::Media::Graphics::Geography::Map::SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
        @currentPathGeographicMapCellPosition = ::Org::Allbinary::Media::Graphics::Geography::Map::SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
        @FAKE_WAYPOINT_LAYER = nil unless instance_variable_defined?(:@FAKE_WAYPOINT_LAYER)
        @targetList = nil unless instance_variable_defined?(:@targetList)
        @possibleTargetList = nil unless instance_variable_defined?(:@possibleTargetList)
        @associatedAdvancedRTSGameLayer = nil unless instance_variable_defined?(:@associatedAdvancedRTSGameLayer)
        @moving = false
        @movingFromStopped = false
        @waypointPathsListP = ::Org::Allbinary::Util::BasicArrayListUtil.getInstance().getImmutableInstance()
        @currentTargetDistance = 2147483647
        @currentTargetLayerInterfaceP = ::Org::Allbinary::Game::Layer::Special::CollidableDestroyableDamageableLayer.getNullInstance()
        @trackingWaypoint = false unless instance_variable_defined?(:@trackingWaypoint)
        @repeatedToLong = ::Org::Allbinary::TimePackage::TimeDelayHelper.new(22000)
    end
    

    def initialize(associatedAdvancedRTSGameLayer, fakeWaypoint)
        super()
        jfields_org_allbinary_game_layer_unit_UnitWaypointBehavior
        @associatedAdvancedRTSGameLayer = associatedAdvancedRTSGameLayer
        @completeTimeDelayHelper = ::Org::Allbinary::TimePackage::TimeDelayHelper.new(30000)
        @targetList = ::Org::Allbinary::Util::BasicArrayListD.new()
        @possibleTargetList = ::Org::Allbinary::Util::BasicArrayListD.new()
        self.setWaypointPathsList(::Org::Allbinary::Util::BasicArrayListUtil.getInstance().getImmutableInstance())
        @currentGeographicMapCellHistoryP = ::Org::Allbinary::Media::Graphics::Geography::Map::GeographicMapCellHistory.new()
        @FAKE_WAYPOINT_LAYER = fakeWaypoint
    end
    

    def initRange(weaponRange)
        @longWeaponRange = weaponRange / 2
    end
    java_overload :initRange, 1
    

    def onEvent(eventObject)
        ::Org::Allbinary::Logic::Communication::Log::ForcedLogUtil.log(::Org::Allbinary::Logic::Util::Event::EventStrings.getInstance().PERFORMANCE_MESSAGE, self)
    end
    java_overload :onEvent, 1
    

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
    java_overload :onWaypointEvent, 1
    

    # throws Exception
    def addWaypointFromUser(advancedRTSGameLayer)
    end
    java_overload :addWaypointFromUser, 1
    

    # throws Exception
    def addWaypointFromBuilding(advancedRTSGameLayer)
        if advancedRTSGameLayer == ::Org::Allbinary::Game::Input::Form::PrimaryWaypointHelper.getInstance().getWaypointLayer() || advancedRTSGameLayer.getParentLayer() == @associatedAdvancedRTSGameLayer.getParentLayer()
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
    java_overload :addWaypointFromBuilding, 1
    

    def isWaypointListEmptyOrOnlyTargets()
        return false
    end
    java_overload :isWaypointListEmptyOrOnlyTargets, 0
    

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
    java_overload :insertWaypoint, 2
    

    def move()
        if self.isMoving()
            self.setMovingFromStopped(false)
        else
            self.setMovingFromStopped(true)
        end
        self.setMoving(false)
    end
    java_overload :move, 0
    

    # throws Exception
    def setRandomGeographicMapCellHistory(pathsList)
        size = pathsList.size()
        @associatedAdvancedRTSGameLayer.waypointLogHelperP.setRandomGeographicMapCellHistoryList(@associatedAdvancedRTSGameLayer, pathsList)
        if size > 0
            geographicMapCellPositionBasicArrayList = ::Org::Allbinary::Util::BasicArrayListUtil.getInstance().getRandom(pathsList)
            self.setGeographicMapCellHistoryPath(geographicMapCellPositionBasicArrayList)
        end
    end
    java_overload :setRandomGeographicMapCellHistory, 1
    

    # throws Exception
    def setGeographicMapCellHistoryPath(geographicMapCellPositionBasicArrayList)
        @lastPathGeographicMapCellPosition = ::Org::Allbinary::Media::Graphics::Geography::Map::SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
        if @associatedAdvancedRTSGameLayer.showMoreCaptionStates
            @associatedAdvancedRTSGameLayer.getCaptionAnimationHelper().update(@unitWaypointStrings.PATHING, ::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance().GREEN)
        end
        @currentGeographicMapCellHistoryP.init()
        @associatedAdvancedRTSGameLayer.init(@currentGeographicMapCellHistoryP, geographicMapCellPositionBasicArrayList)
        self.setTrackingWaypoint(true)
        self.getCompleteTimeDelayHelper().setStartTimeTNT()
    end
    java_overload :setGeographicMapCellHistoryPath, 1
    

    def canInsertWaypoint(index, rtsLayer)
        if @targetList.size() > 4
        elsif @targetList.contains(rtsLayer)
        else
            return true
        end
        return false
    end
    java_overload :canInsertWaypoint, 2
    

    # throws Exception
    def addBuildingChase(allbinaryLayer, cellPosition)
    end
    java_overload :addBuildingChase, 2
    

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
    java_overload :moveAwayFromBuilding, 1
    

    def needToMove()
        @associatedAdvancedRTSGameLayer.waypointLogHelperP.needToMove(@associatedAdvancedRTSGameLayer, self)
        if self.isTrackingWaypoint() || @sensorAction == ::Org::Allbinary::Game::Layer::SensorActionFactory.getInstance().EVADE || (@currentTargetLayerInterfaceP != ::Org::Allbinary::Game::Layer::Special::CollidableDestroyableDamageableLayer.getNullInstance() && self.getCurrentTargetDistance() >= @longWeaponRange + @currentTargetLayerInterfaceP.getHalfHeight())
            @repeatedToLong.setStartTimeTNT()
            return true
        end
        if @repeatedToLong.isTimeTNT()
            message = "Repeating too long: " + (self.getMovementLogicAsString()).to_s
            ::Org::Allbinary::Logic::Communication::Log::ForcedLogUtil.log(message, @associatedAdvancedRTSGameLayer)
        end
        return false
    end
    java_overload :needToMove, 0
    

    def getMovementLogicAsString()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append("isTrackingWaypoint: ")
        stringBuffer.appendboolean(self.isTrackingWaypoint())
        stringBuffer.append(" sensorAction: ")
        stringBuffer.append(@sensorAction.name)
        stringBuffer.append(" getCurrentTargetLayerInterface: ")
        stringBuffer.append(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().toString(@currentTargetLayerInterfaceP))
        if @currentTargetLayerInterfaceP != ::Org::Allbinary::Game::Layer::Special::CollidableDestroyableDamageableLayer.getNullInstance()
            stringBuffer.append(" Target Range: ")
            stringBuffer.appendint(self.getCurrentTargetDistance())
            stringBuffer.append(" >= ")
            stringBuffer.appendint(((@longWeaponRange + @currentTargetLayerInterfaceP.getHalfHeight()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
        end
        return stringBuffer.to_s
    end
    java_overload :getMovementLogicAsString, 0
    

    def isMovingFromStopped()
        return @movingFromStopped
    end
    java_overload :isMovingFromStopped, 0
    

    def setMovingFromStopped(movingFromStopped)
        @movingFromStopped = movingFromStopped
    end
    java_overload :setMovingFromStopped, 1
    

    def setWaypointPathsList(waypointPathsList)
        @waypointPathsListP = waypointPathsList
    end
    java_overload :setWaypointPathsList, 1
    

    def getWaypointPathsList()
        return @waypointPathsListP
    end
    java_overload :getWaypointPathsList, 0
    

    def isMoving()
        return @moving
    end
    java_overload :isMoving, 0
    

    def setMoving(moving)
        @moving = moving
    end
    java_overload :setMoving, 1
    

    def isTrackingWaypoint()
        return @trackingWaypoint
    end
    java_overload :isTrackingWaypoint, 0
    

    def getPossibleTargetList()
        return @possibleTargetList
    end
    java_overload :getPossibleTargetList, 0
    

    def setLastPathGeographicMapCellPosition(lastPathGeographicMapCellPosition)
        @lastPathGeographicMapCellPosition = lastPathGeographicMapCellPosition
    end
    java_overload :setLastPathGeographicMapCellPosition, 1
    

    def getLastPathGeographicMapCellPosition()
        return @lastPathGeographicMapCellPosition
    end
    java_overload :getLastPathGeographicMapCellPosition, 0
    

    def setCurrentPathGeographicMapCellPosition(currentPathGeographicMapCellPosition)
        @currentPathGeographicMapCellPosition = currentPathGeographicMapCellPosition
    end
    java_overload :setCurrentPathGeographicMapCellPosition, 1
    

    def getCurrentPathGeographicMapCellPosition()
        return @currentPathGeographicMapCellPosition
    end
    java_overload :getCurrentPathGeographicMapCellPosition, 0
    

    def setSensorAction(sensorAction)
        @sensorAction = sensorAction
    end
    java_overload :setSensorAction, 1
    

    def getSensorAction()
        return @sensorAction
    end
    java_overload :getSensorAction, 0
    

    def setCurrentTargetLayerInterface(currentTargetLayerInterface)
        @currentTargetLayerInterfaceP = currentTargetLayerInterface
    end
    java_overload :setCurrentTargetLayerInterface, 1
    

    def getCurrentTargetLayerInterface()
        return @currentTargetLayerInterfaceP
    end
    java_overload :getCurrentTargetLayerInterface, 0
    

    def setCurrentTargetDistance(currentTargetDistance)
        @currentTargetDistance = currentTargetDistance
    end
    java_overload :setCurrentTargetDistance, 1
    

    def getCurrentTargetDistance()
        return @currentTargetDistance
    end
    java_overload :getCurrentTargetDistance, 0
    

    def getCompleteTimeDelayHelper()
        return @completeTimeDelayHelper
    end
    java_overload :getCompleteTimeDelayHelper, 0
    

    def getCurrentGeographicMapCellHistory()
        return @currentGeographicMapCellHistoryP
    end
    java_overload :getCurrentGeographicMapCellHistory, 0
    

    def setTrackingWaypoint(trackingWaypoint)
        @trackingWaypoint = trackingWaypoint
    end
    java_overload :setTrackingWaypoint, 1
end

module ::Org; module Allbinary; module Game; module Input; module Form; autoload :PrimaryWaypointHelper, "org/allbinary/game/input/form/PrimaryWaypointHelper" unless const_defined?(:PrimaryWaypointHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :AdvancedRTSGameLayer, "org/allbinary/game/layer/AdvancedRTSGameLayer" unless const_defined?(:AdvancedRTSGameLayer, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :RTSLayerEvent, "org/allbinary/game/layer/RTSLayerEvent" unless const_defined?(:RTSLayerEvent, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :SensorAction, "org/allbinary/game/layer/SensorAction" unless const_defined?(:SensorAction, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :SensorActionFactory, "org/allbinary/game/layer/SensorActionFactory" unless const_defined?(:SensorActionFactory, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Building; autoload :BuildingLayer, "org/allbinary/game/layer/building/BuildingLayer" unless const_defined?(:BuildingLayer, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Special; autoload :CollidableDestroyableDamageableLayer, "org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer" unless const_defined?(:CollidableDestroyableDamageableLayer, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory" unless const_defined?(:BasicColorFactory, false); end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :ForcedLogUtil, "org/allbinary/logic/communication/log/ForcedLogUtil" unless const_defined?(:ForcedLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :AllBinaryEventObject, "org/allbinary/logic/util/event/AllBinaryEventObject" unless const_defined?(:AllBinaryEventObject, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :EventStrings, "org/allbinary/logic/util/event/EventStrings" unless const_defined?(:EventStrings, false); end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellHistory, "org/allbinary/media/graphics/geography/map/GeographicMapCellHistory" unless const_defined?(:GeographicMapCellHistory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellPosition, "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition" unless const_defined?(:GeographicMapCellPosition, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :SimpleGeographicMapCellPositionFactory, "org/allbinary/media/graphics/geography/map/SimpleGeographicMapCellPositionFactory" unless const_defined?(:SimpleGeographicMapCellPositionFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module TimePackage; autoload :TimeDelayHelper, "org/allbinary/time/TimeDelayHelper" unless const_defined?(:TimeDelayHelper, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListUtil, "org/allbinary/util/BasicArrayListUtil" unless const_defined?(:BasicArrayListUtil, false); end; end; end
autoload :UnitLayer, "org/allbinary/game/layer/unit/UnitLayer" unless const_defined?(:UnitLayer, false)
autoload :UnitWaypointStrings, "org/allbinary/game/layer/unit/UnitWaypointStrings" unless const_defined?(:UnitWaypointStrings, false)

end; end; end; end; end

