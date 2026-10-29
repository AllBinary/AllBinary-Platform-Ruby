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
# package org.allbinary.graphics.draw

# require "javax/microedition/lcdui/Font"
# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/graphics/font/UpdateMyFontInterface"

class CanvasDrawLineString
    include UpdateMyFontInterface
    attr_accessor :drawStringUtil, :myFontProcessor, :x, :y, :fontHeight

    def initialize_fields
        @drawStringUtil = DrawStringUtil.getInstance()
        @myFontProcessor = UpdateMyFontProcessor.new(self)
        @x = nil
        @y = nil
        @fontHeight = 0
    end
    

    def initialize(x, y)
        initialize_fields
        @x = x
        @y = y
    end
    

    def updateMeasurement(graphics)
        font = graphics.getFont()
        @fontHeight = font.getHeight()
        @myFontProcessor = MyFontProcessor.getInstance()
    end
    

    def paint(graphics, string, line)
        @myFontProcessor.process(graphics)
        @drawStringUtil.drawCenterString(graphics, string, 0, string.length, @x, @y + (line * @fontHeight))
    end
end

require "org/allbinary/graphics/font/MyFontProcessor"
require "org/allbinary/graphics/font/UpdateMyFontProcessor"
require "org/allbinary/graphics/draw/DrawStringUtil"

class CanvasDrawLineString
    NULL_CANVAS_DRAW_LINE_STRING = CanvasDrawLineString.new(0, 0)
end

