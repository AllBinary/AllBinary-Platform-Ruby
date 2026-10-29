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

require "org/allbinary/game/input/LayerPositionFinderInterface"

class AdvancedRTSGameLayerPositionFinder
    include LayerPositionFinderInterface
    

    def self.getInstance()
        return AdvancedRTSGameLayerPositionFinder.instance
    end
    

    def initialize()
    end
    

    def getLayerInterface(geographicMapCellPosition)
        layerInterface = DropCellPositionHistory.getInstance().getLayerInterface(geographicMapCellPosition)
        if layerInterface == AllBinaryLayer::NULL_ALLBINARY_LAYER
            layerInterface = WaypointCellPositionHistory.getInstance().getLayerInterface(geographicMapCellPosition)
        end
        return layerInterface
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/game/layer/waypoint/WaypointCellPositionHistory"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition"
require "org/allbinary/media/graphics/geography/map/drop/DropCellPositionHistory"

class AdvancedRTSGameLayerPositionFinder
    @@instance = AdvancedRTSGameLayerPositionFinder.new()
end

