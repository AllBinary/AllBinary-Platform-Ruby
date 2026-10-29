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
# package org.allbinary.game.layer.waypoint


class WaypointCellPositionHistory
    attr_accessor :positionList, :layerList

    def initialize_fields
        @positionList = BasicArrayListD.new()
        @layerList = BasicArrayListD.new()
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return WaypointCellPositionHistory::SINGLETON
    end
    

    def add(cellPosition, layerInterface)
        @positionList.add(cellPosition)
        @layerList.add(layerInterface)
    end
    

    def addList(list, layerInterface)
        (list.size() - 1).step(0, -(1)) do |index|
            self.add(list.get(index), layerInterface)
        end
    end
    

    def remove(cellPosition)
        index = @positionList.indexOf(cellPosition)
        if index >= 0
            @positionList.removeAt(index)
            @layerList.removeAt(index)
        end
    end
    

    def removeLayer(layerInterface)
        index = 0
        while index != -1
            index = @layerList.indexOf(layerInterface)
            if index >= 0
                @positionList.removeAt(index)
                @layerList.removeAt(index)
            end
        end
    end
    

    def clear()
        @positionList.clear()
        @layerList.clear()
    end
    

    def isCellPositionWithDrop(cellPosition)
        return @positionList.contains(cellPosition)
    end
    

    def anyCellPositionWithDrop(list)
        (list.size() - 1).step(0, -(1)) do |index|
            if self.isCellPositionWithDrop(list.get(index))
                return true
            end
        end
        return false
    end
    

    def getLayerInterface(cellPosition)
        index = @positionList.indexOf(cellPosition)
        if index >= 0
            return @layerList.get(index)
        else
            return AllBinaryLayer::NULL_ALLBINARY_LAYER
        end
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/graphics/CellPosition"
require "org/allbinary/layer/AllBinaryLayer"

class WaypointCellPositionHistory
    SINGLETON = WaypointCellPositionHistory.new()
end

