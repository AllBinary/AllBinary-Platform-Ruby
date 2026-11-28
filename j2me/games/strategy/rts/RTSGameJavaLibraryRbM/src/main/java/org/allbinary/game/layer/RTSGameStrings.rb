# 
# AllBinary Open License Version 1 
# Copyright (c) 2003 AllBinary 
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
# package org.allbinary.game.layer


module ::Org; module Allbinary; module Game; module Layer

class RTSGameStrings
    attr_accessor :DRAG_TO_SPOT, :NOT_YOURS, :NEW_UNIT, :NEW_WAYPOINT, :BUILDING, :UPGRADE, :DOWNGRADE, :NO_MONEY, :SPOT_TAKEN, :BUILDING_COLLISION, :STRUCTURE_TO_CLOSE, :MAP_EDGE, :ROAD_COLLISION, :SELECT_BUILD_SPOT, :BUILD_ON_PATH, :DRAGGABLE

    def jfields_org_allbinary_game_layer_RTSGameStrings
        @DRAG_TO_SPOT = "Please Drag"
        @NOT_YOURS = "Not Yours"
        @NEW_UNIT = "New Unit"
        @NEW_WAYPOINT = "New Waypoint"
        @BUILDING = "Building"
        @UPGRADE = "Upgrading"
        @DOWNGRADE = "Downgrading"
        @NO_MONEY = "Not Enough Money"
        @SPOT_TAKEN = "Spot Taken"
        @BUILDING_COLLISION = "Building Collision"
        @STRUCTURE_TO_CLOSE = "Building To Close"
        @MAP_EDGE = "Map Edge"
        @ROAD_COLLISION = "Road Collision"
        @SELECT_BUILD_SPOT = "Select Build Spot"
        @BUILD_ON_PATH = "Not On Path"
        @DRAGGABLE = "Draggable"
    end

    def initialize
        jfields_org_allbinary_game_layer_RTSGameStrings
    end
    

    def self.getInstance()
        return @@instance
    end

    def self.instance()
        RTSGameStrings.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        RTSGameStrings.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = RTSGameStrings.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "RTSGameStrings"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

begin
    RTSGameStrings.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

