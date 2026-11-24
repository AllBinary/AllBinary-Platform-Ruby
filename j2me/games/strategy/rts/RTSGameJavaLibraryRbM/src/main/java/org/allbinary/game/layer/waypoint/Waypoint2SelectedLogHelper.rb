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

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
require "org/allbinary/game/layer/waypoint/Waypoint2LogHelper"

module ::Org; module Allbinary; module Game; module Layer; module Waypoint

class Waypoint2SelectedLogHelper < Waypoint2LogHelper
    attr_accessor :logUtil, :commonSeps, :positionStrings, :stringUtil, :ENEMY_POSSIBLE_TARGET, :CLOSE_RANGE, :SENSOR_RANGE, :ONLY_TARGETS, :SHORTER_THAN_CURRENT_TARGET_DISTANCE, :CURRENT_TARGET_DESTROYED, :CURRENT_TARGET_NOT_AVAILABLE, :PROCESS_POSSIBLE_TARGET

    def jfields_org_allbinary_game_layer_waypoint_Waypoint2SelectedLogHelper
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonSeps = ::Org::Allbinary::StringPackage::CommonSeps.getInstance()
        @positionStrings = ::Org::Allbinary::MathPackage::PositionStrings.getInstance()
        @stringUtil = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance()
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
        jfields_org_allbinary_game_layer_waypoint_Waypoint2SelectedLogHelper
    end
    

    def self.getInstance()
        return Waypoint2SelectedLogHelper.instanceC
    end
    

    def initRange(associatedAdvancedRTSGameLayer, closeRange, sensorRange)
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(associatedAdvancedRTSGameLayer.getName())
        stringBuffer.append(@CLOSE_RANGE)
        stringBuffer.appendint(closeRange)
        stringBuffer.append(@SENSOR_RANGE)
        stringBuffer.appendint(sensorRange)
        @logUtil.putF(stringBuffer.to_s, self, "selected: initRange")
    end
    java_overload :initRange, 3
    

    def processPossibleTarget(associatedAdvancedRTSGameLayer, waypointBehaviorBase, layerInterface, anotherTargetDistance, isShorterThanCurrentTargetDistance, isCurrentTargetDestroyed)
        if waypointBehaviorBase.isWaypointListEmptyOrOnlyTargets() && waypointBehaviorBase.isInSensorRange(layerInterface, anotherTargetDistance)
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
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
    java_overload :processPossibleTarget, 6
    

    def processSetTarget(associatedAdvancedRTSGameLayer, waypointBehaviorBase, layerInterface, anotherTargetDistance)
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(associatedAdvancedRTSGameLayer.getName())
        stringBuffer.append(@commonSeps.SPACE)
        stringBuffer.append(waypointBehaviorBase.getCurrentTargetingStateString())
        stringBuffer.append(@ENEMY_POSSIBLE_TARGET)
        stringBuffer.append(layerInterface.getName())
        stringBuffer.append(" anotherTargetDistance: ")
        stringBuffer.appendint(anotherTargetDistance)
        @logUtil.putF(stringBuffer.to_s, self, "selected: processPossibleTarget2")
    end
    java_overload :processSetTarget, 4
    

    def processPossibleTargetCloser(associatedAdvancedRTSGameLayer, waypointBehaviorBase, layerInterface, anotherTargetDistance)
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(associatedAdvancedRTSGameLayer.getName())
        stringBuffer.append(@commonSeps.SPACE)
        stringBuffer.append(waypointBehaviorBase.getCurrentTargetingStateString())
        stringBuffer.append(@ENEMY_POSSIBLE_TARGET)
        stringBuffer.append(layerInterface.getName())
        stringBuffer.append(" anotherTargetDistance: ")
        stringBuffer.appendint(anotherTargetDistance)
        @logUtil.putF(stringBuffer.to_s, self, "selected: processPossibleTarget3")
    end
    java_overload :processPossibleTargetCloser, 4
    

    def setTarget(associatedAdvancedRTSGameLayer, waypointBehaviorBase, layerInterface, anotherTargetDistance)
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
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
    java_overload :setTarget, 4
    

    def setTargetPath(associatedAdvancedRTSGameLayer)
        @logUtil.putF("Target Destroyed", self, "selected: setTargetPath")
    end
    java_overload :setTargetPath, 1
    

    def setTargetPathIgnoreNewPath(associatedAdvancedRTSGameLayer, waypointBehaviorBase)
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(associatedAdvancedRTSGameLayer.getName())
        stringBuffer.append(" Set Path To Target: ")
        stringBuffer.append(waypointBehaviorBase.getCurrentTargetLayerInterface().getName())
        stringBuffer.append(@commonSeps.SPACE)
        stringBuffer.append(@stringUtil.toString(waypointBehaviorBase.getCurrentTargetLayerInterface()))
        @logUtil.putF(stringBuffer.to_s, self, "selected: setTargetPath")
    end
    java_overload :setTargetPathIgnoreNewPath, 2
    

    def processWaypoint(associatedAdvancedRTSGameLayer, waypointBehaviorBase, targetLayer, size)
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
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
    java_overload :processWaypoint, 4
    

    def processWaypointTracked(associatedAdvancedRTSGameLayer, waypointBehaviorBase)
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(associatedAdvancedRTSGameLayer.getName())
        stringBuffer.append(" currentPathGeographicMapCellPosition: ")
        stringBuffer.append(@stringUtil.toString(waypointBehaviorBase.getCurrentPathGeographicMapCellPosition()))
        stringBuffer.append(" nextUnvisitedPathGeographicMapCellPosition: ")
        stringBuffer.append(@stringUtil.toString(waypointBehaviorBase.getNextUnvisitedPathGeographicMapCellPosition()))
        stringBuffer.append(" Tracked: ")
        stringBuffer.append(@stringUtil.toString(waypointBehaviorBase.getCurrentGeographicMapCellHistory().getTracked()))
        @logUtil.putF(stringBuffer.to_s, self, "selected: processWaypoint")
    end
    java_overload :processWaypointTracked, 2
    

    def processWaypointTrackedVisit(associatedAdvancedRTSGameLayer, geographicMapCellPosition)
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(associatedAdvancedRTSGameLayer.getName())
        stringBuffer.append(" Visited: ")
        stringBuffer.append(@stringUtil.toString(geographicMapCellPosition))
        @logUtil.putF(stringBuffer.to_s, self, "selected: processWaypoint")
    end
    java_overload :processWaypointTrackedVisit, 2
    

    def processWaypointTrackedWithoutProgress(associatedAdvancedRTSGameLayer, reason)
        @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(associatedAdvancedRTSGameLayer.getName()).append(reason).to_s, self, "turnTo")
    end
    java_overload :processWaypointTrackedWithoutProgress, 2
    

    def wander(associatedAdvancedRTSGameLayer)
        @logUtil.putF(associatedAdvancedRTSGameLayer.getName(), self, "wander")
    end
    java_overload :wander, 1
    

    def targetDestroyed(associatedAdvancedRTSGameLayer)
        @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(associatedAdvancedRTSGameLayer.getName()).append(" Target Destroyed").to_s, self, "selected: processTargeting")
    end
    java_overload :targetDestroyed, 1
    

    def processTargeting(associatedAdvancedRTSGameLayer, dx, dy)
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(associatedAdvancedRTSGameLayer.getName())
        stringBuffer.append(@commonSeps.SPACE)
        stringBuffer.append(@positionStrings.DX_LABEL)
        stringBuffer.appendint(dx)
        stringBuffer.append(@commonSeps.SPACE)
        stringBuffer.append(@positionStrings.DY_LABEL)
        stringBuffer.appendint(dy)
        @logUtil.putF(stringBuffer.to_s, self, "selected: processTargeting")
    end
    java_overload :processTargeting, 3
    

    def processTargetingNonWayPoint(associatedAdvancedRTSGameLayer, dx, dy)
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(associatedAdvancedRTSGameLayer.getName())
        stringBuffer.append(" Targeting Non Waypoint ")
        stringBuffer.append(@positionStrings.DX_LABEL)
        stringBuffer.appendint(dx)
        stringBuffer.append(@commonSeps.SPACE)
        stringBuffer.append(@positionStrings.DY_LABEL)
        stringBuffer.appendint(dy)
        @logUtil.putF(stringBuffer.to_s, self, "selected: processTargeting")
    end
    java_overload :processTargetingNonWayPoint, 3
    

    def removeWaypoint(associatedAdvancedRTSGameLayer, unitWaypointBehavior2, waypointLayer, reason)
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(associatedAdvancedRTSGameLayer.getName())
        stringBuffer.append(@commonSeps.SPACE)
        stringBuffer.append(unitWaypointBehavior2.getName())
        stringBuffer.append(" remove: ")
        stringBuffer.append(waypointLayer.getName())
        stringBuffer.append(" because: ")
        stringBuffer.append(reason)
        @logUtil.putF(stringBuffer.to_s, self, "selected: removeWaypoint")
    end
    java_overload :removeWaypoint, 4
    

    def removeWaypointList(associatedAdvancedRTSGameLayer, unitWaypointBehavior2, list)
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(associatedAdvancedRTSGameLayer.getName())
        stringBuffer.append(@commonSeps.SPACE)
        stringBuffer.append(unitWaypointBehavior2.getName())
        stringBuffer.append(" Waypoints: ")
        stringBuffer.append(@stringUtil.toString(list))
        @logUtil.putF(stringBuffer.to_s, self, "selected: removeWaypoint")
    end
    java_overload :removeWaypointList, 3
    

    def removeWaypointClear(associatedAdvancedRTSGameLayer)
        @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(associatedAdvancedRTSGameLayer.getName()).append(" Clearing removed waypoint").to_s, self, "selected: removeWaypoint")
    end
    java_overload :removeWaypointClear, 1
    

    def clearTarget(associatedAdvancedRTSGameLayer)
        @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(associatedAdvancedRTSGameLayer.getName()).append(" Cleared Target").to_s, self, "selected: clearTarget")
    end
    java_overload :clearTarget, 1
    

    def addWaypointFromUser(associatedAdvancedRTSGameLayer, advancedRTSGameLayer)
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(associatedAdvancedRTSGameLayer.getName())
        stringBuffer.append(" Adding Waypoint to Selected: ")
        stringBuffer.append(advancedRTSGameLayer.getName())
        if advancedRTSGameLayer.getParentLayer() != nil
            stringBuffer.append(" With Parent: ")
            stringBuffer.append(advancedRTSGameLayer.getParentLayer().getName())
        end
        @logUtil.putF(stringBuffer.to_s, self, "selected: onWaypointEvent")
    end
    java_overload :addWaypointFromUser, 2
    

    def targetMovedSoRetarget(associatedAdvancedRTSGameLayer)
        @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(associatedAdvancedRTSGameLayer.getName()).append(" - target moved so retargeting").to_s, self, "turnTo")
    end
    java_overload :targetMovedSoRetarget, 1

    def self.instanceC()
        Waypoint2SelectedLogHelper.java_static_fields unless @java_static_fields_started
        return defined?(@@instanceC) ? @@instanceC : nil
    end

    def self.instanceC=(value)
        Waypoint2SelectedLogHelper.java_static_fields unless @java_static_fields_started
        @@instanceC = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instanceC = Waypoint2SelectedLogHelper.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "Waypoint2SelectedLogHelper"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Game; module Layer; autoload :PathFindingLayerInterface, "org/allbinary/game/layer/PathFindingLayerInterface" unless const_defined?(:PathFindingLayerInterface, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :WaypointBehaviorBase, "org/allbinary/game/layer/WaypointBehaviorBase" unless const_defined?(:WaypointBehaviorBase, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Special; autoload :CollidableDestroyableDamageableLayer, "org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer" unless const_defined?(:CollidableDestroyableDamageableLayer, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :PositionStrings, "org/allbinary/math/PositionStrings" unless const_defined?(:PositionStrings, false); end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellPosition, "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition" unless const_defined?(:GeographicMapCellPosition, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end

begin
    Waypoint2SelectedLogHelper.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

