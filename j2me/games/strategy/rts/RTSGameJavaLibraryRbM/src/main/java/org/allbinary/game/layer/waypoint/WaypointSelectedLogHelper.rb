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

require "org/allbinary/game/layer/waypoint/WaypointLogHelper"

class WaypointSelectedLogHelper < WaypointLogHelper
    attr_accessor :logUtil, :commonSeps, :stringUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonSeps = CommonSeps.getInstance()
        @stringUtil = StringUtil.getInstance()
    end

    def initialize
        super()
        initialize_fields
    end
    

    def self.getInstance()
        return WaypointSelectedLogHelper.instanceC
    end
    

    def onWaypointEvent(associatedAdvancedRTSGameLayer, advancedRTSGameLayer)
        stringBuffer = StringMaker.new()
        stringBuffer.append(associatedAdvancedRTSGameLayer.getName())
        stringBuffer.append(" onWaypointEvent: ")
        stringBuffer.append(advancedRTSGameLayer.getName())
        if advancedRTSGameLayer.getParentLayer() != nil
            stringBuffer.append(" With Parent: ")
            stringBuffer.append(advancedRTSGameLayer.getParentLayer().getName())
        end
        @logUtil.putF(stringBuffer.to_s, self, "onWaypointEvent")
    end
    

    def addWaypointFromBuilding(associatedAdvancedRTSGameLayer, advancedRTSGameLayer)
        stringBuffer = StringMaker.new()
        stringBuffer.append(associatedAdvancedRTSGameLayer.getName())
        stringBuffer.append(" Adding Waypoint: ")
        stringBuffer.append(advancedRTSGameLayer.getName())
        if advancedRTSGameLayer.getParentLayer() != nil
            stringBuffer.append(" With Parent: ")
            stringBuffer.append(advancedRTSGameLayer.getParentLayer().getName())
        end
        @logUtil.putF(stringBuffer.to_s, self, "selected: onWaypointEvent")
    end
    

    def addWaypointFromBuildingList(associatedAdvancedRTSGameLayer, advancedRTSGameLayer, list)
        stringBuffer = StringMaker.new()
        stringBuffer.append(associatedAdvancedRTSGameLayer.getName())
        stringBuffer.append(" Waypoints: ")
        stringBuffer.append(@stringUtil.toString(list))
        @logUtil.putF(stringBuffer.to_s, self, "selected: onWaypointEvent")
    end
    

    def insertWaypoint(associatedAdvancedRTSGameLayer, index, rtsLayer, waypointName)
        stringBuffer = StringMaker.new()
        stringBuffer.append(associatedAdvancedRTSGameLayer.getName())
        stringBuffer.append(@commonSeps.SPACE)
        stringBuffer.append(waypointName)
        stringBuffer.append(" Insert: ")
        stringBuffer.append(rtsLayer.getName())
        stringBuffer.append(" for Waypoint: ")
        @logUtil.putF(stringBuffer.to_s, self, "selected: insertWaypoint")
    end
    

    def insertWaypointList(associatedAdvancedRTSGameLayer, index, rtsLayer, waypointName, list)
        stringBuffer = StringMaker.new()
        stringBuffer.append(associatedAdvancedRTSGameLayer.getName())
        stringBuffer.append(@commonSeps.SPACE)
        stringBuffer.append(waypointName)
        stringBuffer.append(" Insert: ")
        stringBuffer.append(rtsLayer.getName())
        stringBuffer.append(" Waypoints: ")
        stringBuffer.append(@stringUtil.toString(list))
        @logUtil.putF(stringBuffer.to_s, self, "selected: insertWaypoint")
    end
    

    def setRandomGeographicMapCellHistoryList(associatedAdvancedRTSGameLayer, pathsList)
        size = pathsList.size()
        stringBuffer = StringMaker.new()
        stringBuffer.append(associatedAdvancedRTSGameLayer.getName())
        stringBuffer.append(@commonSeps.SPACE)
        stringBuffer.append(CommonLabels.getInstance().START)
        stringBuffer.appendint(size)
        stringBuffer.append(" -> ")
        stringBuffer.append(@stringUtil.toString(pathsList))
        @logUtil.putF(stringBuffer.to_s, self, "selected: setRandomGeographicMapCellHistory")
    end
    

    def moveAwayFromBuilding(associatedAdvancedRTSGameLayer)
        @logUtil.putF(StringMaker.new().append(associatedAdvancedRTSGameLayer.getName()).append(" Trying to move away from building").to_s, self, "selected: moveAwayFromBuilding")
    end
    

    def needToMove(associatedAdvancedRTSGameLayer, unitWaypointBehavior)
        @logUtil.putF(StringMaker.new().append(associatedAdvancedRTSGameLayer.getName()).append(unitWaypointBehavior.getMovementLogicAsString()).to_s, self, "needToMove")
    end
    

    def setRandomGeographicMapCellHistory(associatedAdvancedRTSGameLayer)
        @logUtil.putF(StringMaker.new().append(associatedAdvancedRTSGameLayer.getName()).append(" pathsList is null").to_s, self, "setRandomGeographicMapCellHistory")
    end
    

    def setCurrentPathGeographicMapCellPosition(associatedAdvancedRTSGameLayer, existingCurrentPathGeographicMapCellPosition, currentPathGeographicMapCellPosition)
        if existingCurrentPathGeographicMapCellPosition == nil
            @logUtil.putF(StringMaker.new().append(associatedAdvancedRTSGameLayer.getName()).append(" currentPathGeographicMapCellPosition: ").append(@stringUtil.toString(currentPathGeographicMapCellPosition)).to_s, self, "setCurrentPathGeographicMapCellPosition")
        end
    end
    

    def setNextUnvisitedPathGeographicMapCellPosition(associatedAdvancedRTSGameLayer, existingNextUnvisitedPathGeographicMapCellPosition, nextUnvisitedPathGeographicMapCellPosition)
        if existingNextUnvisitedPathGeographicMapCellPosition != nextUnvisitedPathGeographicMapCellPosition
            @logUtil.putF(StringMaker.new().append(associatedAdvancedRTSGameLayer.getName()).append(" nextUnvisitedPathGeographicMapCellPosition: ").append(@stringUtil.toString(nextUnvisitedPathGeographicMapCellPosition)).to_s, self, "setNextUnvisitedPathGeographicMapCellPosition")
        end
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
require "org/allbinary/string/CommonLabels"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition"
require "org/allbinary/util/BasicArrayList"

class WaypointSelectedLogHelper
    @@instanceC = WaypointSelectedLogHelper.new()
end

