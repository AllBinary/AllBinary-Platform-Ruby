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

require "java/lang/JavaOverload"
require "org/allbinary/animation/Animation"

module ::Org; module Allbinary; module Game; module Layer

class PathAnimation < ::Org::Allbinary::Animation::Animation
    attr_accessor :logUtil, :linePathAnimation, :pathFindingLayer, :allBinaryGameLayerManagerP, :startColor, :middleColor, :endColor

    def jfields_org_allbinary_game_layer_PathAnimation
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @linePathAnimation = nil unless instance_variable_defined?(:@linePathAnimation)
        @pathFindingLayer = nil unless instance_variable_defined?(:@pathFindingLayer)
        @allBinaryGameLayerManagerP = AllBinaryGameLayerManager.getNullInstance()
        @startColor = ::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance().RED
        @middleColor = ::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance().BLUE
        @endColor = ::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance().GREEN
    end
    

    def initialize(pathFindingLayer, linePathAnimation)
        super()
        jfields_org_allbinary_game_layer_PathAnimation
        @pathFindingLayer = pathFindingLayer
        @linePathAnimation = linePathAnimation
    end
    

    # throws Exception
    def setAllBinaryGameLayerManager(allBinaryGameLayerManager)
        @allBinaryGameLayerManagerP = allBinaryGameLayerManager
    end
    java_overload :setAllBinaryGameLayerManager, 1
    

    # throws Exception
    def nextFrame()
    end
    java_overload :nextFrame, 0
    

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
                    geographicMapCellPosition = ::Org::Allbinary::Media::Graphics::Geography::Map::SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
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
            @logUtil.putF("Cleared Target", self, ::Org::Allbinary::Graphics::Displayable::CanvasStrings.getInstance().PAINT)
        end
    end
    java_overload :paintXY, 3
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :GPoint, "org/allbinary/graphics/GPoint" unless const_defined?(:GPoint, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory" unless const_defined?(:BasicColorFactory, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; autoload :CanvasStrings, "org/allbinary/graphics/displayable/CanvasStrings" unless const_defined?(:CanvasStrings, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :BasicGeographicMap, "org/allbinary/media/graphics/geography/map/BasicGeographicMap" unless const_defined?(:BasicGeographicMap, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellHistory, "org/allbinary/media/graphics/geography/map/GeographicMapCellHistory" unless const_defined?(:GeographicMapCellHistory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellPosition, "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition" unless const_defined?(:GeographicMapCellPosition, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCompositeInterface, "org/allbinary/media/graphics/geography/map/GeographicMapCompositeInterface" unless const_defined?(:GeographicMapCompositeInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :SimpleGeographicMapCellPositionFactory, "org/allbinary/media/graphics/geography/map/SimpleGeographicMapCellPositionFactory" unless const_defined?(:SimpleGeographicMapCellPositionFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
autoload :AllBinaryGameLayerManager, "org/allbinary/game/layer/AllBinaryGameLayerManager" unless const_defined?(:AllBinaryGameLayerManager, false)
autoload :AllBinaryTiledLayer, "org/allbinary/game/layer/AllBinaryTiledLayer" unless const_defined?(:AllBinaryTiledLayer, false)
autoload :LinePathAnimation, "org/allbinary/game/layer/LinePathAnimation" unless const_defined?(:LinePathAnimation, false)
autoload :PathFindingLayerInterface, "org/allbinary/game/layer/PathFindingLayerInterface" unless const_defined?(:PathFindingLayerInterface, false)
autoload :WaypointBehaviorBase, "org/allbinary/game/layer/WaypointBehaviorBase" unless const_defined?(:WaypointBehaviorBase, false)

end; end; end; end

