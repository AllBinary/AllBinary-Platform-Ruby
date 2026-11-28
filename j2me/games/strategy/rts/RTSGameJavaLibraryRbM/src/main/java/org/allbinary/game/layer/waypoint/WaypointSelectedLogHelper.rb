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
require "org/allbinary/game/layer/waypoint/WaypointLogHelper"

module ::Org; module Allbinary; module Game; module Layer; module Waypoint

class WaypointSelectedLogHelper < WaypointLogHelper
    attr_accessor :logUtil, :commonSeps, :stringUtil

    def jfields_org_allbinary_game_layer_waypoint_WaypointSelectedLogHelper
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonSeps = ::Org::Allbinary::StringPackage::CommonSeps.getInstance()
        @stringUtil = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance()
    end

    def initialize
        super()
        jfields_org_allbinary_game_layer_waypoint_WaypointSelectedLogHelper
    end
    

    def self.getInstance()
        return @@instanceC
    end
    

    def onWaypointEvent(associatedAdvancedRTSGameLayer, advancedRTSGameLayer)
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(associatedAdvancedRTSGameLayer.getName())
        stringBuffer.append(" onWaypointEvent: ")
        stringBuffer.append(advancedRTSGameLayer.getName())
        if advancedRTSGameLayer.getParentLayer() != nil
            stringBuffer.append(" With Parent: ")
            stringBuffer.append(advancedRTSGameLayer.getParentLayer().getName())
        end
        @logUtil.putF(stringBuffer.to_s, self, "onWaypointEvent")
    end
    java_overload :onWaypointEvent, 2
    

    def addWaypointFromBuilding(associatedAdvancedRTSGameLayer, advancedRTSGameLayer)
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(associatedAdvancedRTSGameLayer.getName())
        stringBuffer.append(" Adding Waypoint: ")
        stringBuffer.append(advancedRTSGameLayer.getName())
        if advancedRTSGameLayer.getParentLayer() != nil
            stringBuffer.append(" With Parent: ")
            stringBuffer.append(advancedRTSGameLayer.getParentLayer().getName())
        end
        @logUtil.putF(stringBuffer.to_s, self, "selected: onWaypointEvent")
    end
    java_overload :addWaypointFromBuilding, 2
    

    def addWaypointFromBuildingList(associatedAdvancedRTSGameLayer, advancedRTSGameLayer, list)
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(associatedAdvancedRTSGameLayer.getName())
        stringBuffer.append(" Waypoints: ")
        stringBuffer.append(@stringUtil.toString(list))
        @logUtil.putF(stringBuffer.to_s, self, "selected: onWaypointEvent")
    end
    java_overload :addWaypointFromBuildingList, 3
    

    def insertWaypoint(associatedAdvancedRTSGameLayer, index, rtsLayer, waypointName)
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(associatedAdvancedRTSGameLayer.getName())
        stringBuffer.append(@commonSeps.SPACE)
        stringBuffer.append(waypointName)
        stringBuffer.append(" Insert: ")
        stringBuffer.append(rtsLayer.getName())
        stringBuffer.append(" for Waypoint: ")
        @logUtil.putF(stringBuffer.to_s, self, "selected: insertWaypoint")
    end
    java_overload :insertWaypoint, 4
    

    def insertWaypointList(associatedAdvancedRTSGameLayer, index, rtsLayer, waypointName, list)
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(associatedAdvancedRTSGameLayer.getName())
        stringBuffer.append(@commonSeps.SPACE)
        stringBuffer.append(waypointName)
        stringBuffer.append(" Insert: ")
        stringBuffer.append(rtsLayer.getName())
        stringBuffer.append(" Waypoints: ")
        stringBuffer.append(@stringUtil.toString(list))
        @logUtil.putF(stringBuffer.to_s, self, "selected: insertWaypoint")
    end
    java_overload :insertWaypointList, 5
    

    def setRandomGeographicMapCellHistoryList(associatedAdvancedRTSGameLayer, pathsList)
        size = pathsList.size()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(associatedAdvancedRTSGameLayer.getName())
        stringBuffer.append(@commonSeps.SPACE)
        stringBuffer.append(::Org::Allbinary::StringPackage::CommonLabels.getInstance().START)
        stringBuffer.appendint(size)
        stringBuffer.append(" -> ")
        stringBuffer.append(@stringUtil.toString(pathsList))
        @logUtil.putF(stringBuffer.to_s, self, "selected: setRandomGeographicMapCellHistory")
    end
    java_overload :setRandomGeographicMapCellHistoryList, 2
    

    def moveAwayFromBuilding(associatedAdvancedRTSGameLayer)
        @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(associatedAdvancedRTSGameLayer.getName()).append(" Trying to move away from building").to_s, self, "selected: moveAwayFromBuilding")
    end
    java_overload :moveAwayFromBuilding, 1
    

    def needToMove(associatedAdvancedRTSGameLayer, unitWaypointBehavior)
        @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(associatedAdvancedRTSGameLayer.getName()).append(unitWaypointBehavior.getMovementLogicAsString()).to_s, self, "needToMove")
    end
    java_overload :needToMove, 2
    

    def setRandomGeographicMapCellHistory(associatedAdvancedRTSGameLayer)
        @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(associatedAdvancedRTSGameLayer.getName()).append(" pathsList is null").to_s, self, "setRandomGeographicMapCellHistory")
    end
    java_overload :setRandomGeographicMapCellHistory, 1
    

    def setCurrentPathGeographicMapCellPosition(associatedAdvancedRTSGameLayer, existingCurrentPathGeographicMapCellPosition, currentPathGeographicMapCellPosition)
        if existingCurrentPathGeographicMapCellPosition == nil
            @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(associatedAdvancedRTSGameLayer.getName()).append(" currentPathGeographicMapCellPosition: ").append(@stringUtil.toString(currentPathGeographicMapCellPosition)).to_s, self, "setCurrentPathGeographicMapCellPosition")
        end
    end
    java_overload :setCurrentPathGeographicMapCellPosition, 3
    

    def setNextUnvisitedPathGeographicMapCellPosition(associatedAdvancedRTSGameLayer, existingNextUnvisitedPathGeographicMapCellPosition, nextUnvisitedPathGeographicMapCellPosition)
        if existingNextUnvisitedPathGeographicMapCellPosition != nextUnvisitedPathGeographicMapCellPosition
            @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(associatedAdvancedRTSGameLayer.getName()).append(" nextUnvisitedPathGeographicMapCellPosition: ").append(@stringUtil.toString(nextUnvisitedPathGeographicMapCellPosition)).to_s, self, "setNextUnvisitedPathGeographicMapCellPosition")
        end
    end
    java_overload :setNextUnvisitedPathGeographicMapCellPosition, 3

    def self.instanceC()
        WaypointSelectedLogHelper.java_static_fields unless @java_static_fields_started
        return defined?(@@instanceC) ? @@instanceC : nil
    end

    def self.instanceC=(value)
        WaypointSelectedLogHelper.java_static_fields unless @java_static_fields_started
        @@instanceC = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instanceC = WaypointSelectedLogHelper.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "WaypointSelectedLogHelper"
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
module ::Org; module Allbinary; module StringPackage; autoload :CommonLabels, "org/allbinary/string/CommonLabels" unless const_defined?(:CommonLabels, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellPosition, "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition" unless const_defined?(:GeographicMapCellPosition, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end

begin
    WaypointSelectedLogHelper.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

