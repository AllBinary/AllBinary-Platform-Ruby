# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.game.layer.waypoint

require "org/allbinary/game/layer/waypoint/Waypoint2LogHelper"

class Waypoint2SelectedLogHelper < Waypoint2LogHelper
    attr_accessor :logUtil, :commonSeps, :positionStrings, :stringUtil, :ENEMY_POSSIBLE_TARGET, :CLOSE_RANGE, :SENSOR_RANGE, :ONLY_TARGETS, :SHORTER_THAN_CURRENT_TARGET_DISTANCE, :CURRENT_TARGET_DESTROYED, :CURRENT_TARGET_NOT_AVAILABLE, :PROCESS_POSSIBLE_TARGET

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonSeps = CommonSeps.getInstance()
        @positionStrings = PositionStrings.getInstance()
        @stringUtil = StringUtil.getInstance()
        @ENEMY_POSSIBLE_TARGET = " Enemy Possible Target: "
        @CLOSE_RANGE = "closeRange: "
        @SENSOR_RANGE = " sensorRange: "
        @ONLY_TARGETS = " Only Targets: "
        @SHORTER_THAN_CURRENT_TARGET_DISTANCE = " isShorterThanCurrentTargetDistance: "
        @CURRENT_TARGET_DESTROYED = " isCurrentTargetDestroyed: "
        @CURRENT_TARGET_NOT_AVAILABLE = " isCurrentTargetNotAvailable: "
        @PROCESS_POSSIBLE_TARGET = "selected: processPossibleTarget1"
    end

    def initialize
        super()
        initialize_fields
    end
    

    def self.getInstance()
        return Waypoint2SelectedLogHelper.instanceC
    end
    

    def initRange(associatedAdvancedRTSGameLayer, closeRange, sensorRange)
        stringBuffer = StringMaker.new()
        stringBuffer.append(associatedAdvancedRTSGameLayer.getName())
        stringBuffer.append(@CLOSE_RANGE)
        stringBuffer.appendint(closeRange)
        stringBuffer.append(@SENSOR_RANGE)
        stringBuffer.appendint(sensorRange)
        @logUtil.putF(stringBuffer.to_s, self, "selected: initRange")
    end
    

    def processPossibleTarget(associatedAdvancedRTSGameLayer, waypointBehaviorBase, layerInterface, anotherTargetDistance, isShorterThanCurrentTargetDistance, isCurrentTargetDestroyed)
        if waypointBehaviorBase.isWaypointListEmptyOrOnlyTargets() && waypointBehaviorBase.isInSensorRange(layerInterface, anotherTargetDistance)
            stringBuffer = StringMaker.new()
            stringBuffer.append(associatedAdvancedRTSGameLayer.getName())
            stringBuffer.append(@ONLY_TARGETS)
            stringBuffer.appendboolean(waypointBehaviorBase.isWaypointListEmptyOrOnlyTargets())
            stringBuffer.append(@SHORTER_THAN_CURRENT_TARGET_DISTANCE)
            stringBuffer.appendboolean(isShorterThanCurrentTargetDistance)
            stringBuffer.append(@CURRENT_TARGET_DESTROYED)
            stringBuffer.appendboolean(isCurrentTargetDestroyed)
            stringBuffer.append(@CURRENT_TARGET_NOT_AVAILABLE)
            stringBuffer.appendboolean((waypointBehaviorBase.getCurrentTargetLayerInterface() == nil))
            @logUtil.putF(stringBuffer.to_s, self, @PROCESS_POSSIBLE_TARGET)
        end
    end
    

    def processSetTarget(associatedAdvancedRTSGameLayer, waypointBehaviorBase, layerInterface, anotherTargetDistance)
        stringBuffer = StringMaker.new()
        stringBuffer.append(associatedAdvancedRTSGameLayer.getName())
        stringBuffer.append(@commonSeps.SPACE)
        stringBuffer.append(waypointBehaviorBase.getCurrentTargetingStateString())
        stringBuffer.append(@ENEMY_POSSIBLE_TARGET)
        stringBuffer.append(layerInterface.getName())
        stringBuffer.append(" anotherTargetDistance: ")
        stringBuffer.appendint(anotherTargetDistance)
        @logUtil.putF(stringBuffer.to_s, self, "selected: processPossibleTarget2")
    end
    

    def processPossibleTargetCloser(associatedAdvancedRTSGameLayer, waypointBehaviorBase, layerInterface, anotherTargetDistance)
        stringBuffer = StringMaker.new()
        stringBuffer.append(associatedAdvancedRTSGameLayer.getName())
        stringBuffer.append(@commonSeps.SPACE)
        stringBuffer.append(waypointBehaviorBase.getCurrentTargetingStateString())
        stringBuffer.append(@ENEMY_POSSIBLE_TARGET)
        stringBuffer.append(layerInterface.getName())
        stringBuffer.append(" anotherTargetDistance: ")
        stringBuffer.appendint(anotherTargetDistance)
        @logUtil.putF(stringBuffer.to_s, self, "selected: processPossibleTarget3")
    end
    

    def setTarget(associatedAdvancedRTSGameLayer, waypointBehaviorBase, layerInterface, anotherTargetDistance)
        stringBuffer = StringMaker.new()
        stringBuffer.append(associatedAdvancedRTSGameLayer.getName())
        stringBuffer.append(@commonSeps.SPACE)
        stringBuffer.append(waypointBehaviorBase.getName())
        stringBuffer.append(" targeting: ")
        stringBuffer.append(layerInterface.getName())
        stringBuffer.append(" at: ")
        stringBuffer.appendint(anotherTargetDistance)
        stringBuffer.append(" instead of: ")
        stringBuffer.append(waypointBehaviorBase.getCurrentTargetingStateString())
        @logUtil.putF(stringBuffer.to_s, self, "selected: setTarget")
    end
    

    def setTargetPath(associatedAdvancedRTSGameLayer)
        @logUtil.putF("Target Destroyed", self, "selected: setTargetPath")
    end
    

    def setTargetPathIgnoreNewPath(associatedAdvancedRTSGameLayer, waypointBehaviorBase)
        stringBuffer = StringMaker.new()
        stringBuffer.append(associatedAdvancedRTSGameLayer.getName())
        stringBuffer.append(" Set Path To Target: ")
        stringBuffer.append(waypointBehaviorBase.getCurrentTargetLayerInterface().getName())
        stringBuffer.append(@commonSeps.SPACE)
        stringBuffer.append(@stringUtil.toString(waypointBehaviorBase.getCurrentTargetLayerInterface()))
        @logUtil.putF(stringBuffer.to_s, self, "selected: setTargetPath")
    end
    

    def processWaypoint(associatedAdvancedRTSGameLayer, waypointBehaviorBase, targetLayer, size)
        stringBuffer = StringMaker.new()
        stringBuffer.append(associatedAdvancedRTSGameLayer.getName())
        stringBuffer.append(" Size: ")
        stringBuffer.appendint(size)
        stringBuffer.append(" Waypoint: ")
        stringBuffer.append(targetLayer.getName())
        stringBuffer.append(" Target: ")
        stringBuffer.append(@stringUtil.toString(waypointBehaviorBase.getCurrentTargetLayerInterface()))
        stringBuffer.append(" isTrackingWaypoint: ")
        stringBuffer.appendboolean(waypointBehaviorBase.isTrackingWaypoint())
        stringBuffer.append(" WaypointOverridesAttacking: ")
        stringBuffer.appendboolean(waypointBehaviorBase.isWaypointOverridesAttacking())
        @logUtil.putF(stringBuffer.to_s, self, "selected: processWaypoint")
    end
    

    def processWaypointTracked(associatedAdvancedRTSGameLayer, waypointBehaviorBase)
        stringBuffer = StringMaker.new()
        stringBuffer.append(associatedAdvancedRTSGameLayer.getName())
        stringBuffer.append(" currentPathGeographicMapCellPosition: ")
        stringBuffer.append(@stringUtil.toString(waypointBehaviorBase.getCurrentPathGeographicMapCellPosition()))
        stringBuffer.append(" nextUnvisitedPathGeographicMapCellPosition: ")
        stringBuffer.append(@stringUtil.toString(waypointBehaviorBase.getNextUnvisitedPathGeographicMapCellPosition()))
        stringBuffer.append(" Tracked: ")
        stringBuffer.append(@stringUtil.toString(waypointBehaviorBase.getCurrentGeographicMapCellHistory().getTracked()))
        @logUtil.putF(stringBuffer.to_s, self, "selected: processWaypoint")
    end
    

    def processWaypointTrackedVisit(associatedAdvancedRTSGameLayer, geographicMapCellPosition)
        stringBuffer = StringMaker.new()
        stringBuffer.append(associatedAdvancedRTSGameLayer.getName())
        stringBuffer.append(" Visited: ")
        stringBuffer.append(@stringUtil.toString(geographicMapCellPosition))
        @logUtil.putF(stringBuffer.to_s, self, "selected: processWaypoint")
    end
    

    def processWaypointTrackedWithoutProgress(associatedAdvancedRTSGameLayer, reason)
        @logUtil.putF(StringMaker.new().append(associatedAdvancedRTSGameLayer.getName()).append(reason).to_s, self, "turnTo")
    end
    

    def wander(associatedAdvancedRTSGameLayer)
        @logUtil.putF(associatedAdvancedRTSGameLayer.getName(), self, "wander")
    end
    

    def targetDestroyed(associatedAdvancedRTSGameLayer)
        @logUtil.putF(StringMaker.new().append(associatedAdvancedRTSGameLayer.getName()).append(" Target Destroyed").to_s, self, "selected: processTargeting")
    end
    

    def processTargeting(associatedAdvancedRTSGameLayer, dx, dy)
        stringBuffer = StringMaker.new()
        stringBuffer.append(associatedAdvancedRTSGameLayer.getName())
        stringBuffer.append(@commonSeps.SPACE)
        stringBuffer.append(@positionStrings.DX_LABEL)
        stringBuffer.appendint(dx)
        stringBuffer.append(@commonSeps.SPACE)
        stringBuffer.append(@positionStrings.DY_LABEL)
        stringBuffer.appendint(dy)
        @logUtil.putF(stringBuffer.to_s, self, "selected: processTargeting")
    end
    

    def processTargetingNonWayPoint(associatedAdvancedRTSGameLayer, dx, dy)
        stringBuffer = StringMaker.new()
        stringBuffer.append(associatedAdvancedRTSGameLayer.getName())
        stringBuffer.append(" Targeting Non Waypoint ")
        stringBuffer.append(@positionStrings.DX_LABEL)
        stringBuffer.appendint(dx)
        stringBuffer.append(@commonSeps.SPACE)
        stringBuffer.append(@positionStrings.DY_LABEL)
        stringBuffer.appendint(dy)
        @logUtil.putF(stringBuffer.to_s, self, "selected: processTargeting")
    end
    

    def removeWaypoint(associatedAdvancedRTSGameLayer, unitWaypointBehavior2, waypointLayer, reason)
        stringBuffer = StringMaker.new()
        stringBuffer.append(associatedAdvancedRTSGameLayer.getName())
        stringBuffer.append(@commonSeps.SPACE)
        stringBuffer.append(unitWaypointBehavior2.getName())
        stringBuffer.append(" remove: ")
        stringBuffer.append(waypointLayer.getName())
        stringBuffer.append(" because: ")
        stringBuffer.append(reason)
        @logUtil.putF(stringBuffer.to_s, self, "selected: removeWaypoint")
    end
    

    def removeWaypointList(associatedAdvancedRTSGameLayer, unitWaypointBehavior2, list)
        stringBuffer = StringMaker.new()
        stringBuffer.append(associatedAdvancedRTSGameLayer.getName())
        stringBuffer.append(@commonSeps.SPACE)
        stringBuffer.append(unitWaypointBehavior2.getName())
        stringBuffer.append(" Waypoints: ")
        stringBuffer.append(@stringUtil.toString(list))
        @logUtil.putF(stringBuffer.to_s, self, "selected: removeWaypoint")
    end
    

    def removeWaypointClear(associatedAdvancedRTSGameLayer)
        @logUtil.putF(StringMaker.new().append(associatedAdvancedRTSGameLayer.getName()).append(" Clearing removed waypoint").to_s, self, "selected: removeWaypoint")
    end
    

    def clearTarget(associatedAdvancedRTSGameLayer)
        @logUtil.putF(StringMaker.new().append(associatedAdvancedRTSGameLayer.getName()).append(" Cleared Target").to_s, self, "selected: clearTarget")
    end
    

    def addWaypointFromUser(associatedAdvancedRTSGameLayer, advancedRTSGameLayer)
        stringBuffer = StringMaker.new()
        stringBuffer.append(associatedAdvancedRTSGameLayer.getName())
        stringBuffer.append(" Adding Waypoint to Selected: ")
        stringBuffer.append(advancedRTSGameLayer.getName())
        if advancedRTSGameLayer.getParentLayer() != nil
            stringBuffer.append(" With Parent: ")
            stringBuffer.append(advancedRTSGameLayer.getParentLayer().getName())
        end
        @logUtil.putF(stringBuffer.to_s, self, "selected: onWaypointEvent")
    end
    

    def targetMovedSoRetarget(associatedAdvancedRTSGameLayer)
        @logUtil.putF(StringMaker.new().append(associatedAdvancedRTSGameLayer.getName()).append(" - target moved so retargeting").to_s, self, "turnTo")
    end

    def self.instanceC()
        return defined?(@@instanceC) ? @@instanceC : nil
    end

    def self.instanceC=(value)
        @@instanceC = value
    end
end

require "org/allbinary/game/layer/PathFindingLayerInterface"
require "org/allbinary/game/layer/WaypointBehaviorBase"
require "org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/math/PositionStrings"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition"
require "org/allbinary/util/BasicArrayList"

class Waypoint2SelectedLogHelper
    @@instanceC = Waypoint2SelectedLogHelper.new()
end

