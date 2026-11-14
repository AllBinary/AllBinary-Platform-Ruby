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

require "org/allbinary/graphics/font/UpdateMyFontInterface"
require "org/allbinary/graphics/paint/PaintableInterface"

class CountedLayersHudPaintable
    include PaintableInterface
    include UpdateMyFontInterface
    attr_accessor :displayInfoSingleton, :partInterfaceArray, :countedTotalStringColor, :countedPartsBorder, :startIndex, :dropSize, :myFontProcessor, :height

    def initialize_fields
        @displayInfoSingleton = DisplayInfoSingleton.getInstance()
        @partInterfaceArray = nil
        @countedTotalStringColor = nil
        @countedPartsBorder = nil
        @startIndex = nil
        @dropSize = nil
        @myFontProcessor = UpdateMyFontProcessor.new(self)
        @height = 0
    end
    

    def initialize(partInterfaceArray, dropSize, startIndex, countedTotalStringColor, countedPartsBorder)
        initialize_fields
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
            (CountedLayersHudPaintable.send(:remove_const, :XXStringWidth) if CountedLayersHudPaintable.const_defined?(:XXStringWidth, false); CountedLayersHudPaintable.const_set(:XXStringWidth, font.stringWidth(_XXString)))
        end
        @myFontProcessor = MyFontProcessor.getInstance()
    end
    

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
    

    def paintThreed(graphics)
    end

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

autoload :Font, "javax/microedition/lcdui/Font"
autoload :Graphics, "javax/microedition/lcdui/Graphics"
autoload :PickedUpLayerInterfaceFactoryInterface, "org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryInterface"
autoload :DisplayInfoSingleton, "org/allbinary/graphics/displayable/DisplayInfoSingleton"
autoload :MyFontProcessor, "org/allbinary/graphics/font/MyFontProcessor"
autoload :UpdateMyFontProcessor, "org/allbinary/graphics/font/UpdateMyFontProcessor"
autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer"
autoload :CountedLayerInterfaceFactoryPart, "org/allbinary/game/part/CountedLayerInterfaceFactoryPart"
autoload :PartInterface, "org/allbinary/game/part/PartInterface"

begin
    CountedLayersHudPaintable.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

