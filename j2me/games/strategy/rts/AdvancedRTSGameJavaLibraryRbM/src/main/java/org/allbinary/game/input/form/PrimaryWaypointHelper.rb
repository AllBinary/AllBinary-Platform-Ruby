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


class PrimaryWaypointHelper
    attr_accessor :waypointLayer

    def initialize_fields
        @waypointLayer = NullPathFindingLayer::NULL_PATH_FINDING_LAYER
    end
    

    def self.getInstance()
        return PrimaryWaypointHelper.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    def getWaypointLayer()
        return @waypointLayer
    end
    

    def setWaypointLayer(waypointLayer)
        @waypointLayer = waypointLayer
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/game/layer/NullPathFindingLayer"
require "org/allbinary/game/layer/PathFindingLayerInterface"
require "org/allbinary/game/layer/waypoint/WaypointLayer"

class PrimaryWaypointHelper
    @@instance = PrimaryWaypointHelper.new()
end

