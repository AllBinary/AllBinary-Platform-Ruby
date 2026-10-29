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

# require "javax/microedition/lcdui/Font"
# require "javax/microedition/lcdui/Graphics"
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
            CountedLayersHudPaintable::XXStringWidth = font.stringWidth(_XXString)
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
end

require "org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryInterface"
require "org/allbinary/graphics/displayable/DisplayInfoSingleton"
require "org/allbinary/graphics/font/MyFontProcessor"
require "org/allbinary/graphics/font/UpdateMyFontProcessor"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/game/part/CountedLayerInterfaceFactoryPart"
require "org/allbinary/game/part/PartInterface"

class CountedLayersHudPaintable
    XXStringWidth = 0
end

