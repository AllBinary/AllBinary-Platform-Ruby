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
# package org.allbinary.game.input

require "java/lang/JavaOverload"
require "org/allbinary/game/input/PlayerGameInput"

module ::Org; module Allbinary; module Game; module Input

class ScrollMapPlayerGameInput < PlayerGameInput
    attr_accessor :inputProcessorArray, :border, :inputList, :isSingleKeyProcessing, :geographicMapInterface, :maxBottom, :maxRight, :scrollMapEvent

    def jfields_org_allbinary_game_input_ScrollMapPlayerGameInput
        @inputProcessorArray = Array.new(InputFactory.getInstance().MAX, nil)
        @border = 150
        @inputList = nil unless instance_variable_defined?(:@inputList)
        @isSingleKeyProcessing = ::Org::Allbinary::Game::Configuration::Feature::Features.getInstance().isFeature(::Org::Allbinary::Game::Configuration::Feature::InputFeatureFactory.getInstance().SINGLE_KEY_REPEAT_PRESS) || ::Org::Allbinary::Game::Configuration::Feature::Features.getInstance().isFeature(::Org::Allbinary::Game::Configuration::Feature::InputFeatureFactory.getInstance().SINGLE_KEY_PRESS)
        @geographicMapInterface = nil unless instance_variable_defined?(:@geographicMapInterface)
        @maxBottom = 0 unless instance_variable_defined?(:@maxBottom)
        @maxRight = 0 unless instance_variable_defined?(:@maxRight)
        @scrollMapEvent = ::Org::Allbinary::Layer::Event::ScrollMapEvent.new(self)
    end
    

    def initialize(geographicMapInterface, list, playerInputId)
        super(list, ::Org::Allbinary::Util::BasicArrayListD.new(), playerInputId)
        jfields_org_allbinary_game_input_ScrollMapPlayerGameInput
        self.initInputProcessors()
        @geographicMapInterface = geographicMapInterface
        @inputList = list
        self.init()
    end
    

    # throws Exception
    def move(dx, dy)
        terrainTiledLayer = @geographicMapInterface.getAllBinaryTiledLayer()
        terrainTiledLayer.moveDXY(-dx, -dy)
        @scrollMapEvent.setDxDy(-dx, -dy)
        ::Org::Allbinary::Layer::Event::ScrollMapEventHandler.getInstance().fireEvent(@scrollMapEvent)
    end
    java_overload :move, 2
    

    def init()
        @maxBottom = self.getSpecialHeight()
        @maxRight = self.getSpecialWidth()
    end
    java_overload :init, 0
    

    # throws Exception
    def scrollMiddleX()
        terrainTiledLayer = @geographicMapInterface.getAllBinaryTiledLayer()
        displayInfo = ::Org::Allbinary::Graphics::Displayable::DisplayInfoSingleton.getInstance()
        self.move(-terrainTiledLayer.getXP(), 0)
        if terrainTiledLayer.getWidth() < displayInfo.getLastWidth()
            diffX = ((displayInfo.getLastWidth() - terrainTiledLayer.getWidth()) >> 1)
            self.move(-diffX, 0)
        else
            diffX = ((terrainTiledLayer.getWidth() - displayInfo.getLastWidth()) >> 1)
            self.move(diffX, 0)
        end
    end
    java_overload :scrollMiddleX, 0
    

    # throws Exception
    def scrollY(anchor)
        terrainTiledLayer = @geographicMapInterface.getAllBinaryTiledLayer()
        displayInfo = ::Org::Allbinary::Graphics::Displayable::DisplayInfoSingleton.getInstance()
        if anchor == ::Javax::Microedition::Lcdui::Graphics::TOP
            @logUtil.putF("Top", self, "scrollY")
        elsif anchor == ::Javax::Microedition::Lcdui::Graphics::BOTTOM
            @logUtil.putF("Bottom", self, "scrollY")
            diffY = (terrainTiledLayer.getHeight() - displayInfo.getLastHeight())
            self.move(0, diffY)
        elsif anchor == ::Javax::Microedition::Lcdui::Graphics::VCENTER
            @logUtil.putF("Center", self, "scrollY")
            diffY = (terrainTiledLayer.getHeight() - displayInfo.getLastHeight()) / 2
            self.move(0, diffY)
        else
            raise StandardError.new("No Such Anchor Supported")
        end
    end
    java_overload :scrollY, 1
    

    # throws Exception
    def up()
        y = @geographicMapInterface.getAllBinaryTiledLayer().getYP() - 10
        if self.keepOnMapMinY(y)
            self.move(0, -10)
        end
    end
    java_overload :up, 0
    

    # throws Exception
    def down()
        y = -@geographicMapInterface.getAllBinaryTiledLayer().getYP() + 10
        if self.keepOnMapMaxY(y)
            self.move(0, 10)
        end
    end
    java_overload :down, 0
    

    # throws Exception
    def right()
        x = @geographicMapInterface.getAllBinaryTiledLayer().getYP() + 10
        if self.keepOnMapMinX(x)
            self.move(10, 0)
        end
    end
    java_overload :right, 0
    

    # throws Exception
    def left()
        x = -@geographicMapInterface.getAllBinaryTiledLayer().getYP() - 10
        if self.keepOnMapMaxX(x)
            self.move(-10, 0)
        end
    end
    java_overload :left, 0
    

    def initInputProcessors()
        @inputProcessorArray[::Javax::Microedition::Lcdui::Canvas::UP] = ScrollMapUpGameInputProcessor.new(self)
        @inputProcessorArray[::Javax::Microedition::Lcdui::Canvas::DOWN] = ScrollMapDownGameInputProcessor.new(self)
        @inputProcessorArray[::Javax::Microedition::Lcdui::Canvas::KEY_NUM9] = ScrollMapRightGameInputProcessor.new(self)
        @inputProcessorArray[::Javax::Microedition::Lcdui::Canvas::KEY_NUM7] = ScrollMapLeftGameInputProcessor.new(self)
        GameInputProcessorUtil.init(@inputProcessorArray)
    end
    java_overload :initInputProcessors, 0
    

    # throws Exception
    def processInputKey(key)
        @inputProcessorArray[key].processEvent(::Org::Allbinary::Game::Layer::AllBinaryGameLayerManager.getNullInstance(), ::Org::Allbinary::Game::Input::Event::GameKeyEvent::NONE)
    end
    java_overload :processInputKey, 1
    

    # throws Exception
    def processInput(layerManager)
        begin
            size = @inputList.size()
            key = 0
            (0...size).each do |index|
                gameKeyEvent = @inputList.get(index)
                key = gameKeyEvent.getKey()
                self.processInputKey(key)
            end
            if @isSingleKeyProcessing
                self.clear()
            else
                self.update()
            end
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @gameInputStrings.PROCESS_INPUT, e)
        end
    end
    java_overload :processInput, 1
    

    def getSpecialHeight()
        terrainTiledLayer = @geographicMapInterface.getAllBinaryTiledLayer()
        displayInfo = ::Org::Allbinary::Graphics::Displayable::DisplayInfoSingleton.getInstance()
        if terrainTiledLayer.getHeight() > displayInfo.getLastHeight()
            return terrainTiledLayer.getHeight() - displayInfo.getLastHeight()
        else
            return displayInfo.getLastHeight() - terrainTiledLayer.getHeight() + terrainTiledLayer.getCellHeight()
        end
    end
    java_overload :getSpecialHeight, 0
    

    def getSpecialWidth()
        terrainTiledLayer = @geographicMapInterface.getAllBinaryTiledLayer()
        displayInfo = ::Org::Allbinary::Graphics::Displayable::DisplayInfoSingleton.getInstance()
        if terrainTiledLayer.getWidth() > displayInfo.getLastWidth()
            return terrainTiledLayer.getWidth() - displayInfo.getLastWidth()
        else
            return displayInfo.getLastWidth() - terrainTiledLayer.getWidth() + terrainTiledLayer.getCellWidth()
        end
    end
    java_overload :getSpecialWidth, 0
    

    def keepOnMapMaxY(newY)
        y = @geographicMapInterface.getAllBinaryTiledLayer().getYP()
        if y > @maxBottom + @border
            return false
        else
            return true
        end
    end
    java_overload :keepOnMapMaxY, 1
    

    def keepOnMapMinY(newY)
        y = @geographicMapInterface.getAllBinaryTiledLayer().getYP()
        if y < -@border
            return false
        else
            return true
        end
    end
    java_overload :keepOnMapMinY, 1
    

    def keepOnMapMaxX(newX)
        x = @geographicMapInterface.getAllBinaryTiledLayer().getXP()
        if x < -@maxRight - @border
            return false
        else
            return true
        end
    end
    java_overload :keepOnMapMaxX, 1
    

    def keepOnMapMinX(newX)
        x = @geographicMapInterface.getAllBinaryTiledLayer().getXP()
        if x > @border
            return false
        else
            return true
        end
    end
    java_overload :keepOnMapMinX, 1
end

module ::Javax; module Microedition; module Lcdui; autoload :Canvas, "javax/microedition/lcdui/Canvas" unless const_defined?(:Canvas, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :Features, "org/allbinary/game/configuration/feature/Features" unless const_defined?(:Features, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :InputFeatureFactory, "org/allbinary/game/configuration/feature/InputFeatureFactory" unless const_defined?(:InputFeatureFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Input; module Event; autoload :GameKeyEvent, "org/allbinary/game/input/event/GameKeyEvent" unless const_defined?(:GameKeyEvent, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :AllBinaryGameLayerManager, "org/allbinary/game/layer/AllBinaryGameLayerManager" unless const_defined?(:AllBinaryGameLayerManager, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :AllBinaryTiledLayer, "org/allbinary/game/layer/AllBinaryTiledLayer" unless const_defined?(:AllBinaryTiledLayer, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; autoload :DisplayInfoSingleton, "org/allbinary/graphics/displayable/DisplayInfoSingleton" unless const_defined?(:DisplayInfoSingleton, false); end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager" unless const_defined?(:AllBinaryLayerManager, false); end; end; end
module ::Org; module Allbinary; module Layer; module Event; autoload :ScrollMapEvent, "org/allbinary/layer/event/ScrollMapEvent" unless const_defined?(:ScrollMapEvent, false); end; end; end; end
module ::Org; module Allbinary; module Layer; module Event; autoload :ScrollMapEventHandler, "org/allbinary/layer/event/ScrollMapEventHandler" unless const_defined?(:ScrollMapEventHandler, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :BasicGeographicMap, "org/allbinary/media/graphics/geography/map/BasicGeographicMap" unless const_defined?(:BasicGeographicMap, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
autoload :GameInputProcessor, "org/allbinary/game/input/GameInputProcessor" unless const_defined?(:GameInputProcessor, false)
autoload :GameInputProcessorUtil, "org/allbinary/game/input/GameInputProcessorUtil" unless const_defined?(:GameInputProcessorUtil, false)
autoload :InputFactory, "org/allbinary/game/input/InputFactory" unless const_defined?(:InputFactory, false)
autoload :ScrollMapDownGameInputProcessor, "org/allbinary/game/input/ScrollMapDownGameInputProcessor" unless const_defined?(:ScrollMapDownGameInputProcessor, false)
autoload :ScrollMapLeftGameInputProcessor, "org/allbinary/game/input/ScrollMapLeftGameInputProcessor" unless const_defined?(:ScrollMapLeftGameInputProcessor, false)
autoload :ScrollMapRightGameInputProcessor, "org/allbinary/game/input/ScrollMapRightGameInputProcessor" unless const_defined?(:ScrollMapRightGameInputProcessor, false)
autoload :ScrollMapUpGameInputProcessor, "org/allbinary/game/input/ScrollMapUpGameInputProcessor" unless const_defined?(:ScrollMapUpGameInputProcessor, false)

end; end; end; end

