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
# package org.allbinary.game.layer.building

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
require "org/allbinary/game/ag/layer/hud/basic/NumberStringHud"
require "org/allbinary/game/layer/SelectionHudPaintable"

module ::Org; module Allbinary; module Game; module Layer; module Building

class BuildingInfoHudPaintable < ::Org::Allbinary::Game::Layer::SelectionHudPaintable
    attr_accessor :logUtil, :HEALTH, :productivityHud, :efficiencyHud, :healthHud, :maxHealthHud, :rtsLayer, :currentHealth
    class BuildingNumberHud < ::Org::Allbinary::Game::Ag::Layer::Hud::Basic::NumberStringHud
        attr_accessor :baseTextX, :baseY, :row, :prefixLength, :positionBeforeMeasurement

        def jfields_org_allbinary_game_layer_building_BuildingInfoHudPaintable_BuildingNumberHud
            @baseTextX = nil unless instance_variable_defined?(:@baseTextX)
            @baseY = nil unless instance_variable_defined?(:@baseY)
            @row = nil unless instance_variable_defined?(:@row)
            @prefixLength = nil unless instance_variable_defined?(:@prefixLength)
            @positionBeforeMeasurement = nil unless instance_variable_defined?(:@positionBeforeMeasurement)
        end
        

        def initialize(label, maximum, basicHudFactory, basicColor, baseTextX, baseY, row, prefixLength, positionBeforeMeasurement)
            super(label, maximum, basicHudFactory.ABSOLUTE, basicHudFactory.HORIZONTAL, 0, basicColor)
            jfields_org_allbinary_game_layer_building_BuildingInfoHudPaintable
            @baseTextX = baseTextX
            @baseY = baseY
            @row = row
            @prefixLength = prefixLength
            @positionBeforeMeasurement = positionBeforeMeasurement
        end
        

        def updateMeasurement(graphics)
            if !@positionBeforeMeasurement
                BuildingInfoHudPaintable.superclass.java_super_method(:updateMeasurement, 1).bind(self).call(graphics)
            end
            font = graphics.getFont()
            @updateMaxWidth = @baseTextX + @prefixLength * font.getHeight()
            @updateMaxHeight = @baseY + @row * font.getHeight()
            if @positionBeforeMeasurement
                BuildingInfoHudPaintable.superclass.java_super_method(:updateMeasurement, 1).bind(self).call(graphics)
            end
        end
        java_overload :updateMeasurement, 1
    end

    def jfields_org_allbinary_game_layer_building_BuildingInfoHudPaintable
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @HEALTH = "Health:"
        @productivityHud = nil unless instance_variable_defined?(:@productivityHud)
        @efficiencyHud = nil unless instance_variable_defined?(:@efficiencyHud)
        @healthHud = nil unless instance_variable_defined?(:@healthHud)
        @maxHealthHud = nil unless instance_variable_defined?(:@maxHealthHud)
        @rtsLayer = ::Org::Allbinary::Game::Layer::NullPathFindingLayer::NULL_PATH_FINDING_LAYER
        @currentHealth = 0
    end
    

    def self.getInstance()
        return BuildingInfoHudPaintable.instance
    end
    

    def initialize()
        super()
        jfields_org_allbinary_game_layer_building_BuildingInfoHudPaintable
        numberStringHudFactory = ::Org::Allbinary::Game::Ag::Layer::Hud::Basic::NumberStringHudFactory.getInstance()
        productivityHud = numberStringHudFactory.NULL_NUMBER_STRING_HUD
        efficiencyHud = numberStringHudFactory.NULL_NUMBER_STRING_HUD
        healthHud = numberStringHudFactory.NULL_NUMBER_STRING_HUD
        maxHealthHud = numberStringHudFactory.NULL_NUMBER_STRING_HUD
        begin
            basicHudFactory = ::Org::Allbinary::Game::Graphics::Hud::BasicHudFactory.getInstance()
            basicColor = self.getBasicColorP()
            textX = @textX
            y = @y
            productivityHud = BuildingNumberHud.new("Productivity:", 999, basicHudFactory, basicColor, textX, y, 1, 0, true)
            efficiencyHud = BuildingNumberHud.new("Efficiency:", 999, basicHudFactory, basicColor, textX, y, 2, 0, false)
            healthHud = BuildingNumberHud.new(@HEALTH, 99999, basicHudFactory, basicColor, textX, y, 3, 0, true)
            maxHealthHud = BuildingNumberHud.new("/ ", 99999, basicHudFactory, basicColor, textX, y, 3, @HEALTH.length + 1, false)
        rescue StandardError => e
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.CONSTRUCTOR, e)
        end
        @productivityHud = productivityHud
        @efficiencyHud = efficiencyHud
        @healthHud = healthHud
        @maxHealthHud = maxHealthHud
    end
    

    def updateMeasurement(graphics)
        font = graphics.getFont()
        totalLength = @HEALTH.length + ::Org::Allbinary::Logic::MathPackage::MathUtil.getInstance().getTotalDigits(@currentHealth)
        @maxHealthHud.setX(@textX + ::Org::Allbinary::Graphics::Font::MyFontProcessor.defaultStringWidth(font, totalLength))
        @myFontProcessor = ::Org::Allbinary::Graphics::Font::MyFontProcessor.getInstance()
    end
    java_overload :updateMeasurement, 1
    

    def setBasicColorP(basicColor)
        BuildingInfoHudPaintable.superclass.java_super_method(:setBasicColorP, 1).bind(self).call(basicColor)
        @productivityHud.setBasicColorP(basicColor)
        @efficiencyHud.setBasicColorP(basicColor)
        @healthHud.setBasicColorP(basicColor)
        @maxHealthHud.setBasicColorP(basicColor)
    end
    java_overload :setBasicColorP, 1
    

    def paint(graphics)
        BuildingInfoHudPaintable.superclass.java_super_method(:paint, 1).bind(self).call(graphics)
        @myFontProcessor.process(graphics)
        @productivityHud.paint(graphics)
        @efficiencyHud.paint(graphics)
        @healthHud.paint(graphics)
        @maxHealthHud.paint(graphics)
        self.getAnimationInterface().paintXY(graphics, @imageX, @y)
    end
    java_overload :paint, 1
    

    def updateSelectionInfo()
        buildingLayer = @rtsLayer
        self.setName(buildingLayer.getName())
        self.setAnimationInterface(buildingLayer.getVerticleBuildAnimationInterface())
        @productivityHud.set(buildingLayer.getProductivity())
        @efficiencyHud.set(buildingLayer.getEfficiency() / 100)
        @currentHealth = buildingLayer.getHealthInterface().getHealth()
        @healthHud.set(@currentHealth)
        @myFontProcessor = @updateMyFontProcessor
        @maxHealthHud.set(buildingLayer.getHealthInterface().getMaxHealth())
    end
    java_overload :updateSelectionInfo, 0
    

    def setRtsLayer(rtsLayer)
        @rtsLayer = rtsLayer
    end
    java_overload :setRtsLayer, 1

    def self.instance()
        BuildingInfoHudPaintable.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        BuildingInfoHudPaintable.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = BuildingInfoHudPaintable.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "BuildingInfoHudPaintable"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Javax; module Microedition; module Lcdui; autoload :Font, "javax/microedition/lcdui/Font" unless const_defined?(:Font, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Game; module Ag; module Layer; module Hud; module Basic; autoload :NumberStringHudFactory, "org/allbinary/game/ag/layer/hud/basic/NumberStringHudFactory" unless const_defined?(:NumberStringHudFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Graphics; module Hud; autoload :BasicHudFactory, "org/allbinary/game/graphics/hud/BasicHudFactory" unless const_defined?(:BasicHudFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :NullPathFindingLayer, "org/allbinary/game/layer/NullPathFindingLayer" unless const_defined?(:NullPathFindingLayer, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :PathFindingLayerInterface, "org/allbinary/game/layer/PathFindingLayerInterface" unless const_defined?(:PathFindingLayerInterface, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Font; autoload :MyFontProcessor, "org/allbinary/graphics/font/MyFontProcessor" unless const_defined?(:MyFontProcessor, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :MathUtil, "org/allbinary/logic/math/MathUtil" unless const_defined?(:MathUtil, false); end; end; end; end
autoload :BuildingLayer, "org/allbinary/game/layer/building/BuildingLayer" unless const_defined?(:BuildingLayer, false)

begin
    BuildingInfoHudPaintable.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

