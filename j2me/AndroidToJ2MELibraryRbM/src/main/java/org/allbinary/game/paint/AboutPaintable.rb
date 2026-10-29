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

#AndroidToJ2ME
class AboutPaintable < Paintable
    include UpdateMyFontInterface
    attr_accessor :displayInfoSingleton, :ABOUT, :info, :developers, :paintableArray, :myFontProcessor, :charHeight, :aboutBeginWidth, :infoBeginWidth, :developersBeginWidth, :anchor

    def initialize_fields
        @displayInfoSingleton = DisplayInfoSingleton.getInstance()
        @ABOUT = CanvasStrings.getInstance().ABOUT
        @info = nil
        @developers = nil
        @paintableArray = [self]
        @myFontProcessor = UpdateMyFontProcessor.new(self)
        @charHeight = 0
        @aboutBeginWidth = 0
        @infoBeginWidth = nil
        @developersBeginWidth = nil
        @anchor = Anchor::TOP_LEFT
    end
    

    def self.getInstance(info, developers)
        return AboutPaintable.new(info, developers)
    end
    

    def initialize(info, developers)
        super()
        initialize_fields
        @info = info
        @infoBeginWidth = Array.new(@info.length, 0)
        @developers = developers
        @developersBeginWidth = Array.new(@developers.length, 0)
    end
    

    def updateMeasurement(graphics)
        font = graphics.getFont()
        @charHeight = font.getHeight()
        @aboutBeginWidth = (font.stringWidth(@ABOUT) >> 1)
        infoSize = @info.length
        (0...infoSize).each do |index|
            @infoBeginWidth[index] = (font.stringWidth(@info[index]) >> 1)
        end
        size = @developers.length
        (0...size).each do |index|
            @developersBeginWidth[index] = (font.stringWidth(@developers[index]) >> 1)
        end
        @myFontProcessor = MyFontProcessor.getInstance()
    end
    

    def getPaintableArrayInstance()
        return @paintableArray
    end
    

    def paint(graphics)
        @myFontProcessor.process(graphics)
        halfWidth = @displayInfoSingleton.getLastHalfWidth()
        graphics.drawString(@ABOUT, halfWidth - @aboutBeginWidth, 2 * @charHeight, @anchor)
        infoSize = @info.length
        (0...infoSize).each do |index|
            graphics.drawString(@info[index], halfWidth - @infoBeginWidth[index], (4 + index) * @charHeight, @anchor)
        end
        size = @developers.length
        (0...size).each do |index|
            graphics.drawString(@developers[index], halfWidth - @developersBeginWidth[index], (5 + infoSize + index) * @charHeight, @anchor)
        end
    end
end

require "org/allbinary/graphics/Anchor"
require "org/allbinary/graphics/displayable/CanvasStrings"
require "org/allbinary/graphics/displayable/DisplayInfoSingleton"
require "org/allbinary/graphics/font/MyFontProcessor"
require "org/allbinary/graphics/font/UpdateMyFontProcessor"

