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
require "java/lang/JavaOverload"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/media/graphics/geography/map/event/GeographicMapCellPositionEventListenerInterface"

module ::Org; module Allbinary; module Game; module Layer; module Geographic; module Map

class MiniMapLayer < ::Org::Allbinary::Layer::AllBinaryLayer
    include ::Org::Allbinary::Media::Graphics::Geography::Map::Event::GeographicMapCellPositionEventListenerInterface
    attr_accessor :allBinaryTiledLayer, :geographicMapCellPositionFactory, :list, :basicColorList, :positionList, :animationInterface

    def jfields_org_allbinary_game_layer_geographic_map_MiniMapLayer
        @allBinaryTiledLayer = nil unless instance_variable_defined?(:@allBinaryTiledLayer)
        @geographicMapCellPositionFactory = nil unless instance_variable_defined?(:@geographicMapCellPositionFactory)
        @list = nil unless instance_variable_defined?(:@list)
        @basicColorList = nil unless instance_variable_defined?(:@basicColorList)
        @positionList = nil unless instance_variable_defined?(:@positionList)
        @animationInterface = nil unless instance_variable_defined?(:@animationInterface)
    end
    

    def initialize(geographicMapInterface, viewPosition)
        super(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING, ::Org::Allbinary::Graphics::Rectangle.new(::Org::Allbinary::Graphics::PointFactory.getInstance().createXY(0, viewPosition.getY()), geographicMapInterface.getAllBinaryTiledLayer().getWidth(), geographicMapInterface.getAllBinaryTiledLayer().getHeight()), viewPosition)
        jfields_org_allbinary_game_layer_geographic_map_MiniMapLayer
        @allBinaryTiledLayer = geographicMapInterface.getAllBinaryTiledLayer()
        @geographicMapCellPositionFactory = geographicMapInterface.getGeographicMapCellPositionFactory()
        @animationInterface = ::Org::Allbinary::Animation::Vector::CircleFilledAnimation.new(@allBinaryTiledLayer.getCellWidth(), @allBinaryTiledLayer.getCellHeight(), ::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance().WHITE)
        @list = ::Org::Allbinary::Util::BasicArrayListD.new()
        @basicColorList = ::Org::Allbinary::Util::BasicArrayListD.new()
        @positionList = ::Org::Allbinary::Util::BasicArrayListD.new()
        ::Org::Allbinary::Media::Graphics::Geography::Map::Event::GeographicMapCellPositionEventHandler.getInstance().addListener(self)
        self.init()
    end
    

    # throws Exception
    def init()
        @allBinaryTiledLayer.setPosition(@x, @y, @z)
    end
    java_overload :init, 0
    

    def onEvent(eventObject)
        ::Org::Allbinary::Logic::Communication::Log::ForcedLogUtil.log(::Org::Allbinary::Logic::Util::Event::EventStrings.getInstance().PERFORMANCE_MESSAGE, self)
    end
    java_overload :onEvent, 1
    

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
    java_overload :onRemoveGeographicMapCellPositionEvent, 1
    

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
    java_overload :onGeographicMapCellPositionEvent, 1
    

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
    java_overload :paintDots, 1
    

    def paint(graphics)
        @allBinaryTiledLayer.paint(graphics)
        self.paintDots(graphics)
    end
    java_overload :paint, 1
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :ForcedLogUtil, "org/allbinary/logic/communication/log/ForcedLogUtil" unless const_defined?(:ForcedLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Animation; module Vector; autoload :CircleFilledAnimation, "org/allbinary/animation/vector/CircleFilledAnimation" unless const_defined?(:CircleFilledAnimation, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :AllBinaryTiledLayer, "org/allbinary/game/layer/AllBinaryTiledLayer" unless const_defined?(:AllBinaryTiledLayer, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; autoload :GPoint, "org/allbinary/graphics/GPoint" unless const_defined?(:GPoint, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :PointFactory, "org/allbinary/graphics/PointFactory" unless const_defined?(:PointFactory, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :Rectangle, "org/allbinary/graphics/Rectangle" unless const_defined?(:Rectangle, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory" unless const_defined?(:BasicColorFactory, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :ColorCompositeInterface, "org/allbinary/graphics/color/ColorCompositeInterface" unless const_defined?(:ColorCompositeInterface, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :AllBinaryEventObject, "org/allbinary/logic/util/event/AllBinaryEventObject" unless const_defined?(:AllBinaryEventObject, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :EventStrings, "org/allbinary/logic/util/event/EventStrings" unless const_defined?(:EventStrings, false); end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :BasicGeographicMap, "org/allbinary/media/graphics/geography/map/BasicGeographicMap" unless const_defined?(:BasicGeographicMap, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :BasicGeographicMapCellPositionFactory, "org/allbinary/media/graphics/geography/map/BasicGeographicMapCellPositionFactory" unless const_defined?(:BasicGeographicMapCellPositionFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellPosition, "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition" unless const_defined?(:GeographicMapCellPosition, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; module Event; autoload :GeographicMapCellPositionEvent, "org/allbinary/media/graphics/geography/map/event/GeographicMapCellPositionEvent" unless const_defined?(:GeographicMapCellPositionEvent, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; module Event; autoload :GeographicMapCellPositionEventHandler, "org/allbinary/media/graphics/geography/map/event/GeographicMapCellPositionEventHandler" unless const_defined?(:GeographicMapCellPositionEventHandler, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module View; autoload :ViewPositionBase, "org/allbinary/view/ViewPositionBase" unless const_defined?(:ViewPositionBase, false); end; end; end

end; end; end; end; end; end

