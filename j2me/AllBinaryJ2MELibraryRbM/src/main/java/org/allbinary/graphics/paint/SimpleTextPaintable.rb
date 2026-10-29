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
# package org.allbinary.graphics.paint

# require "javax/microedition/lcdui/Font"
# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/graphics/font/UpdateMyFontInterface"
require "org/allbinary/graphics/paint/Paintable"

class SimpleTextPaintable < Paintable
    include UpdateMyFontInterface
    attr_accessor :displayInfoSingleton, :updateMyFontProcessor, :myFontProcessor, :text, :basicColor, :topScoresWidth, :fontHeight, :anchor

    def initialize_fields
        @displayInfoSingleton = DisplayInfoSingleton.getInstance()
        @updateMyFontProcessor = UpdateMyFontProcessor.new(self)
        @myFontProcessor = @updateMyFontProcessor
        @text = nil
        @basicColor = nil
        @topScoresWidth = 0
        @fontHeight = 0
        @anchor = Anchor::TOP_LEFT
    end
    

    def initialize(text, basicColor)
        super()
        initialize_fields
        @text = text
        @basicColor = basicColor
    end
    

    def updateMeasurement(graphics)
        font = graphics.getFont()
        @topScoresWidth = (font.stringWidth(@text) >> 1)
        @fontHeight = font.getHeight()
        @myFontProcessor = MyFontProcessor.getInstance()
    end
    

    def paint(graphics)
        @myFontProcessor.process(graphics)
        width = @displayInfoSingleton.getLast()[@displayInfoSingleton.WIDTH]
        graphics.setColor(self.getBasicColorP().to_i)
        graphics.drawString(@text, (width >> 1) - @topScoresWidth, @fontHeight, @anchor)
    end
    

    def setBasicColorP(basicColor)
        @basicColor = basicColor
    end
    

    def getBasicColorP()
        return @basicColor
    end
    

    def setText(text)
        @text = text
        @myFontProcessor = @updateMyFontProcessor
    end
    

    def getText()
        return @text
    end
end

require "org/allbinary/graphics/Anchor"
require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/graphics/displayable/DisplayInfoSingleton"
require "org/allbinary/graphics/font/MyFontProcessor"
require "org/allbinary/graphics/font/UpdateMyFontProcessor"

