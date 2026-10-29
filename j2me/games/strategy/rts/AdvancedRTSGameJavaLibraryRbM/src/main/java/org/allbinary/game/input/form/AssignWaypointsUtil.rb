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
# package org.allbinary.game.input.form


class AssignWaypointsUtil
    attr_accessor :logUtil, :WAYPOINT_EVENT

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @WAYPOINT_EVENT = RTSLayerEvent.new(NullPathFindingLayer::NULL_PATH_FINDING_LAYER)
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return AssignWaypointsUtil.instance
    end
    

    def set(unitLayer, ownerAdvancedRTSGameLayer)
        begin
            list = ownerAdvancedRTSGameLayer.getWaypointBehavior().getOwnedWaypointList()
            unitWaypointBehavior = unitLayer.getWaypointBehavior()
            (list.size() - 1).step(0, -(1)) do |index|
                waypointLayer = list.get(index)
                @WAYPOINT_EVENT.setRtsLayer(waypointLayer)
                unitWaypointBehavior.onWaypointEvent(@WAYPOINT_EVENT)
            end
            waypointLayer = PrimaryWaypointHelper.getInstance().getWaypointLayer()
            if waypointLayer != NullPathFindingLayer::NULL_PATH_FINDING_LAYER
                @WAYPOINT_EVENT.setRtsLayer(waypointLayer)
                unitWaypointBehavior.onWaypointEvent(@WAYPOINT_EVENT)
            end
        rescue StandardError => e
            commonStrings = CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, "set", e)
        end
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/game/layer/AdvancedRTSGameLayer"
require "org/allbinary/game/layer/NullPathFindingLayer"
require "org/allbinary/game/layer/PathFindingLayerInterface"
require "org/allbinary/game/layer/RTSLayer"
require "org/allbinary/game/layer/RTSLayerEvent"
require "org/allbinary/game/layer/unit/UnitLayer"
require "org/allbinary/game/layer/unit/UnitWaypointBehavior"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/game/input/form/PrimaryWaypointHelper"

class AssignWaypointsUtil
    @@instance = AssignWaypointsUtil.new()
end

