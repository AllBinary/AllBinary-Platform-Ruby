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

require "java/lang/JavaOverload"
require "org/allbinary/game/layer/building/event/BuildingEventListenerInterface"
require "org/allbinary/layer/event/ScrollMapEventListenerInterface"

module ::Org; module Allbinary; module Game; module Input; module Form

class VisibleCellPositionsSingleton
    include ::Org::Allbinary::Game::Layer::Building::Event::BuildingEventListenerInterface
    include ::Org::Allbinary::Layer::Event::ScrollMapEventListenerInterface
    attr_accessor :stationaryVisibleCellPositions, :visibleCellPositions, :currentlyVisibleCellPositions, :ALL_VISIBLE_TILEDLAYER, :simpleTiledLayer, :paintSimpleTiledLayer, :currentIndex

    def jfields_org_allbinary_game_input_form_VisibleCellPositionsSingleton
        @stationaryVisibleCellPositions = ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_SHORT_ARRAY_ARRAY
        @visibleCellPositions = ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_SHORT_ARRAY_ARRAY
        @currentlyVisibleCellPositions = ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_SHORT_ARRAY_ARRAY
        @ALL_VISIBLE_TILEDLAYER = ::Javax::Microedition::Lcdui::Game::SimpleTiledLayer.new(0, 0, 0, 0)
        @simpleTiledLayer = @ALL_VISIBLE_TILEDLAYER
        @paintSimpleTiledLayer = @ALL_VISIBLE_TILEDLAYER
        @currentIndex = 0 unless instance_variable_defined?(:@currentIndex)
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def initialize()
        jfields_org_allbinary_game_input_form_VisibleCellPositionsSingleton
        ::Org::Allbinary::Game::Layer::Building::Event::LocalPlayerBuildingEventHandler.getInstance().addListenerInterface(self)
        ::Org::Allbinary::Layer::Event::ScrollMapEventHandler.getInstance().addListenerInterface(self)
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
    java_overload :init, 1
    

    def onEvent(eventObject)
        ::Org::Allbinary::Logic::Communication::Log::ForcedLogUtil.log(::Org::Allbinary::Logic::Util::Event::EventStrings.getInstance().PERFORMANCE_MESSAGE, self)
    end
    java_overload :onEvent, 1
    

    # throws Exception
    def onBuildingEvent(event)
        @paintSimpleTiledLayer = @simpleTiledLayer
    end
    java_overload :onBuildingEvent, 1
    

    # throws Exception
    def onMoveEvent(scrollMapEvent)
        self.move(scrollMapEvent.getDx(), scrollMapEvent.getDy())
    end
    java_overload :onMoveEvent, 1
    

    def addStationaryCellPositions(list)
        (list.size() - 1).step(0, -(1)) do |index|
            cellPosition = list.get(index)
            @stationaryVisibleCellPositions[cellPosition.getRow()][cellPosition.getColumn()] += 1
        end
    end
    java_overload :addStationaryCellPositions, 1
    

    def removeStationaryCellPositions(list)
        (list.size() - 1).step(0, -(1)) do |index|
            cellPosition = list.get(index)
            @stationaryVisibleCellPositions[cellPosition.getRow()][cellPosition.getColumn()] -= 1
        end
    end
    java_overload :removeStationaryCellPositions, 1
    

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
    java_overload :update, 0
    

    def shouldProcess()
        if @currentIndex == 0
            return true
        else
            return false
        end
    end
    java_overload :shouldProcess, 0
    

    def addCellPositions(list)
        (list.size() - 1).step(0, -(1)) do |index|
            cellPosition = list.get(index)
            @visibleCellPositions[cellPosition.getRow()][cellPosition.getColumn()] += 1
        end
    end
    java_overload :addCellPositions, 1
    

    def isVisible(cellPosition)
        if @visibleCellPositions[cellPosition.getRow()][cellPosition.getColumn()] > 0
            return true
        else
            return false
        end
    end
    java_overload :isVisible, 1
    

    def move(dx, dy)
        self.getSimpleTiledLayer().moveDXY(dx, dy)
    end
    java_overload :move, 2
    

    def paint(graphics)
        @paintSimpleTiledLayer.paint(graphics, @currentlyVisibleCellPositions)
    end
    java_overload :paint, 1
    

    def setSimpleTiledLayer(simpleTiledLayer)
        @simpleTiledLayer = simpleTiledLayer
    end
    java_overload :setSimpleTiledLayer, 1
    

    def getSimpleTiledLayer()
        return @simpleTiledLayer
    end
    java_overload :getSimpleTiledLayer, 0

    def self.instance()
        VisibleCellPositionsSingleton.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        VisibleCellPositionsSingleton.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = VisibleCellPositionsSingleton.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "VisibleCellPositionsSingleton"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Javax; module Microedition; module Lcdui; module Game; autoload :SimpleTiledLayer, "javax/microedition/lcdui/game/SimpleTiledLayer" unless const_defined?(:SimpleTiledLayer, false); end; end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :RTSLayerEvent, "org/allbinary/game/layer/RTSLayerEvent" unless const_defined?(:RTSLayerEvent, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Building; module Event; autoload :LocalPlayerBuildingEventHandler, "org/allbinary/game/layer/building/event/LocalPlayerBuildingEventHandler" unless const_defined?(:LocalPlayerBuildingEventHandler, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :ForcedLogUtil, "org/allbinary/logic/communication/log/ForcedLogUtil" unless const_defined?(:ForcedLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; autoload :CellPosition, "org/allbinary/graphics/CellPosition" unless const_defined?(:CellPosition, false); end; end; end
module ::Org; module Allbinary; module Layer; module Event; autoload :ScrollMapEvent, "org/allbinary/layer/event/ScrollMapEvent" unless const_defined?(:ScrollMapEvent, false); end; end; end; end
module ::Org; module Allbinary; module Layer; module Event; autoload :ScrollMapEventHandler, "org/allbinary/layer/event/ScrollMapEventHandler" unless const_defined?(:ScrollMapEventHandler, false); end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :AllBinaryEventObject, "org/allbinary/logic/util/event/AllBinaryEventObject" unless const_defined?(:AllBinaryEventObject, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :EventStrings, "org/allbinary/logic/util/event/EventStrings" unless const_defined?(:EventStrings, false); end; end; end; end; end

begin
    VisibleCellPositionsSingleton.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

