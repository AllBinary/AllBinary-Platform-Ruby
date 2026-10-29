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

# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/animation/Animation"

class PathAnimation < Animation
    attr_accessor :logUtil, :linePathAnimation, :pathFindingLayer, :allBinaryGameLayerManagerP, :startColor, :middleColor, :endColor

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @linePathAnimation = nil
        @pathFindingLayer = nil
        @allBinaryGameLayerManagerP = AllBinaryGameLayerManager.getNullInstance()
        @startColor = BasicColorFactory.getInstance().RED
        @middleColor = BasicColorFactory.getInstance().BLUE
        @endColor = BasicColorFactory.getInstance().GREEN
    end
    

    def initialize(pathFindingLayer, linePathAnimation)
        super()
        initialize_fields
        @pathFindingLayer = pathFindingLayer
        @linePathAnimation = linePathAnimation
    end
    

    # throws Exception
    def setAllBinaryGameLayerManager(allBinaryGameLayerManager)
        @allBinaryGameLayerManagerP = allBinaryGameLayerManager
    end
    

    # throws Exception
    def nextFrame()
    end
    

    def paintXY(graphics, x, y)
        begin
            waypointBehaviorBase = @pathFindingLayer.getWaypointBehavior()
            if waypointBehaviorBase != nil
                geographicMapCellHistory = waypointBehaviorBase.getCurrentGeographicMapCellHistory()
                list = geographicMapCellHistory.getTracked()
                size = list.size()
                if size > 0
                    geographicMapCompositeInterface = @allBinaryGameLayerManagerP
                    geographicMapInterface = geographicMapCompositeInterface.getGeographicMapInterface()[0]
                    tiledLayer = geographicMapInterface.getAllBinaryTiledLayer()
                    geographicMapCellPosition = SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
                    nextPoint = nil
                    point = nil
                    start = size - 2
                    (0...size - 1).each do |index|
                        if index == start
                            self.setBasicColorP(@startColor)
                            @basicSetColorUtil.setBasicColorP3(graphics, self.getBasicColorP(), self.getColor())
                        elsif geographicMapCellHistory.isVisited(geographicMapCellPosition)
                            self.setBasicColorP(@endColor)
                            @basicSetColorUtil.setBasicColorP3(graphics, self.getBasicColorP(), self.getColor())
                        else
                            self.setBasicColorP(@middleColor)
                            @basicSetColorUtil.setBasicColorP3(graphics, self.getBasicColorP(), self.getColor())
                        end
                        geographicMapCellPosition = list.get(index)
                        point = geographicMapCellPosition.getMidPoint()
                        geographicMapCellPosition = list.get(index + 1)
                        nextPoint = geographicMapCellPosition.getMidPoint()
                        @linePathAnimation.paint(graphics, point, nextPoint, tiledLayer)
                    end
                end
            end
        rescue StandardError => e
            @logUtil.putF("Cleared Target", self, CanvasStrings.getInstance().PAINT)
        end
    end
end

require "org/allbinary/graphics/GPoint"
require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/graphics/color/BasicColorFactory"
require "org/allbinary/graphics/displayable/CanvasStrings"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/media/graphics/geography/map/BasicGeographicMap"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellHistory"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition"
require "org/allbinary/media/graphics/geography/map/GeographicMapCompositeInterface"
require "org/allbinary/media/graphics/geography/map/SimpleGeographicMapCellPositionFactory"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/game/layer/AllBinaryGameLayerManager"
require "org/allbinary/game/layer/AllBinaryTiledLayer"
require "org/allbinary/game/layer/LinePathAnimation"
require "org/allbinary/game/layer/PathFindingLayerInterface"
require "org/allbinary/game/layer/WaypointBehaviorBase"

