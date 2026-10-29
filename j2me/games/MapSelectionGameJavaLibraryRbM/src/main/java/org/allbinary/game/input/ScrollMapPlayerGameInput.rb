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

# require "javax/microedition/lcdui/Canvas"
# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/game/input/PlayerGameInput"

class ScrollMapPlayerGameInput < PlayerGameInput
    attr_accessor :inputProcessorArray, :border, :inputList, :isSingleKeyProcessing, :geographicMapInterface, :maxBottom, :maxRight, :scrollMapEvent

    def initialize_fields
        @inputProcessorArray = Array.new(InputFactory.getInstance().MAX, nil)
        @border = 150
        @inputList = nil
        @isSingleKeyProcessing = Features.getInstance().isFeature(InputFeatureFactory.getInstance().SINGLE_KEY_REPEAT_PRESS) || Features.getInstance().isFeature(InputFeatureFactory.getInstance().SINGLE_KEY_PRESS)
        @geographicMapInterface = nil
        @maxBottom = 0
        @maxRight = 0
        @scrollMapEvent = ScrollMapEvent.new(self)
    end
    

    def initialize(geographicMapInterface, list, playerInputId)
        super(list, BasicArrayListD.new(), playerInputId)
        initialize_fields
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
        ScrollMapEventHandler.getInstance().fireEvent(@scrollMapEvent)
    end
    

    def init()
        @maxBottom = self.getSpecialHeight()
        @maxRight = self.getSpecialWidth()
    end
    

    # throws Exception
    def scrollMiddleX()
        terrainTiledLayer = @geographicMapInterface.getAllBinaryTiledLayer()
        displayInfo = DisplayInfoSingleton.getInstance()
        self.move(-terrainTiledLayer.getXP(), 0)
        if terrainTiledLayer.getWidth() < displayInfo.getLastWidth()
            diffX = ((displayInfo.getLastWidth() - terrainTiledLayer.getWidth()) >> 1)
            self.move(-diffX, 0)
        else
            diffX = ((terrainTiledLayer.getWidth() - displayInfo.getLastWidth()) >> 1)
            self.move(diffX, 0)
        end
    end
    

    # throws Exception
    def scrollY(anchor)
        terrainTiledLayer = @geographicMapInterface.getAllBinaryTiledLayer()
        displayInfo = DisplayInfoSingleton.getInstance()
        if anchor == Graphics::TOP
            @logUtil.putF("Top", self, "scrollY")
        elsif anchor == Graphics::BOTTOM
            @logUtil.putF("Bottom", self, "scrollY")
            diffY = (terrainTiledLayer.getHeight() - displayInfo.getLastHeight())
            self.move(0, diffY)
        elsif anchor == Graphics::VCENTER
            @logUtil.putF("Center", self, "scrollY")
            diffY = (terrainTiledLayer.getHeight() - displayInfo.getLastHeight()) / 2
            self.move(0, diffY)
        else
            raise StandardError.new("No Such Anchor Supported")
        end
    end
    

    # throws Exception
    def up()
        y = @geographicMapInterface.getAllBinaryTiledLayer().getYP() - 10
        if self.keepOnMapMinY(y)
            self.move(0, -10)
        end
    end
    

    # throws Exception
    def down()
        y = -@geographicMapInterface.getAllBinaryTiledLayer().getYP() + 10
        if self.keepOnMapMaxY(y)
            self.move(0, 10)
        end
    end
    

    # throws Exception
    def right()
        x = @geographicMapInterface.getAllBinaryTiledLayer().getYP() + 10
        if self.keepOnMapMinX(x)
            self.move(10, 0)
        end
    end
    

    # throws Exception
    def left()
        x = -@geographicMapInterface.getAllBinaryTiledLayer().getYP() - 10
        if self.keepOnMapMaxX(x)
            self.move(-10, 0)
        end
    end
    

    def initInputProcessors()
        @inputProcessorArray[Canvas::UP] = ScrollMapUpGameInputProcessor.new(self)
        @inputProcessorArray[Canvas::DOWN] = ScrollMapDownGameInputProcessor.new(self)
        @inputProcessorArray[Canvas::KEY_NUM9] = ScrollMapRightGameInputProcessor.new(self)
        @inputProcessorArray[Canvas::KEY_NUM7] = ScrollMapLeftGameInputProcessor.new(self)
        GameInputProcessorUtil.init(@inputProcessorArray)
    end
    

    # throws Exception
    def processInputKey(key)
        @inputProcessorArray[key].processEvent(AllBinaryGameLayerManager.getNullInstance(), GameKeyEvent::NONE)
    end
    

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
    

    def getSpecialHeight()
        terrainTiledLayer = @geographicMapInterface.getAllBinaryTiledLayer()
        displayInfo = DisplayInfoSingleton.getInstance()
        if terrainTiledLayer.getHeight() > displayInfo.getLastHeight()
            return terrainTiledLayer.getHeight() - displayInfo.getLastHeight()
        else
            return displayInfo.getLastHeight() - terrainTiledLayer.getHeight() + terrainTiledLayer.getCellHeight()
        end
    end
    

    def getSpecialWidth()
        terrainTiledLayer = @geographicMapInterface.getAllBinaryTiledLayer()
        displayInfo = DisplayInfoSingleton.getInstance()
        if terrainTiledLayer.getWidth() > displayInfo.getLastWidth()
            return terrainTiledLayer.getWidth() - displayInfo.getLastWidth()
        else
            return displayInfo.getLastWidth() - terrainTiledLayer.getWidth() + terrainTiledLayer.getCellWidth()
        end
    end
    

    def keepOnMapMaxY(newY)
        y = @geographicMapInterface.getAllBinaryTiledLayer().getYP()
        if y > @maxBottom + @border
            return false
        else
            return true
        end
    end
    

    def keepOnMapMinY(newY)
        y = @geographicMapInterface.getAllBinaryTiledLayer().getYP()
        if y < -@border
            return false
        else
            return true
        end
    end
    

    def keepOnMapMaxX(newX)
        x = @geographicMapInterface.getAllBinaryTiledLayer().getXP()
        if x < -@maxRight - @border
            return false
        else
            return true
        end
    end
    

    def keepOnMapMinX(newX)
        x = @geographicMapInterface.getAllBinaryTiledLayer().getXP()
        if x > @border
            return false
        else
            return true
        end
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/game/configuration/feature/Features"
require "org/allbinary/game/configuration/feature/InputFeatureFactory"
require "org/allbinary/game/input/event/GameKeyEvent"
require "org/allbinary/game/layer/AllBinaryGameLayerManager"
require "org/allbinary/game/layer/AllBinaryTiledLayer"
require "org/allbinary/graphics/displayable/DisplayInfoSingleton"
require "org/allbinary/layer/AllBinaryLayerManager"
require "org/allbinary/layer/event/ScrollMapEvent"
require "org/allbinary/layer/event/ScrollMapEventHandler"
require "org/allbinary/media/graphics/geography/map/BasicGeographicMap"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/game/input/GameInputProcessor"
require "org/allbinary/game/input/GameInputProcessorUtil"
require "org/allbinary/game/input/InputFactory"
require "org/allbinary/game/input/ScrollMapDownGameInputProcessor"
require "org/allbinary/game/input/ScrollMapLeftGameInputProcessor"
require "org/allbinary/game/input/ScrollMapRightGameInputProcessor"
require "org/allbinary/game/input/ScrollMapUpGameInputProcessor"

