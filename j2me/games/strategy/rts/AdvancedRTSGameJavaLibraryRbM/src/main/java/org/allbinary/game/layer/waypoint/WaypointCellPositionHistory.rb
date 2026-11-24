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


module ::Org; module Allbinary; module Game; module Layer; module Waypoint

class WaypointCellPositionHistory
    attr_accessor :positionList, :layerList

    def jfields_org_allbinary_game_layer_waypoint_WaypointCellPositionHistory
        @positionList = ::Org::Allbinary::Util::BasicArrayListD.new()
        @layerList = ::Org::Allbinary::Util::BasicArrayListD.new()
    end

    def initialize
        jfields_org_allbinary_game_layer_waypoint_WaypointCellPositionHistory
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
            return ::Org::Allbinary::Layer::AllBinaryLayer::NULL_ALLBINARY_LAYER
        end
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:SINGLETON, WaypointCellPositionHistory.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "WaypointCellPositionHistory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:SINGLETON].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :CellPosition, "org/allbinary/graphics/CellPosition" unless const_defined?(:CellPosition, false); end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end

begin
    WaypointCellPositionHistory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

