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
# package org.allbinary.game.paint

# require "javax/microedition/lcdui/Font"
# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/graphics/font/UpdateMyFontInterface"
require "org/allbinary/graphics/paint/Paintable"

#SwtToJ2ME
class FullScreenPaintable < Paintable
    include UpdateMyFontInterface
    attr_accessor :displayInfo, :myFontProcessor, :FULLSCREEN_TEXT, :anchor, :Y, :beginWidth

    def initialize_fields
        @displayInfo = DisplayInfoSingleton.getInstance()
        @myFontProcessor = UpdateMyFontProcessor.new(self)
        @FULLSCREEN_TEXT = "F11 - Toggle Fullscreen"
        @anchor = Anchor::TOP_LEFT
        @Y = 0
        @beginWidth = 0
    end
    

    def self.getInstance()
        return FullScreenPaintable.new()
    end
    

    def initialize()
        super()
        initialize_fields
    end
    

    def updateMeasurement(graphics)
        font = graphics.getFont()
        @Y = 4 * font.getHeight()
        @beginWidth = (font.stringWidth(@FULLSCREEN_TEXT) >> 1)
        @myFontProcessor = MyFontProcessor.getInstance()
    end
    

    def paint(graphics)
        @myFontProcessor.process(graphics)
        halfWidth = @displayInfo.getLastHalfWidth()
        height = @displayInfo.getLastHeight()
        graphics.drawString(@FULLSCREEN_TEXT, halfWidth - @beginWidth, height - @Y, @anchor)
    end
end

require "org/allbinary/graphics/Anchor"
require "org/allbinary/graphics/displayable/DisplayInfoSingleton"
require "org/allbinary/graphics/font/MyFontProcessor"
require "org/allbinary/graphics/font/UpdateMyFontProcessor"

