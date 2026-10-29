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


class RTSGameStrings
    attr_accessor :DRAG_TO_SPOT, :NOT_YOURS, :NEW_UNIT, :NEW_WAYPOINT, :BUILDING, :UPGRADE, :DOWNGRADE, :NO_MONEY, :SPOT_TAKEN, :BUILDING_COLLISION, :STRUCTURE_TO_CLOSE, :MAP_EDGE, :ROAD_COLLISION, :SELECT_BUILD_SPOT, :BUILD_ON_PATH, :DRAGGABLE

    def initialize_fields
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
        initialize_fields
    end
    

    def self.getInstance()
        return RTSGameStrings.instance
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

class RTSGameStrings
    @@instance = RTSGameStrings.new()
end

