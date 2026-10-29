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

# require "javax/microedition/lcdui/Font"
# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/game/ag/layer/hud/basic/NumberStringHud"
require "org/allbinary/game/layer/SelectionHudPaintable"

class BuildingInfoHudPaintable < SelectionHudPaintable
    attr_accessor :logUtil, :HEALTH, :productivityHud, :efficiencyHud, :healthHud, :maxHealthHud, :rtsLayer, :currentHealth

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @HEALTH = "Health:"
        @productivityHud = nil
        @efficiencyHud = nil
        @healthHud = nil
        @maxHealthHud = nil
        @rtsLayer = NullPathFindingLayer::NULL_PATH_FINDING_LAYER
        @currentHealth = 0
    end
    

    def self.getInstance()
        return BuildingInfoHudPaintable.instance
    end
    

    def initialize()
        super()
        initialize_fields
        numberStringHudFactory = NumberStringHudFactory.getInstance()
        productivityHud = numberStringHudFactory.NULL_NUMBER_STRING_HUD
        efficiencyHud = numberStringHudFactory.NULL_NUMBER_STRING_HUD
        healthHud = numberStringHudFactory.NULL_NUMBER_STRING_HUD
        maxHealthHud = numberStringHudFactory.NULL_NUMBER_STRING_HUD
        begin
            index = 0
            basicHudFactory = BasicHudFactory.getInstance()
            basicColor = self.getBasicColorP()
            textX = @textX
            y = @y
            firstIndex = index
            class ProductivityNumberStringHud < NumberStringHud
                

                def initialize()
                    super("Productivity:", 999, @basicHudFactory.ABSOLUTE, @basicHudFactory.HORIZONTAL, 0, @basicColor)
                end
                

                def updateMeasurement(graphics)
                    font = graphics.getFont()
                    @updateMaxWidth = @textX
                    @updateMaxHeight = @y + ((@firstIndex + 1) * font.getHeight())
                    super(graphics)
                end
            end
            productivityHud = ProductivityNumberStringHud.new()
            index += 1
            secondIndex = index
            class EfficiencyNumberStringHud < NumberStringHud
                

                def initialize()
                    super("Efficiency:", 999, @basicHudFactory.ABSOLUTE, @basicHudFactory.HORIZONTAL, 0, @basicColor)
                end
                

                def updateMeasurement(graphics)
                    super(graphics)
                    font = graphics.getFont()
                    @updateMaxWidth = @textX
                    @updateMaxHeight = @y + ((@secondIndex + 1) * font.getHeight())
                end
            end
            efficiencyHud = EfficiencyNumberStringHud.new()
            index += 1
            _HEALTH = @HEALTH
            thirdIndex = index
            class HealthNumberStringHud < NumberStringHud
                

                def initialize()
                    super(@HEALTH, 99999, @basicHudFactory.ABSOLUTE, @basicHudFactory.HORIZONTAL, 0, @basicColor)
                end
                

                def updateMeasurement(graphics)
                    font = graphics.getFont()
                    @updateMaxWidth = @textX
                    @updateMaxHeight = @y + ((@thirdIndex + 1) * font.getHeight())
                    super(graphics)
                end
            end
            totalLength = _HEALTH.length + 1
            healthHud = HealthNumberStringHud.new()
            fourthIndex = index
            class MaxHealthNumberStringHud < NumberStringHud
                

                def initialize()
                    super("/ ", 99999, @basicHudFactory.ABSOLUTE, @basicHudFactory.HORIZONTAL, 0, @basicColor)
                end
                

                def updateMeasurement(graphics)
                    super(graphics)
                    font = graphics.getFont()
                    @updateMaxWidth = @textX + (@totalLength * font.getHeight())
                    @updateMaxHeight = @y + ((@fourthIndex + 1) * font.getHeight())
                end
            end
            maxHealthHud = MaxHealthNumberStringHud.new()
        rescue StandardError => e
            commonStrings = CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.CONSTRUCTOR, e)
        end
        @productivityHud = productivityHud
        @efficiencyHud = efficiencyHud
        @healthHud = healthHud
        @maxHealthHud = maxHealthHud
    end
    

    def updateMeasurement(graphics)
        font = graphics.getFont()
        totalLength = @HEALTH.length + MathUtil.getInstance().getTotalDigits(@currentHealth)
        @maxHealthHud.setX(@textX + MyFontProcessor.defaultStringWidth(font, totalLength))
        @myFontProcessor = MyFontProcessor.getInstance()
    end
    

    def setBasicColorP(basicColor)
        super(basicColor)
        @productivityHud.setBasicColorP(basicColor)
        @efficiencyHud.setBasicColorP(basicColor)
        @healthHud.setBasicColorP(basicColor)
        @maxHealthHud.setBasicColorP(basicColor)
    end
    

    def paint(graphics)
        super(graphics)
        @myFontProcessor.process(graphics)
        @productivityHud.paint(graphics)
        @efficiencyHud.paint(graphics)
        @healthHud.paint(graphics)
        @maxHealthHud.paint(graphics)
        self.getAnimationInterface().paintXY(graphics, @imageX, @y)
    end
    

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
    

    def setRtsLayer(rtsLayer)
        @rtsLayer = rtsLayer
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/game/ag/layer/hud/basic/NumberStringHudFactory"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/game/graphics/hud/BasicHudFactory"
require "org/allbinary/game/layer/NullPathFindingLayer"
require "org/allbinary/game/layer/PathFindingLayerInterface"
require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/graphics/font/MyFontProcessor"
require "org/allbinary/logic/math/MathUtil"
require "org/allbinary/game/layer/building/BuildingLayer"

class BuildingInfoHudPaintable
    @@instance = BuildingInfoHudPaintable.new()
end

