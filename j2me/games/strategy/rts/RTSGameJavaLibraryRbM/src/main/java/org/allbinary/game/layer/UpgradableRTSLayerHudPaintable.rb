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
require "java/lang/JavaClass"
require "org/allbinary/game/layer/SelectionHudPaintable"

module ::Org; module Allbinary; module Game; module Layer

class UpgradableRTSLayerHudPaintable < SelectionHudPaintable
    attr_accessor :PERCENT, :rtsLayer, :costY, :costY1, :percentCompleteX2, :rtsLayerCompositePaintableLateInit, :charHeight, :charWidth, :percentComplete, :percentCompleteX, :percentCompleteArray, :currentTotalDigits

    def jfields_org_allbinary_game_layer_UpgradableRTSLayerHudPaintable
        @PERCENT = "%"
        @rtsLayer = ::Org::Allbinary::Game::Layer::Special::CollidableDestroyableDamageableLayer.getNullInstance()
        @costY = 0 unless instance_variable_defined?(:@costY)
        @costY1 = 0 unless instance_variable_defined?(:@costY1)
        @percentCompleteX2 = 0 unless instance_variable_defined?(:@percentCompleteX2)
        @rtsLayerCompositePaintableLateInit = nil unless instance_variable_defined?(:@rtsLayerCompositePaintableLateInit)
        @charHeight = 0 unless instance_variable_defined?(:@charHeight)
        @charWidth = 0 unless instance_variable_defined?(:@charWidth)
        @percentComplete = 0 unless instance_variable_defined?(:@percentComplete)
        @percentCompleteX = 0 unless instance_variable_defined?(:@percentCompleteX)
        @percentCompleteArray = ::Org::Allbinary::Logic::Java::Character::CharArrayFactory.getInstance().getZeroCharArray()
        @currentTotalDigits = 0 unless instance_variable_defined?(:@currentTotalDigits)
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def initialize()
        super()
        jfields_org_allbinary_game_layer_UpgradableRTSLayerHudPaintable
    end
    

    def updateMeasurement(graphics)
        UpgradableRTSLayerHudPaintable.superclass.java_super_method(:updateMeasurement, 1).bind(self).call(graphics)
        font = graphics.getFont()
        @charHeight = font.getHeight()
        @charWidth = ::Org::Allbinary::Graphics::Font::MyFontProcessor.defaultCharWidth(font)
    end
    java_overload :updateMeasurement, 1
    

    def update()
        UpgradableRTSLayerHudPaintable.superclass.java_super_method(:update, 0).bind(self).call()
        commonButtons = ::Org::Allbinary::Input::Motion::Button::CommonButtons.getInstance()
        @costY = (@y + commonButtons.STANDARD_BUTTON_SIZE)
        @costY1 = (@y + commonButtons.STANDARD_BUTTON_SIZE - @charHeight)
        @percentCompleteX2 = @imageX + commonButtons.STANDARD_BUTTON_SIZE - @charWidth
        displayInfoSingleton = ::Org::Allbinary::Graphics::Displayable::DisplayInfoSingleton.getInstance()
        if displayInfoSingleton.getLastWidth() > 320
            @rtsLayerCompositePaintableLateInit = UpgradableWideRTSLayerPaintable.new(self)
        else
            @rtsLayerCompositePaintableLateInit = RTSLayerCompositePaintable.new(self)
        end
    end
    java_overload :update, 0
    

    def updateSelectionInfo()
        rtsLayer = self.getRtsLayer()
        @rtsLayerCompositePaintableLateInit.update(rtsLayer)
        self.setAnimationInterface(rtsLayer.getVerticleBuildAnimationInterface())
        self.setName(rtsLayer.getName())
    end
    java_overload :updateSelectionInfo, 0
    

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
    java_overload :updateInfo, 0
    

    def paint(graphics)
        UpgradableRTSLayerHudPaintable.superclass.java_super_method(:paint, 1).bind(self).call(graphics)
        @rtsLayerCompositePaintableLateInit.paint(graphics)
        graphics.drawChars(@percentCompleteArray, 0, @currentTotalDigits, @imageX + @percentCompleteX, @costY, 0)
        graphics.drawString(@PERCENT, @percentCompleteX2, @costY, 0)
        self.getAnimationInterface().paintXY(graphics, @imageX, @y)
    end
    java_overload :paint, 1
    

    def setRtsLayer(rtsLayer)
        @rtsLayer = rtsLayer
    end
    java_overload :setRtsLayer, 1
    

    def getRtsLayer()
        return @rtsLayer
    end
    java_overload :getRtsLayer, 0

    def self.instance()
        UpgradableRTSLayerHudPaintable.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        UpgradableRTSLayerHudPaintable.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = UpgradableRTSLayerHudPaintable.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "UpgradableRTSLayerHudPaintable"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Javax; module Microedition; module Lcdui; autoload :Font, "javax/microedition/lcdui/Font" unless const_defined?(:Font, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Special; autoload :CollidableDestroyableDamageableLayer, "org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer" unless const_defined?(:CollidableDestroyableDamageableLayer, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Java; module Character; autoload :CharArrayFactory, "org/allbinary/logic/java/character/CharArrayFactory" unless const_defined?(:CharArrayFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; autoload :DisplayInfoSingleton, "org/allbinary/graphics/displayable/DisplayInfoSingleton" unless const_defined?(:DisplayInfoSingleton, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Font; autoload :MyFontProcessor, "org/allbinary/graphics/font/MyFontProcessor" unless const_defined?(:MyFontProcessor, false); end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Button; autoload :CommonButtons, "org/allbinary/input/motion/button/CommonButtons" unless const_defined?(:CommonButtons, false); end; end; end; end; end
autoload :RTSLayer, "org/allbinary/game/layer/RTSLayer" unless const_defined?(:RTSLayer, false)
autoload :RTSLayerCompositePaintable, "org/allbinary/game/layer/RTSLayerCompositePaintable" unless const_defined?(:RTSLayerCompositePaintable, false)
autoload :UpgradableWideRTSLayerPaintable, "org/allbinary/game/layer/UpgradableWideRTSLayerPaintable" unless const_defined?(:UpgradableWideRTSLayerPaintable, false)

begin
    UpgradableRTSLayerHudPaintable.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

