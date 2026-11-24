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

class PrimaryWaypointHelper
    attr_accessor :waypointLayer

    def jfields_org_allbinary_game_input_form_PrimaryWaypointHelper
        @waypointLayer = ::Org::Allbinary::Game::Layer::NullPathFindingLayer::NULL_PATH_FINDING_LAYER
    end
    

    def self.getInstance()
        return PrimaryWaypointHelper.instance
    end
    

    def initialize()
        jfields_org_allbinary_game_input_form_PrimaryWaypointHelper
    end
    

    def getWaypointLayer()
        return @waypointLayer
    end
    

    def setWaypointLayer(waypointLayer)
        @waypointLayer = waypointLayer
    end

    def self.instance()
        PrimaryWaypointHelper.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        PrimaryWaypointHelper.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = PrimaryWaypointHelper.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "PrimaryWaypointHelper"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Game; module Layer; autoload :NullPathFindingLayer, "org/allbinary/game/layer/NullPathFindingLayer" unless const_defined?(:NullPathFindingLayer, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :PathFindingLayerInterface, "org/allbinary/game/layer/PathFindingLayerInterface" unless const_defined?(:PathFindingLayerInterface, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Waypoint; autoload :WaypointLayer, "org/allbinary/game/layer/waypoint/WaypointLayer" unless const_defined?(:WaypointLayer, false); end; end; end; end; end

begin
    PrimaryWaypointHelper.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

