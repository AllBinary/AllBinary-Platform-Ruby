#
# AllBinary Open License Version 1
# Copyright (c) 2011 AllBinary
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
# package org.allbinary.game.layer.geographic.map

require "java/lang/Object"
# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/media/graphics/geography/map/event/GeographicMapCellPositionEventListenerInterface"

class MiniMapLayer < AllBinaryLayer
    include GeographicMapCellPositionEventListenerInterface
    attr_accessor :allBinaryTiledLayer, :geographicMapCellPositionFactory, :list, :basicColorList, :positionList, :animationInterface

    def initialize_fields
        @allBinaryTiledLayer = nil
        @geographicMapCellPositionFactory = nil
        @list = nil
        @basicColorList = nil
        @positionList = nil
        @animationInterface = nil
    end
    

    def initialize(geographicMapInterface, viewPosition)
        super(StringUtil.getInstance().EMPTY_STRING, Rectangle.new(PointFactory.getInstance().createXY(0, viewPosition.getY()), geographicMapInterface.getAllBinaryTiledLayer().getWidth(), geographicMapInterface.getAllBinaryTiledLayer().getHeight()), viewPosition)
        initialize_fields
        @allBinaryTiledLayer = geographicMapInterface.getAllBinaryTiledLayer()
        @geographicMapCellPositionFactory = geographicMapInterface.getGeographicMapCellPositionFactory()
        @animationInterface = CircleFilledAnimation.new(@allBinaryTiledLayer.getCellWidth(), @allBinaryTiledLayer.getCellHeight(), BasicColorFactory.getInstance().WHITE)
        @list = BasicArrayListD.new()
        @basicColorList = BasicArrayListD.new()
        @positionList = BasicArrayListD.new()
        GeographicMapCellPositionEventHandler.getInstance().addListener(self)
        self.init()
    end
    

    # throws Exception
    def init()
        @allBinaryTiledLayer.setPosition(@x, @y, @z)
    end
    

    def onEvent(eventObject)
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, self)
    end
    

    # throws Exception
    def onRemoveGeographicMapCellPositionEvent(geographicMapCellPositionEvent)
        java_monitor.synchronize do
        colorCompositeInterface = geographicMapCellPositionEvent.getSource()
        index = @list.indexOf(colorCompositeInterface)
        if index >= 0
            @list.removeAt(index)
            @basicColorList.removeAt(index)
            @positionList.removeAt(index)
        end
        end
    end
    

    # throws Exception
    def onGeographicMapCellPositionEvent(geographicMapCellPositionEvent)
        java_monitor.synchronize do
        colorCompositeInterface = geographicMapCellPositionEvent.getSource()
        layerIndex = -1
        size = @list.size()
        nextColorCompositeInterface = nil
        (0...size).each do |index|
            nextColorCompositeInterface = @list.get(index)
            if nextColorCompositeInterface == colorCompositeInterface
                layerIndex = index
                break
            end
        end
        geographicMapCellPosition = @geographicMapCellPositionFactory.getInstance(geographicMapCellPositionEvent.getGeographicMapCellPosition())
        point = geographicMapCellPosition.getPoint()
        if layerIndex == -1
            @list.add(colorCompositeInterface)
            basicColor = colorCompositeInterface.getBasicColorP()
            @basicColorList.add(basicColor)
            @positionList.add(point)
            layerIndex = @basicColorList.size() - 1
        else
            @positionList.set(layerIndex, point)
        end
        end
    end
    

    def paintDots(graphics)
        localPositionList = @positionList
        localBasicColorList = @basicColorList
        length = localPositionList.size()
        point = nil
        basicColor = nil
        index = length
        while (index -= 1) >= 0
            point = localPositionList.get(index)
            basicColor = localBasicColorList.get(index)
            graphics.setColor(basicColor.to_i)
            @animationInterface.setBasicColorP(basicColor)
            @animationInterface.paintXY(graphics, point.getX() + @x, point.getY() + @y)
        end
    end
    

    def paint(graphics)
        @allBinaryTiledLayer.paint(graphics)
        self.paintDots(graphics)
    end
end

require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/logic/communication/log/ForcedLogUtil"
require "org/allbinary/animation/vector/CircleFilledAnimation"
require "org/allbinary/game/layer/AllBinaryTiledLayer"
require "org/allbinary/graphics/GPoint"
require "org/allbinary/graphics/PointFactory"
require "org/allbinary/graphics/Rectangle"
require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/graphics/color/BasicColorFactory"
require "org/allbinary/graphics/color/ColorCompositeInterface"
require "org/allbinary/logic/util/event/AllBinaryEventObject"
require "org/allbinary/logic/util/event/EventStrings"
require "org/allbinary/media/graphics/geography/map/BasicGeographicMap"
require "org/allbinary/media/graphics/geography/map/BasicGeographicMapCellPositionFactory"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition"
require "org/allbinary/media/graphics/geography/map/event/GeographicMapCellPositionEvent"
require "org/allbinary/media/graphics/geography/map/event/GeographicMapCellPositionEventHandler"
require "org/allbinary/view/ViewPositionBase"

