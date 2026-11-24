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

require "java/lang/JavaOverload"
require "org/allbinary/game/input/PlayerGameInput"

module ::Org; module Allbinary; module Game; module Input

class RTSPlayerGameInput < PlayerGameInput
    attr_accessor :inputProcessorArray, :removeInputProcessorArray, :inputList, :isSingleKeyProcessing, :gameCanvas, :motionGestureInputList, :scrollPlayerGameInput, :selectedRTSLayerPlayerGameInput, :towerInfoPaintable, :rtsPlayerLayerInterface, :layerPositionFinderInterface, :selectedRtsFormInput

    def jfields_org_allbinary_game_input_RTSPlayerGameInput
        @inputProcessorArray = Array.new(InputFactory.getInstance().MAX, nil)
        @removeInputProcessorArray = Array.new(InputFactory.getInstance().MAX, nil)
        @inputList = nil unless instance_variable_defined?(:@inputList)
        @isSingleKeyProcessing = ::Org::Allbinary::Game::Configuration::Feature::Features.getInstance().isFeature(::Org::Allbinary::Game::Configuration::Feature::InputFeatureFactory.getInstance().SINGLE_KEY_REPEAT_PRESS) || ::Org::Allbinary::Game::Configuration::Feature::Features.getInstance().isFeature(::Org::Allbinary::Game::Configuration::Feature::InputFeatureFactory.getInstance().SINGLE_KEY_PRESS)
        @gameCanvas = nil unless instance_variable_defined?(:@gameCanvas)
        @motionGestureInputList = ::Org::Allbinary::Util::BasicArrayListD.new()
        @scrollPlayerGameInput = nil unless instance_variable_defined?(:@scrollPlayerGameInput)
        @selectedRTSLayerPlayerGameInput = nil unless instance_variable_defined?(:@selectedRTSLayerPlayerGameInput)
        @towerInfoPaintable = nil unless instance_variable_defined?(:@towerInfoPaintable)
        @rtsPlayerLayerInterface = nil unless instance_variable_defined?(:@rtsPlayerLayerInterface)
        @layerPositionFinderInterface = nil unless instance_variable_defined?(:@layerPositionFinderInterface)
        @selectedRtsFormInput = ::Org::Allbinary::Game::Input::Form::NullRTSFormInputFactory.getInstance()
    end
    

    def initialize(gameCanvas, inputList, playerInputId, towerInfoPaintable, rtsPlayerLayerInterface, layerPositionFinderInterface, selectRTSLayerVisitorFactoryInterface)
        super(inputList, ::Org::Allbinary::Util::BasicArrayListD.new(), playerInputId)
        jfields_org_allbinary_game_input_RTSPlayerGameInput
        self.initInputProcessors()
        @gameCanvas = gameCanvas
        @inputList = inputList
        @towerInfoPaintable = towerInfoPaintable
        @rtsPlayerLayerInterface = rtsPlayerLayerInterface
        @selectedRTSLayerPlayerGameInput = SelectedRTSLayersPlayerGameInput.new(self.getRTSLayerInfoPaintable(), self.getRtsPlayerLayerInterface(), @inputList, playerInputId, selectRTSLayerVisitorFactoryInterface)
        if @rtsPlayerLayerInterface != ::Org::Allbinary::Game::Layer::NullRTSLayer::NULL_RTS_LAYER
            self.setSelectedRtsFormInput(@rtsPlayerLayerInterface.getRTSFormInput())
        end
        geographicMapCompositeInterface = @gameCanvas.getLayerManager()
        geographicMapInterface = geographicMapCompositeInterface.getGeographicMapInterface()[0]
        @scrollPlayerGameInput = ScrollMapPlayerGameInput.new(geographicMapInterface, @inputList, playerInputId)
        @layerPositionFinderInterface = layerPositionFinderInterface
    end
    

    # throws Exception
    def setAllBinaryGameLayerManager(allBinaryGameLayerManager)
        @selectedRTSLayerPlayerGameInput.setAllBinaryGameLayerManager(allBinaryGameLayerManager)
        if @selectedRtsFormInput != ::Org::Allbinary::Game::Input::Form::NullRTSFormInputFactory.getInstance()
            @selectedRtsFormInput.setAllBinaryGameLayerManager(allBinaryGameLayerManager)
        end
    end
    java_overload :setAllBinaryGameLayerManager, 1
    

    def onDisplayChangeEvent(displayChangeEvent)
        begin
            @logUtil.putF(@commonStrings.START, self, "onDisplayChangeEvent")
            self.getRTSLayerInfoPaintable().update()
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "onDisplayChangeEvent", e)
        end
    end
    java_overload :onDisplayChangeEvent, 1
    

    # throws Exception
    def left()
        @rtsPlayerLayerInterface.getCurrentScrollSelectionForm().processInputKey(::Javax::Microedition::Lcdui::Canvas::LEFT)
    end
    java_overload :left, 0
    

    # throws Exception
    def right()
        @rtsPlayerLayerInterface.getCurrentScrollSelectionForm().processInputKey(::Javax::Microedition::Lcdui::Canvas::RIGHT)
    end
    java_overload :right, 0
    

    def initInputProcessors()
        @inputProcessorArray[::Javax::Microedition::Lcdui::Canvas::LEFT] = RTSPlayerLeftGameInputProcessor.new(self)
        @inputProcessorArray[::Javax::Microedition::Lcdui::Canvas::KEY_NUM0] = @inputProcessorArray[::Javax::Microedition::Lcdui::Canvas::LEFT]
        @inputProcessorArray[::Javax::Microedition::Lcdui::Canvas::RIGHT] = RTSPlayerRightGameInputProcessor.new(self)
        @inputProcessorArray[::Javax::Microedition::Lcdui::Canvas::KEY_POUND] = @inputProcessorArray[::Javax::Microedition::Lcdui::Canvas::RIGHT]
        @removeInputProcessorArray[::Javax::Microedition::Lcdui::Canvas::KEY_NUM1] = RTSPlayerFireGameInputProcessor.new(self)
        @removeInputProcessorArray[::Javax::Microedition::Lcdui::Canvas::KEY_NUM3] = @removeInputProcessorArray[::Javax::Microedition::Lcdui::Canvas::KEY_NUM1]
        @removeInputProcessorArray[::Javax::Microedition::Lcdui::Canvas::KEY_NUM3] = @removeInputProcessorArray[::Javax::Microedition::Lcdui::Canvas::KEY_NUM1]
        @removeInputProcessorArray[::Javax::Microedition::Lcdui::Canvas::LEFT] = @removeInputProcessorArray[::Javax::Microedition::Lcdui::Canvas::KEY_NUM1]
        @removeInputProcessorArray[::Javax::Microedition::Lcdui::Canvas::RIGHT] = @removeInputProcessorArray[::Javax::Microedition::Lcdui::Canvas::KEY_NUM1]
        @removeInputProcessorArray[::Javax::Microedition::Lcdui::Canvas::KEY_NUM0] = @removeInputProcessorArray[::Javax::Microedition::Lcdui::Canvas::KEY_NUM1]
        @removeInputProcessorArray[::Javax::Microedition::Lcdui::Canvas::KEY_POUND] = @removeInputProcessorArray[::Javax::Microedition::Lcdui::Canvas::KEY_NUM1]
        GameInputProcessorUtil.init(@inputProcessorArray)
        GameInputProcessorUtil.init(@removeInputProcessorArray)
    end
    java_overload :initInputProcessors, 0
    

    # throws Exception
    def processInput(layerManager)
        begin
            self.processMotionInput(layerManager)
            size = @inputList.size()
            key = 0
            (0...size).each do |index|
                gameKeyEvent = @inputList.get(index)
                key = gameKeyEvent.getKey()
                self.getScrollPlayerGameInput().processInputKey(key)
                self.getSelectedBuildingPlayerGameInput().processInputKey(key)
                @inputProcessorArray[key].processEvent(layerManager, gameKeyEvent)
                @removeInputProcessorArray[key].processEvent(layerManager, gameKeyEvent)
            end
            if self.isIsSingleKeyProcessing()
                self.clear()
            else
                self.update()
            end
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @gameInputStrings.PROCESS_INPUT, e)
        end
    end
    java_overload :processInput, 1
    

    # throws Exception
    def processMotionInput(layerManager)
    end
    java_overload :processMotionInput, 1
    

    # throws Exception
    def select(motionGestureEvent)
        point = motionGestureEvent.getCurrentPoint()
        geographicMapCompositeInterface = @gameCanvas.getLayerManager()
        geographicMapInterface = geographicMapCompositeInterface.getGeographicMapInterface()[0]
        allBinaryTiledLayer = geographicMapInterface.getAllBinaryTiledLayer()
        x = point.getX() + allBinaryTiledLayer.getXP()
        y = point.getY() + allBinaryTiledLayer.getYP()
        geographicMapCellPosition = geographicMapInterface.getCellPositionAtXYNoThrow(x, y)
        if geographicMapCellPosition != ::Org::Allbinary::Media::Graphics::Geography::Map::SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
            ::Org::Allbinary::Media::Audio::SecondaryPlayerQueueFactory.getInstance().add(::Org::Allbinary::Media::Audio::SelectSound.getInstance())
            layer = @layerPositionFinderInterface.getLayerInterface(geographicMapCellPosition)
            if layer == ::Org::Allbinary::Layer::AllBinaryLayer::NULL_ALLBINARY_LAYER
                layer = ::Org::Allbinary::Game::Layer::Special::CollidableDestroyableDamageableLayer.getNullInstance()
            else
                geographicMapCellPosition = geographicMapInterface.getCellPositionAtXY(layer.getXP(), layer.getYP())
            end
            foundRTSLayer = layer
            self.setSelectedRTSLayer(foundRTSLayer, geographicMapCellPosition)
        else
            commonLabels = ::Org::Allbinary::StringPackage::CommonLabels.getInstance()
            @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("Off Of Map -").append(commonLabels.WIDTH_LABEL).appendint(((allBinaryTiledLayer.getWidth()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })).append(commonLabels.HEIGHT_LABEL).appendint(((allBinaryTiledLayer.getHeight()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })).to_s, self, "select")
        end
    end
    java_overload :select, 1
    

    # throws Exception
    def setSelectedRTSLayer(rtsLayer, geographicMapCellPosition)
        self.getSelectedBuildingPlayerGameInput().setSelectedRTSLayer(rtsLayer)
    end
    java_overload :setSelectedRTSLayer, 2
    

    def paint(graphics)
        geographicMapCellPosition = self.getSelectedRtsFormInput().getSelectedGeographicCellPosition()
        geographicMapCompositeInterface = @gameCanvas.getLayerManager()
        geographicMapInterface = geographicMapCompositeInterface.getGeographicMapInterface()[0]
        allBinaryTiledLayer = geographicMapInterface.getAllBinaryTiledLayer()
        graphics.setColor(::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance().GREEN.to_i)
        list = self.getSelectedBuildingPlayerGameInput().getPaintSelectedRTSLayersList()
        width = 0
        height = 0
        if list.size() > 0
            (list.size() - 1).step(0, -(1)) do |index|
                rtsLayer = list.get(index)
                width = rtsLayer.getWidth()
                height = rtsLayer.getHeight()
                graphics.drawRect(rtsLayer.getXP() - allBinaryTiledLayer.getXP(), rtsLayer.getYP() - allBinaryTiledLayer.getYP(), width, height)
            end
        elsif geographicMapCellPosition != ::Org::Allbinary::Media::Graphics::Geography::Map::SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
            point = geographicMapCellPosition.getPoint()
            width = allBinaryTiledLayer.getCellWidth()
            height = allBinaryTiledLayer.getCellHeight()
            graphics.drawRect(point.getX() - allBinaryTiledLayer.getXP(), point.getY() - allBinaryTiledLayer.getYP(), width, height)
        end
    end
    java_overload :paint, 1
    

    def updatePaintable()
    end
    java_overload :updatePaintable, 0
    

    def getSelectedBuildingPlayerGameInput()
        return @selectedRTSLayerPlayerGameInput
    end
    java_overload :getSelectedBuildingPlayerGameInput, 0
    

    def getSelectedRtsFormInput()
        return @selectedRtsFormInput
    end
    java_overload :getSelectedRtsFormInput, 0
    

    def setSelectedRtsFormInput(selectedRtsFormInput)
        @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("RTSFormInput: ").append(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().toString(selectedRtsFormInput)).to_s, self, "setSelectedRtsFormInput")
        @selectedRtsFormInput = selectedRtsFormInput
    end
    java_overload :setSelectedRtsFormInput, 1
    

    def getRtsPlayerLayerInterface()
        return @rtsPlayerLayerInterface
    end
    java_overload :getRtsPlayerLayerInterface, 0
    

    def getRTSLayerInfoPaintable()
        return @towerInfoPaintable
    end
    java_overload :getRTSLayerInfoPaintable, 0
    

    def getMotionGestureInputList()
        return @motionGestureInputList
    end
    java_overload :getMotionGestureInputList, 0
    

    def getGameCanvas()
        return @gameCanvas
    end
    java_overload :getGameCanvas, 0
    

    def isIsSingleKeyProcessing()
        return @isSingleKeyProcessing
    end
    java_overload :isIsSingleKeyProcessing, 0
    

    def getScrollPlayerGameInput()
        return @scrollPlayerGameInput
    end
    java_overload :getScrollPlayerGameInput, 0
end

module ::Javax; module Microedition; module Lcdui; autoload :Canvas, "javax/microedition/lcdui/Canvas" unless const_defined?(:Canvas, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Game; module Input; module Form; autoload :RTSFormInput, "org/allbinary/game/input/form/RTSFormInput" unless const_defined?(:RTSFormInput, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :RTSLayer, "org/allbinary/game/layer/RTSLayer" unless const_defined?(:RTSLayer, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :RTSLayerInfoPaintable, "org/allbinary/game/layer/RTSLayerInfoPaintable" unless const_defined?(:RTSLayerInfoPaintable, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :RTSPlayerLayerInterface, "org/allbinary/game/layer/RTSPlayerLayerInterface" unless const_defined?(:RTSPlayerLayerInterface, false); end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :Features, "org/allbinary/game/configuration/feature/Features" unless const_defined?(:Features, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :InputFeatureFactory, "org/allbinary/game/configuration/feature/InputFeatureFactory" unless const_defined?(:InputFeatureFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Displayable; module Canvas; autoload :AllBinaryGameCanvas, "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas" unless const_defined?(:AllBinaryGameCanvas, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Input; module Event; autoload :GameKeyEvent, "org/allbinary/game/input/event/GameKeyEvent" unless const_defined?(:GameKeyEvent, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Input; module Form; autoload :NullRTSFormInputFactory, "org/allbinary/game/input/form/NullRTSFormInputFactory" unless const_defined?(:NullRTSFormInputFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :AllBinaryGameLayerManager, "org/allbinary/game/layer/AllBinaryGameLayerManager" unless const_defined?(:AllBinaryGameLayerManager, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :AllBinaryTiledLayer, "org/allbinary/game/layer/AllBinaryTiledLayer" unless const_defined?(:AllBinaryTiledLayer, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :NullRTSLayer, "org/allbinary/game/layer/NullRTSLayer" unless const_defined?(:NullRTSLayer, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Special; autoload :CollidableDestroyableDamageableLayer, "org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer" unless const_defined?(:CollidableDestroyableDamageableLayer, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; autoload :GPoint, "org/allbinary/graphics/GPoint" unless const_defined?(:GPoint, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory" unless const_defined?(:BasicColorFactory, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; module Event; autoload :DisplayChangeEvent, "org/allbinary/graphics/displayable/event/DisplayChangeEvent" unless const_defined?(:DisplayChangeEvent, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Gesture; module Observer; autoload :MotionGestureEvent, "org/allbinary/input/motion/gesture/observer/MotionGestureEvent" unless const_defined?(:MotionGestureEvent, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager" unless const_defined?(:AllBinaryLayerManager, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Audio; autoload :SecondaryPlayerQueueFactory, "org/allbinary/media/audio/SecondaryPlayerQueueFactory" unless const_defined?(:SecondaryPlayerQueueFactory, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Audio; autoload :SelectSound, "org/allbinary/media/audio/SelectSound" unless const_defined?(:SelectSound, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :BasicGeographicMap, "org/allbinary/media/graphics/geography/map/BasicGeographicMap" unless const_defined?(:BasicGeographicMap, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellPosition, "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition" unless const_defined?(:GeographicMapCellPosition, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCompositeInterface, "org/allbinary/media/graphics/geography/map/GeographicMapCompositeInterface" unless const_defined?(:GeographicMapCompositeInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :SimpleGeographicMapCellPositionFactory, "org/allbinary/media/graphics/geography/map/SimpleGeographicMapCellPositionFactory" unless const_defined?(:SimpleGeographicMapCellPositionFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonLabels, "org/allbinary/string/CommonLabels" unless const_defined?(:CommonLabels, false); end; end; end
autoload :GameInputProcessor, "org/allbinary/game/input/GameInputProcessor" unless const_defined?(:GameInputProcessor, false)
autoload :GameInputProcessorUtil, "org/allbinary/game/input/GameInputProcessorUtil" unless const_defined?(:GameInputProcessorUtil, false)
autoload :InputFactory, "org/allbinary/game/input/InputFactory" unless const_defined?(:InputFactory, false)
autoload :LayerPositionFinderInterface, "org/allbinary/game/input/LayerPositionFinderInterface" unless const_defined?(:LayerPositionFinderInterface, false)
autoload :RTSPlayerFireGameInputProcessor, "org/allbinary/game/input/RTSPlayerFireGameInputProcessor" unless const_defined?(:RTSPlayerFireGameInputProcessor, false)
autoload :RTSPlayerLeftGameInputProcessor, "org/allbinary/game/input/RTSPlayerLeftGameInputProcessor" unless const_defined?(:RTSPlayerLeftGameInputProcessor, false)
autoload :RTSPlayerRightGameInputProcessor, "org/allbinary/game/input/RTSPlayerRightGameInputProcessor" unless const_defined?(:RTSPlayerRightGameInputProcessor, false)
autoload :ScrollMapPlayerGameInput, "org/allbinary/game/input/ScrollMapPlayerGameInput" unless const_defined?(:ScrollMapPlayerGameInput, false)
autoload :SelectRTSLayerVisitorFactoryInterface, "org/allbinary/game/input/SelectRTSLayerVisitorFactoryInterface" unless const_defined?(:SelectRTSLayerVisitorFactoryInterface, false)
autoload :SelectedRTSLayersPlayerGameInput, "org/allbinary/game/input/SelectedRTSLayersPlayerGameInput" unless const_defined?(:SelectedRTSLayersPlayerGameInput, false)

end; end; end; end

