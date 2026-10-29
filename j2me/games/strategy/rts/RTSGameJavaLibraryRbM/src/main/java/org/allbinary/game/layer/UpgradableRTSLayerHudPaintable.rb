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

# require "javax/microedition/lcdui/Font"
# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/game/layer/SelectionHudPaintable"

class UpgradableRTSLayerHudPaintable < SelectionHudPaintable
    attr_accessor :PERCENT, :rtsLayer, :costY, :costY1, :percentCompleteX2, :rtsLayerCompositePaintableLateInit, :charHeight, :charWidth, :percentComplete, :percentCompleteX, :percentCompleteArray, :currentTotalDigits

    def initialize_fields
        @PERCENT = "%"
        @rtsLayer = CollidableDestroyableDamageableLayer.getNullInstance()
        @costY = 0
        @costY1 = 0
        @percentCompleteX2 = 0
        @rtsLayerCompositePaintableLateInit = nil
        @charHeight = 0
        @charWidth = 0
        @percentComplete = 0
        @percentCompleteX = 0
        @percentCompleteArray = CharArrayFactory.getInstance().getZeroCharArray()
        @currentTotalDigits = 0
    end
    

    def self.getInstance()
        return UpgradableRTSLayerHudPaintable.instance
    end
    

    def initialize()
        super()
        initialize_fields
    end
    

    def updateMeasurement(graphics)
        super(graphics)
        font = graphics.getFont()
        @charHeight = font.getHeight()
        @charWidth = MyFontProcessor.defaultCharWidth(font)
    end
    

    def update()
        super()
        commonButtons = CommonButtons.getInstance()
        @costY = (@y + commonButtons.STANDARD_BUTTON_SIZE)
        @costY1 = (@y + commonButtons.STANDARD_BUTTON_SIZE - @charHeight)
        @percentCompleteX2 = @imageX + commonButtons.STANDARD_BUTTON_SIZE - @charWidth
        displayInfoSingleton = DisplayInfoSingleton.getInstance()
        if displayInfoSingleton.getLastWidth() > 320
            @rtsLayerCompositePaintableLateInit = UpgradableWideRTSLayerPaintable.new(self)
        else
            @rtsLayerCompositePaintableLateInit = RTSLayerCompositePaintable.new(self)
        end
    end
    

    def updateSelectionInfo()
        rtsLayer = self.getRtsLayer()
        @rtsLayerCompositePaintableLateInit.update(rtsLayer)
        self.setAnimationInterface(rtsLayer.getVerticleBuildAnimationInterface())
        self.setName(rtsLayer.getName())
    end
    

    def updateInfo()
        rtsLayer = self.getRtsLayer()
        @percentComplete = rtsLayer.getPercentComplete()
        if @percentComplete < 10
            @percentCompleteX = 32
        elsif @percentComplete < 100
            @percentCompleteX = 24
        else
            @percentCompleteX = 16
        end
        @percentCompleteArray = self.getPrimitiveLongUtil().getCharArray(@percentComplete)
        @currentTotalDigits = self.getPrimitiveLongUtil().getCurrentTotalDigits()
    end
    

    def paint(graphics)
        super(graphics)
        @rtsLayerCompositePaintableLateInit.paint(graphics)
        graphics.drawChars(@percentCompleteArray, 0, @currentTotalDigits, @imageX + @percentCompleteX, @costY, 0)
        graphics.drawString(@PERCENT, @percentCompleteX2, @costY, 0)
        self.getAnimationInterface().paintXY(graphics, @imageX, @y)
    end
    

    def setRtsLayer(rtsLayer)
        @rtsLayer = rtsLayer
    end
    

    def getRtsLayer()
        return @rtsLayer
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer"
require "org/allbinary/logic/java/character/CharArrayFactory"
require "org/allbinary/graphics/displayable/DisplayInfoSingleton"
require "org/allbinary/graphics/font/MyFontProcessor"
require "org/allbinary/input/motion/button/CommonButtons"
require "org/allbinary/game/layer/RTSLayer"
require "org/allbinary/game/layer/RTSLayerCompositePaintable"
require "org/allbinary/game/layer/UpgradableWideRTSLayerPaintable"

class UpgradableRTSLayerHudPaintable
    @@instance = UpgradableRTSLayerHudPaintable.new()
end

