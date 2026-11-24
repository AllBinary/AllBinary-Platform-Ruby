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


module ::Org; module Allbinary; module Game; module Input; module Form

class AssignWaypointsUtil
    attr_accessor :logUtil, :WAYPOINT_EVENT

    def jfields_org_allbinary_game_input_form_AssignWaypointsUtil
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @WAYPOINT_EVENT = ::Org::Allbinary::Game::Layer::RTSLayerEvent.new(::Org::Allbinary::Game::Layer::NullPathFindingLayer::NULL_PATH_FINDING_LAYER)
    end

    def initialize
        jfields_org_allbinary_game_input_form_AssignWaypointsUtil
    end
    

    def self.getInstance()
        return AssignWaypointsUtil.instance
    end
    

    def set(unitLayer, ownerAdvancedRTSGameLayer)
        begin
            list = ownerAdvancedRTSGameLayer.getWaypointBehavior().getOwnedWaypointList()
            unitWaypointBehavior = unitLayer.getWaypointBehavior()
            (list.size() - 1).step(0, -(1)) do |index|
                ownedWaypointLayer = list.get(index)
                @WAYPOINT_EVENT.setRtsLayer(ownedWaypointLayer)
                unitWaypointBehavior.onWaypointEvent(@WAYPOINT_EVENT)
            end
            waypointLayer = PrimaryWaypointHelper.getInstance().getWaypointLayer()
            if waypointLayer != ::Org::Allbinary::Game::Layer::NullPathFindingLayer::NULL_PATH_FINDING_LAYER
                @WAYPOINT_EVENT.setRtsLayer(waypointLayer)
                unitWaypointBehavior.onWaypointEvent(@WAYPOINT_EVENT)
            end
        rescue StandardError => e
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, "set", e)
        end
    end

    def self.instance()
        AssignWaypointsUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        AssignWaypointsUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = AssignWaypointsUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "AssignWaypointsUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Game; module Layer; autoload :AdvancedRTSGameLayer, "org/allbinary/game/layer/AdvancedRTSGameLayer" unless const_defined?(:AdvancedRTSGameLayer, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :NullPathFindingLayer, "org/allbinary/game/layer/NullPathFindingLayer" unless const_defined?(:NullPathFindingLayer, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :PathFindingLayerInterface, "org/allbinary/game/layer/PathFindingLayerInterface" unless const_defined?(:PathFindingLayerInterface, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :RTSLayer, "org/allbinary/game/layer/RTSLayer" unless const_defined?(:RTSLayer, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :RTSLayerEvent, "org/allbinary/game/layer/RTSLayerEvent" unless const_defined?(:RTSLayerEvent, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Unit; autoload :UnitLayer, "org/allbinary/game/layer/unit/UnitLayer" unless const_defined?(:UnitLayer, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Unit; autoload :UnitWaypointBehavior, "org/allbinary/game/layer/unit/UnitWaypointBehavior" unless const_defined?(:UnitWaypointBehavior, false); end; end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
autoload :PrimaryWaypointHelper, "org/allbinary/game/input/form/PrimaryWaypointHelper" unless const_defined?(:PrimaryWaypointHelper, false)

begin
    AssignWaypointsUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

