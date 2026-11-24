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
# package org.allbinary.game.part

require "java/lang/JavaOverload"
require "org/allbinary/graphics/font/UpdateMyFontInterface"
require "org/allbinary/graphics/paint/PaintableInterface"

module ::Org; module Allbinary; module Game; module Part

class CountedLayersHudPaintable
    include ::Org::Allbinary::Graphics::Paint::PaintableInterface
    include ::Org::Allbinary::Graphics::Font::UpdateMyFontInterface
    attr_accessor :displayInfoSingleton, :partInterfaceArray, :countedTotalStringColor, :countedPartsBorder, :startIndex, :dropSize, :myFontProcessor, :height

    def jfields_org_allbinary_game_part_CountedLayersHudPaintable
        @displayInfoSingleton = ::Org::Allbinary::Graphics::Displayable::DisplayInfoSingleton.getInstance()
        @partInterfaceArray = nil unless instance_variable_defined?(:@partInterfaceArray)
        @countedTotalStringColor = nil unless instance_variable_defined?(:@countedTotalStringColor)
        @countedPartsBorder = nil unless instance_variable_defined?(:@countedPartsBorder)
        @startIndex = nil unless instance_variable_defined?(:@startIndex)
        @dropSize = nil unless instance_variable_defined?(:@dropSize)
        @myFontProcessor = ::Org::Allbinary::Graphics::Font::UpdateMyFontProcessor.new(self)
        @height = 0 unless instance_variable_defined?(:@height)
    end
    

    def initialize(partInterfaceArray, dropSize, startIndex, countedTotalStringColor, countedPartsBorder)
        jfields_org_allbinary_game_part_CountedLayersHudPaintable
        @partInterfaceArray = partInterfaceArray
        @startIndex = startIndex
        @countedTotalStringColor = countedTotalStringColor
        @countedPartsBorder = countedPartsBorder
        @dropSize = dropSize
    end
    

    def updateMeasurement(graphics)
        font = graphics.getFont()
        @height = font.getHeight()
        if @dropSize > font.getHeight()
            @height = @dropSize
        end
        if CountedLayersHudPaintable::XXStringWidth == 0
            _XXString = "XX"
            (CountedLayersHudPaintable.instance_exec(font.stringWidth(_XXString)) { |java_value| remove_const(:XXStringWidth) if const_defined?(:XXStringWidth, false); const_set(:XXStringWidth, java_value) })
        end
        @myFontProcessor = ::Org::Allbinary::Graphics::Font::MyFontProcessor.getInstance()
    end
    java_overload :updateMeasurement, 1
    

    def paint(graphics)
        @myFontProcessor.process(graphics)
        lastWidth = @displayInfoSingleton.getLastWidth()
        widthEdge = lastWidth - @dropSize
        size = @partInterfaceArray.length
        count = 0
        y = 0
        countedLayerInterfaceFactory = nil
        pickedUpLayerInterfaceFactoryInterface = nil
        layerInterface = nil
        charArray = nil
        (@startIndex...size).each do |index|
            countedLayerInterfaceFactory = @partInterfaceArray[index]
            if countedLayerInterfaceFactory.getTotal() > 0
                pickedUpLayerInterfaceFactoryInterface = countedLayerInterfaceFactory.getCountedPickedUpLayerInterfaceFactory()
                layerInterface = pickedUpLayerInterfaceFactoryInterface.getIconLayer()
                y = 40 + (count * @height)
                layerInterface.setPosition(widthEdge, y, layerInterface.getZP())
                layerInterface.paint(graphics)
                graphics.setColor(@countedTotalStringColor)
                countedLayerInterfaceFactory.paint(graphics)
                charArray = countedLayerInterfaceFactory.getTotalString()
                graphics.drawChars(charArray, 0, charArray.length, widthEdge - countedLayerInterfaceFactory.getXOffset(), y, 0)
                count += 1
            end
        end
        if count > 0
            graphics.setColor(@countedPartsBorder)
            graphics.drawRect(lastWidth - (CountedLayersHudPaintable::XXStringWidth + @dropSize), 40, CountedLayersHudPaintable::XXStringWidth + @dropSize, (count * @height) + 3)
        end
    end
    java_overload :paint, 1
    

    def paintThreed(graphics)
    end
    java_overload :paintThreed, 1

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:XXStringWidth, 0)
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "CountedLayersHudPaintable"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:XXStringWidth].include?(name)
        end
        super
    end
end

module ::Javax; module Microedition; module Lcdui; autoload :Font, "javax/microedition/lcdui/Font" unless const_defined?(:Font, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Pickup; autoload :PickedUpLayerInterfaceFactoryInterface, "org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryInterface" unless const_defined?(:PickedUpLayerInterfaceFactoryInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; autoload :DisplayInfoSingleton, "org/allbinary/graphics/displayable/DisplayInfoSingleton" unless const_defined?(:DisplayInfoSingleton, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Font; autoload :MyFontProcessor, "org/allbinary/graphics/font/MyFontProcessor" unless const_defined?(:MyFontProcessor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Font; autoload :UpdateMyFontProcessor, "org/allbinary/graphics/font/UpdateMyFontProcessor" unless const_defined?(:UpdateMyFontProcessor, false); end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
autoload :CountedLayerInterfaceFactoryPart, "org/allbinary/game/part/CountedLayerInterfaceFactoryPart" unless const_defined?(:CountedLayerInterfaceFactoryPart, false)
autoload :PartInterface, "org/allbinary/game/part/PartInterface" unless const_defined?(:PartInterface, false)

begin
    CountedLayersHudPaintable.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

