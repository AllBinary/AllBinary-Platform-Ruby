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

# require "javax/microedition/lcdui/game/SimpleTiledLayer"
# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/game/layer/building/event/BuildingEventListenerInterface"
require "org/allbinary/layer/event/ScrollMapEventListenerInterface"

class VisibleCellPositionsSingleton
    include BuildingEventListenerInterface
    include ScrollMapEventListenerInterface
    attr_accessor :stationaryVisibleCellPositions, :visibleCellPositions, :currentlyVisibleCellPositions, :ALL_VISIBLE_TILEDLAYER, :simpleTiledLayer, :paintSimpleTiledLayer, :currentIndex

    def initialize_fields
        @stationaryVisibleCellPositions = NullUtil.getInstance().NULL_SHORT_ARRAY_ARRAY
        @visibleCellPositions = NullUtil.getInstance().NULL_SHORT_ARRAY_ARRAY
        @currentlyVisibleCellPositions = NullUtil.getInstance().NULL_SHORT_ARRAY_ARRAY
        @ALL_VISIBLE_TILEDLAYER = SimpleTiledLayer.new(0, 0, 0, 0)
        @simpleTiledLayer = @ALL_VISIBLE_TILEDLAYER
        @paintSimpleTiledLayer = @ALL_VISIBLE_TILEDLAYER
        @currentIndex = 0
    end
    

    def self.getInstance()
        return VisibleCellPositionsSingleton.instance
    end
    

    def initialize()
        initialize_fields
        LocalPlayerBuildingEventHandler.getInstance().addListenerInterface(self)
        ScrollMapEventHandler.getInstance().addListenerInterface(self)
    end
    

    def init(simpleTiledLayer)
        @paintSimpleTiledLayer = @ALL_VISIBLE_TILEDLAYER
        @currentIndex = 0
        rows = simpleTiledLayer.getRows()
        columns = simpleTiledLayer.getColumns()
        @stationaryVisibleCellPositions = Array.new(rows) { Array.new(columns, 0) }
        @visibleCellPositions = Array.new(rows) { Array.new(columns, 0) }
        @currentlyVisibleCellPositions = Array.new(rows) { Array.new(columns, 0) }
        self.setSimpleTiledLayer(simpleTiledLayer)
    end
    

    def onEvent(eventObject)
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, self)
    end
    

    # throws Exception
    def onBuildingEvent(event)
        @paintSimpleTiledLayer = @simpleTiledLayer
    end
    

    # throws Exception
    def onMoveEvent(scrollMapEvent)
        self.move(scrollMapEvent.getDx(), scrollMapEvent.getDy())
    end
    

    def addStationaryCellPositions(list)
        (list.size() - 1).step(0, -(1)) do |index|
            cellPosition = list.get(index)
            @stationaryVisibleCellPositions[cellPosition.getRow()][cellPosition.getColumn()] += 1
        end
    end
    

    def removeStationaryCellPositions(list)
        (list.size() - 1).step(0, -(1)) do |index|
            cellPosition = list.get(index)
            @stationaryVisibleCellPositions[cellPosition.getRow()][cellPosition.getColumn()] -= 1
        end
    end
    

    def update()
        if @currentIndex == 0
            temp = @currentlyVisibleCellPositions
            @currentlyVisibleCellPositions = @visibleCellPositions
            @visibleCellPositions = temp
            (@visibleCellPositions.length - 1).step(0, -(1)) do |index|
                (@visibleCellPositions[0].length - 1).step(0, -(1)) do |index2|
                    @visibleCellPositions[index][index2] = @stationaryVisibleCellPositions[index][index2]
                end
            end
        end
        @currentIndex += 1
        if @currentIndex > 10
            @currentIndex = 0
        end
    end
    

    def shouldProcess()
        if @currentIndex == 0
            return true
        else
            return false
        end
    end
    

    def addCellPositions(list)
        (list.size() - 1).step(0, -(1)) do |index|
            cellPosition = list.get(index)
            @visibleCellPositions[cellPosition.getRow()][cellPosition.getColumn()] += 1
        end
    end
    

    def isVisible(cellPosition)
        if @visibleCellPositions[cellPosition.getRow()][cellPosition.getColumn()] > 0
            return true
        else
            return false
        end
    end
    

    def move(dx, dy)
        self.getSimpleTiledLayer().moveDXY(dx, dy)
    end
    

    def paint(graphics)
        @paintSimpleTiledLayer.paint(graphics, @currentlyVisibleCellPositions)
    end
    

    def setSimpleTiledLayer(simpleTiledLayer)
        @simpleTiledLayer = simpleTiledLayer
    end
    

    def getSimpleTiledLayer()
        return @simpleTiledLayer
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/game/layer/RTSLayerEvent"
require "org/allbinary/game/layer/building/event/LocalPlayerBuildingEventHandler"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/logic/communication/log/ForcedLogUtil"
require "org/allbinary/graphics/CellPosition"
require "org/allbinary/layer/event/ScrollMapEvent"
require "org/allbinary/layer/event/ScrollMapEventHandler"
require "org/allbinary/logic/NullUtil"
require "org/allbinary/logic/util/event/AllBinaryEventObject"
require "org/allbinary/logic/util/event/EventStrings"

class VisibleCellPositionsSingleton
    @@instance = VisibleCellPositionsSingleton.new()
end

