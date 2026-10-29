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
# package org.allbinary.game.input

require "org/allbinary/game/input/LayerPositionFinderInterface"

class RTSGameLayerPositionFinder
    include LayerPositionFinderInterface
    

    def self.getInstance()
        return RTSGameLayerPositionFinder.instance
    end
    

    def initialize()
    end
    

    def getLayerInterface(geographicMapCellPosition)
        return DropCellPositionHistory.getInstance().getLayerInterface(geographicMapCellPosition)
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition"
require "org/allbinary/media/graphics/geography/map/drop/DropCellPositionHistory"

class RTSGameLayerPositionFinder
    @@instance = RTSGameLayerPositionFinder.new()
end

