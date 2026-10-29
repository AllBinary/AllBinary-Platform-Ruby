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

#J2MEForJ2ME
class OwnershipPaintable < Paintable
    include UpdateMyFontInterface
    attr_accessor :logUtil, :displayInfo, :myFontProcessor, :COPYRIGHT, :basicColor, :color, :anchor, :COPYRIGHT_Y, :beginWidth

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @displayInfo = DisplayInfoSingleton.getInstance()
        @myFontProcessor = UpdateMyFontProcessor.new(self)
        @COPYRIGHT = "AllBinary Copyright (c) 2011"
        @basicColor = BasicColorFactory.getInstance().WHITE
        @color = @basicColor.to_i
        @anchor = Anchor::TOP_LEFT
        @COPYRIGHT_Y = 0
        @beginWidth = 0
    end
    

    def self.getInstance()
        return OwnershipPaintable.new()
    end
    

    def initialize()
        super()
        initialize_fields
    end
    

    def updateMeasurement(graphics)
        font = graphics.getFont()
        @COPYRIGHT_Y = 2 * font.getHeight()
        @beginWidth = (font.stringWidth(@COPYRIGHT) >> 1)
        @myFontProcessor = MyFontProcessor.getInstance()
    end
    

    def setBasicColorP(basicColor)
        @basicColor = basicColor
        @color = basicColor.to_i
    end
    

    def getBasicColorP()
        return @basicColor
    end
    

    def paint(graphics)
        @myFontProcessor.process(graphics)
        graphics.setColor(@color)
        halfWidth = @displayInfo.getLastHalfWidth()
        height = @displayInfo.getLastHeight()
        graphics.drawString(@COPYRIGHT, halfWidth - @beginWidth, height - @COPYRIGHT_Y, @anchor)
    end
end

require "org/allbinary/graphics/Anchor"
require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/graphics/color/BasicColorFactory"
require "org/allbinary/graphics/displayable/DisplayInfoSingleton"
require "org/allbinary/graphics/font/MyFontProcessor"
require "org/allbinary/graphics/font/UpdateMyFontProcessor"
require "org/allbinary/logic/communication/log/LogUtil"

