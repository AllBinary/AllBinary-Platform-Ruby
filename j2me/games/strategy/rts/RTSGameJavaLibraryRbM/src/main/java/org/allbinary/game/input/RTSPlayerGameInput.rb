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

# require "javax/microedition/lcdui/Canvas"
# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/game/input/PlayerGameInput"

class RTSPlayerGameInput < PlayerGameInput
    attr_accessor :inputProcessorArray, :removeInputProcessorArray, :inputList, :isSingleKeyProcessing, :gameCanvas, :motionGestureInputList, :scrollPlayerGameInput, :selectedRTSLayerPlayerGameInput, :towerInfoPaintable, :rtsPlayerLayerInterface, :layerPositionFinderInterface, :selectedRtsFormInput

    def initialize_fields
        @inputProcessorArray = Array.new(InputFactory.getInstance().MAX, nil)
        @removeInputProcessorArray = Array.new(InputFactory.getInstance().MAX, nil)
        @inputList = nil
        @isSingleKeyProcessing = Features.getInstance().isFeature(InputFeatureFactory.getInstance().SINGLE_KEY_REPEAT_PRESS) || Features.getInstance().isFeature(InputFeatureFactory.getInstance().SINGLE_KEY_PRESS)
        @gameCanvas = nil
        @motionGestureInputList = BasicArrayListD.new()
        @scrollPlayerGameInput = nil
        @selectedRTSLayerPlayerGameInput = nil
        @towerInfoPaintable = nil
        @rtsPlayerLayerInterface = nil
        @layerPositionFinderInterface = nil
        @selectedRtsFormInput = NullRTSFormInputFactory.getInstance()
    end
    

    def initialize(gameCanvas, inputList, playerInputId, towerInfoPaintable, rtsPlayerLayerInterface, layerPositionFinderInterface, selectRTSLayerVisitorFactoryInterface)
        super(inputList, BasicArrayListD.new(), playerInputId)
        initialize_fields
        self.initInputProcessors()
        @gameCanvas = gameCanvas
        @inputList = inputList
        @towerInfoPaintable = towerInfoPaintable
        @rtsPlayerLayerInterface = rtsPlayerLayerInterface
        @selectedRTSLayerPlayerGameInput = SelectedRTSLayersPlayerGameInput.new(self.getRTSLayerInfoPaintable(), self.getRtsPlayerLayerInterface(), @inputList, playerInputId, selectRTSLayerVisitorFactoryInterface)
        if @rtsPlayerLayerInterface != NullRTSLayer::NULL_RTS_LAYER
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
        if @selectedRtsFormInput != NullRTSFormInputFactory.getInstance()
            @selectedRtsFormInput.setAllBinaryGameLayerManager(allBinaryGameLayerManager)
        end
    end
    

    def onDisplayChangeEvent(displayChangeEvent)
        begin
            @logUtil.putF(@commonStrings.START, self, "onDisplayChangeEvent")
            self.getRTSLayerInfoPaintable().update()
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "onDisplayChangeEvent", e)
        end
    end
    

    # throws Exception
    def left()
        @rtsPlayerLayerInterface.getCurrentScrollSelectionForm().processInputKey(Canvas::LEFT)
    end
    

    # throws Exception
    def right()
        @rtsPlayerLayerInterface.getCurrentScrollSelectionForm().processInputKey(Canvas::RIGHT)
    end
    

    def initInputProcessors()
        @inputProcessorArray[Canvas::LEFT] = RTSPlayerLeftGameInputProcessor.new(self)
        @inputProcessorArray[Canvas::KEY_NUM0] = @inputProcessorArray[Canvas::LEFT]
        @inputProcessorArray[Canvas::RIGHT] = RTSPlayerRightGameInputProcessor.new(self)
        @inputProcessorArray[Canvas::KEY_POUND] = @inputProcessorArray[Canvas::RIGHT]
        @removeInputProcessorArray[Canvas::KEY_NUM1] = RTSPlayerFireGameInputProcessor.new(self)
        @removeInputProcessorArray[Canvas::KEY_NUM3] = @removeInputProcessorArray[Canvas::KEY_NUM1]
        @removeInputProcessorArray[Canvas::KEY_NUM3] = @removeInputProcessorArray[Canvas::KEY_NUM1]
        @removeInputProcessorArray[Canvas::LEFT] = @removeInputProcessorArray[Canvas::KEY_NUM1]
        @removeInputProcessorArray[Canvas::RIGHT] = @removeInputProcessorArray[Canvas::KEY_NUM1]
        @removeInputProcessorArray[Canvas::KEY_NUM0] = @removeInputProcessorArray[Canvas::KEY_NUM1]
        @removeInputProcessorArray[Canvas::KEY_POUND] = @removeInputProcessorArray[Canvas::KEY_NUM1]
        GameInputProcessorUtil.init(@inputProcessorArray)
        GameInputProcessorUtil.init(@removeInputProcessorArray)
    end
    

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
    

    # throws Exception
    def processMotionInput(layerManager)
    end
    

    # throws Exception
    def select(motionGestureEvent)
        point = motionGestureEvent.getCurrentPoint()
        geographicMapCompositeInterface = @gameCanvas.getLayerManager()
        geographicMapInterface = geographicMapCompositeInterface.getGeographicMapInterface()[0]
        allBinaryTiledLayer = geographicMapInterface.getAllBinaryTiledLayer()
        x = point.getX() + allBinaryTiledLayer.getXP()
        y = point.getY() + allBinaryTiledLayer.getYP()
        geographicMapCellPosition = geographicMapInterface.getCellPositionAtXYNoThrow(x, y)
        if geographicMapCellPosition != SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
            SecondaryPlayerQueueFactory.getInstance().add(SelectSound.getInstance())
            layer = @layerPositionFinderInterface.getLayerInterface(geographicMapCellPosition)
            if layer == AllBinaryLayer::NULL_ALLBINARY_LAYER
                layer = CollidableDestroyableDamageableLayer.getNullInstance()
            else
                geographicMapCellPosition = geographicMapInterface.getCellPositionAtXY(layer.getXP(), layer.getYP())
            end
            foundRTSLayer = layer
            self.setSelectedRTSLayer(foundRTSLayer, geographicMapCellPosition)
        else
            commonLabels = CommonLabels.getInstance()
            @logUtil.putF(StringMaker.new().append("Off Of Map -").append(commonLabels.WIDTH_LABEL).appendint((allBinaryTiledLayer.getWidth()).to_i).append(commonLabels.HEIGHT_LABEL).appendint((allBinaryTiledLayer.getHeight()).to_i).to_s, self, "select")
        end
    end
    

    # throws Exception
    def setSelectedRTSLayer(rtsLayer, geographicMapCellPosition)
        self.getSelectedBuildingPlayerGameInput().setSelectedRTSLayer(rtsLayer)
    end
    

    def paint(graphics)
        geographicMapCellPosition = self.getSelectedRtsFormInput().getSelectedGeographicCellPosition()
        geographicMapCompositeInterface = @gameCanvas.getLayerManager()
        geographicMapInterface = geographicMapCompositeInterface.getGeographicMapInterface()[0]
        allBinaryTiledLayer = geographicMapInterface.getAllBinaryTiledLayer()
        graphics.setColor(BasicColorFactory.getInstance().GREEN.to_i)
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
        elsif geographicMapCellPosition != SimpleGeographicMapCellPositionFactory::NULL_GEOGRAPHIC_MAP_CELL_POSITION
            point = geographicMapCellPosition.getPoint()
            width = allBinaryTiledLayer.getCellWidth()
            height = allBinaryTiledLayer.getCellHeight()
            graphics.drawRect(point.getX() - allBinaryTiledLayer.getXP(), point.getY() - allBinaryTiledLayer.getYP(), width, height)
        end
    end
    

    def updatePaintable()
    end
    

    def getSelectedBuildingPlayerGameInput()
        return @selectedRTSLayerPlayerGameInput
    end
    

    def getSelectedRtsFormInput()
        return @selectedRtsFormInput
    end
    

    def setSelectedRtsFormInput(selectedRtsFormInput)
        @logUtil.putF(StringMaker.new().append("RTSFormInput: ").append(StringUtil.getInstance().toString(selectedRtsFormInput)).to_s, self, "setSelectedRtsFormInput")
        @selectedRtsFormInput = selectedRtsFormInput
    end
    

    def getRtsPlayerLayerInterface()
        return @rtsPlayerLayerInterface
    end
    

    def getRTSLayerInfoPaintable()
        return @towerInfoPaintable
    end
    

    def getMotionGestureInputList()
        return @motionGestureInputList
    end
    

    def getGameCanvas()
        return @gameCanvas
    end
    

    def isIsSingleKeyProcessing()
        return @isSingleKeyProcessing
    end
    

    def getScrollPlayerGameInput()
        return @scrollPlayerGameInput
    end
end

require "org/allbinary/game/input/form/RTSFormInput"
require "org/allbinary/game/layer/RTSLayer"
require "org/allbinary/game/layer/RTSLayerInfoPaintable"
require "org/allbinary/game/layer/RTSPlayerLayerInterface"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/game/configuration/feature/Features"
require "org/allbinary/game/configuration/feature/InputFeatureFactory"
require "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas"
require "org/allbinary/game/input/event/GameKeyEvent"
require "org/allbinary/game/input/form/NullRTSFormInputFactory"
require "org/allbinary/game/layer/AllBinaryGameLayerManager"
require "org/allbinary/game/layer/AllBinaryTiledLayer"
require "org/allbinary/game/layer/NullRTSLayer"
require "org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer"
require "org/allbinary/graphics/GPoint"
require "org/allbinary/graphics/color/BasicColorFactory"
require "org/allbinary/graphics/displayable/event/DisplayChangeEvent"
require "org/allbinary/input/motion/gesture/observer/MotionGestureEvent"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/layer/AllBinaryLayerManager"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/media/audio/SecondaryPlayerQueueFactory"
require "org/allbinary/media/audio/SelectSound"
require "org/allbinary/media/graphics/geography/map/BasicGeographicMap"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition"
require "org/allbinary/media/graphics/geography/map/GeographicMapCompositeInterface"
require "org/allbinary/media/graphics/geography/map/SimpleGeographicMapCellPositionFactory"
require "org/allbinary/string/CommonLabels"
require "org/allbinary/game/input/GameInputProcessor"
require "org/allbinary/game/input/GameInputProcessorUtil"
require "org/allbinary/game/input/InputFactory"
require "org/allbinary/game/input/LayerPositionFinderInterface"
require "org/allbinary/game/input/RTSPlayerFireGameInputProcessor"
require "org/allbinary/game/input/RTSPlayerLeftGameInputProcessor"
require "org/allbinary/game/input/RTSPlayerRightGameInputProcessor"
require "org/allbinary/game/input/ScrollMapPlayerGameInput"
require "org/allbinary/game/input/SelectRTSLayerVisitorFactoryInterface"
require "org/allbinary/game/input/SelectedRTSLayersPlayerGameInput"

