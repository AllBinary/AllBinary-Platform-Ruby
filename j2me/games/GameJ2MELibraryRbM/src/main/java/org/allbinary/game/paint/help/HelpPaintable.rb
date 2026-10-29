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
# package org.allbinary.game.paint.help

# require "javax/microedition/lcdui/Font"
# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/graphics/font/UpdateMyFontInterface"
require "org/allbinary/graphics/paint/Paintable"

class HelpPaintable < Paintable
    include UpdateMyFontInterface
    attr_accessor :displayInfo, :updateMyFontProcessor, :myFontProcessor, :anchor, :title, :inputInfo, :basicColor, :titleBeginWidth, :beginWidthArray, :charHeight

    def initialize_fields
        @displayInfo = DisplayInfoSingleton.getInstance()
        @updateMyFontProcessor = UpdateMyFontProcessor.new(self)
        @myFontProcessor = @updateMyFontProcessor
        @anchor = Anchor::TOP_LEFT
        @title = nil
        @inputInfo = StringUtil.getInstance().getArrayInstance()
        @basicColor = nil
        @titleBeginWidth = 0
        @beginWidthArray = NullUtil.getInstance().NULL_INT_ARRAY
        @charHeight = 0
    end
    

    def initialize(title, backgroundBasicColor, basicColor)
        super()
        initialize_fields
        @title = title
        @basicColor = basicColor
    end
    

    def updateMeasurement(graphics)
        font = graphics.getFont()
        @titleBeginWidth = (font.stringWidth(@title) >> 1)
        @charHeight = font.getHeight()
        size = @inputInfo.length
        (0...size).each do |index|
            @beginWidthArray[index] = (font.stringWidth(@inputInfo[index]) >> 1)
        end
        @myFontProcessor = MyFontProcessor.getInstance()
    end
    

    def setInputInfoP(inputInfo)
        @inputInfo = inputInfo
        @beginWidthArray = Array.new(@inputInfo.length, 0)
        @myFontProcessor = @updateMyFontProcessor
    end
    

    def paint(graphics)
        @myFontProcessor.process(graphics)
        halfWidth = @displayInfo.getLastHalfWidth()
        graphics.setColor(@basicColor.to_i)
        graphics.drawString(@title, halfWidth - @titleBeginWidth, @charHeight, @anchor)
        size = @inputInfo.length
        (0...size).each do |index|
            graphics.drawString(@inputInfo[index], halfWidth - @beginWidthArray[index], (index + 3) * @charHeight, @anchor)
        end
    end
end

require "org/allbinary/graphics/Anchor"
require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/graphics/displayable/DisplayInfoSingleton"
require "org/allbinary/graphics/font/MyFontProcessor"
require "org/allbinary/graphics/font/UpdateMyFontProcessor"
require "org/allbinary/logic/NullUtil"
require "org/allbinary/logic/string/StringUtil"

