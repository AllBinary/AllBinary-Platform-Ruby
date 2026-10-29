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

class GamePerformanceInitUpdatePaintable < InitUpdatePaintable
    include UpdateMyFontInterface
    attr_accessor :halfHeight, :yArray, :myFontProcessor, :baseRefreshHelperCharArray, :defaultStringWidth, :RED

    def initialize_fields
        @halfHeight = DisplayInfoSingleton.getInstance().getLastHalfHeight()
        @yArray = [@halfHeight + 30, @halfHeight + 30, @halfHeight + 30 + 15, @halfHeight + 30 + 15, @halfHeight + 30 + 30, @halfHeight + 30 + 30, @halfHeight + 30 + 45, @halfHeight + 30 + 45]
        @myFontProcessor = UpdateMyFontProcessor.new(self)
        @baseRefreshHelperCharArray = Array.new(0) { Array.new(0, "\0") }
        @defaultStringWidth = 0
        @RED = BasicColorFactory.getInstance().RED.to_i
    end

    def initialize
        super()
        initialize_fields
    end
    

    def updateMeasurement(graphics)
        font = graphics.getFont()
        @defaultStringWidth = MyFontProcessor.defaultStringWidth(font, 2)
        @myFontProcessor = MyFontProcessor.getInstance()
    end
    

    def init()
    end
    

    def update()
        @baseRefreshHelperCharArray = GameStatisticsFactory.getInstance().to2DCharArray()
    end
    

    def paint(graphics)
        @myFontProcessor.process(graphics)
        graphics.setColor(@RED)
        charArray = nil
        charArray2 = nil
        size2 = 0
        size3 = 0
        size = @baseRefreshHelperCharArray.length - 2
        (size).step(0, -(2)) do |index|
            charArray = @baseRefreshHelperCharArray[index]
            charArray2 = @baseRefreshHelperCharArray[index + 1]
            size2 = charArray.length
            size3 = charArray2.length
            graphics.drawChars(charArray, 0, size2, 0, @yArray[index], 0)
            graphics.drawChars(charArray2, 0, size3, size2 * @defaultStringWidth, @yArray[index + 1], 0)
        end
    end
end

require "org/allbinary/canvas/GameStatisticsFactory"
require "org/allbinary/graphics/color/BasicColorFactory"
require "org/allbinary/graphics/displayable/DisplayInfoSingleton"
require "org/allbinary/graphics/font/MyFontProcessor"
require "org/allbinary/graphics/font/UpdateMyFontProcessor"

