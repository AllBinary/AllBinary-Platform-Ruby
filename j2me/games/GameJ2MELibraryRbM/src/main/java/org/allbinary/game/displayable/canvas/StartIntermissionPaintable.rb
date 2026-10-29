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
# package org.allbinary.game.displayable.canvas

# require "javax/microedition/lcdui/Font"
# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/graphics/font/UpdateMyFontInterface"
require "org/allbinary/graphics/paint/InitUpdatePaintable"

class StartIntermissionPaintable < InitUpdatePaintable
    include UpdateMyFontInterface
    attr_accessor :fontDebugFactory, :basicSetColorUtil, :gameCanvas, :stringArray, :fontSize, :font, :lastWidth, :updateMyFontProcessor, :myFontProcessor, :basicColor, :color, :lineYOffsetArray, :hasChanged, :anchor, :fontHeightP, :BEGIN_LEVEL, :EMPTY_STRING

    def initialize_fields
        @fontDebugFactory = FontDebugFactory.getInstance()
        @basicSetColorUtil = BasicColorSetUtil.getInstance()
        @gameCanvas = nil
        @stringArray = nil
        @fontSize = nil
        @font = nil
        @lastWidth = nil
        @updateMyFontProcessor = UpdateMyFontProcessor.new(self)
        @myFontProcessor = @updateMyFontProcessor
        @basicColor = BasicColorFactory.getInstance().BLACK
        @color = nil
        @lineYOffsetArray = NullUtil.getInstance().NULL_INT_ARRAY
        @hasChanged = true
        @anchor = Anchor::TOP_LEFT
        @fontHeightP = 0
        @BEGIN_LEVEL = "Begin Level "
        @EMPTY_STRING = StringUtil.getInstance().EMPTY_STRING
    end
    

    def initialize(gameCanvas, stringArray, basicColor, font)
        super()
        initialize_fields
        @gameCanvas = gameCanvas
        @stringArray = stringArray
        @lastWidth = Array.new(@stringArray.length, 0)
        self.setBasicColorP(basicColor)
        @color = basicColor.to_i
        @fontSize = font.getSize()
        @font = font
    end
    

    def updateMeasurement(graphics)
        font = graphics.getFont()
        @fontHeightP = font.getHeight()
        @myFontProcessor = MyFontProcessor.getInstance()
    end
    

    def paint(graphics)
        @myFontProcessor.process(graphics)
        existingFont = graphics.getFont()
        @fontDebugFactory.setFont(@font, graphics)
        displayInfo = DisplayInfoSingleton.getInstance()
        @basicSetColorUtil.setBasicColorP3(graphics, @basicColor, @color)
        beginWidth = 0
        (@lineYOffsetArray.length - 1).step(0, -(1)) do |index|
            if @hasChanged
                @lastWidth[index] = (graphics.getFont().stringWidth(@stringArray[index]) >> 1)
            end
            beginWidth = @lastWidth[index]
            graphics.drawString(@stringArray[index], displayInfo.getLastHalfWidth() - beginWidth, displayInfo.getLastHalfHeight() - @lineYOffsetArray[index], @anchor)
        end
        @hasChanged = false
        @fontDebugFactory.setFont(existingFont, graphics)
    end
    

    def update()
        level = @gameCanvas.getLayerManager().getGameInfo().getCurrentLevel()
        @stringArray[0] = StringMaker.new().append(@BEGIN_LEVEL).appendint(level).to_s
        (@stringArray.length - 1).step(1, -(1)) do |index|
            @stringArray[index] = @EMPTY_STRING
        end
    end
    

    def setBasicColorP(basicColor)
        @basicColor = basicColor
    end
    

    def getBasicColorP()
        return @basicColor
    end
end

require "org/allbinary/graphics/Anchor"
require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/graphics/color/BasicColorFactory"
require "org/allbinary/graphics/color/BasicColorSetUtil"
require "org/allbinary/graphics/displayable/DisplayInfoSingleton"
require "org/allbinary/graphics/font/FontDebugFactory"
require "org/allbinary/graphics/font/MyFontProcessor"
require "org/allbinary/graphics/font/UpdateMyFontProcessor"
require "org/allbinary/logic/NullUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas"

