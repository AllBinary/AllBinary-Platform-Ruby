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

class PressStartMenuPaintable < Paintable
    include UpdateMyFontInterface
    attr_accessor :displayInfo, :PRESS_START, :KEY_START, :MENU_START, :myFontProcessor, :startString, :timeDelayHelper, :flash, :anchor, :beginWidth, :line

    def initialize_fields
        @displayInfo = DisplayInfoSingleton.getInstance()
        @PRESS_START = "Press Screen To Start"
        @KEY_START = "Press or Click F2 To Begin"
        @MENU_START = "Press Start From The Menu To Begin"
        @myFontProcessor = UpdateMyFontProcessor.new(self)
        @startString = StringUtil.getInstance().EMPTY_STRING
        @timeDelayHelper = TimeDelayHelper.new(1100)
        @flash = false
        @anchor = Anchor::TOP_LEFT
        @beginWidth = 0
        @line = 0
    end
    

    def initialize()
        super()
        initialize_fields
        if TouchScreenFactory.getInstance().isTouch()
            @startString = @PRESS_START
        elsif AppletUtil.isAppletLoader(self)
            @startString = @KEY_START
        else
            @startString = @MENU_START
        end
    end
    

    def updateMeasurement(graphics)
        font = graphics.getFont()
        @beginWidth = (graphics.getFont().stringWidth(@startString) >> 1)
        @line = (4 * MyFontProcessor.defaultCharWidth(font)) + (font.getHeight() >> 1)
        @myFontProcessor = MyFontProcessor.getInstance()
    end
    

    def paint(graphics)
        if @timeDelayHelper.isTimeTNT()
            if self.isFlash()
                self.setFlash(false)
            else
                self.setFlash(true)
            end
        end
        if self.isFlash()
            @myFontProcessor.process(graphics)
            graphics.drawString(@startString, @displayInfo.getLastHalfWidth() - @beginWidth, @displayInfo.getLastHeight() - @line, @anchor)
        end
    end
    

    def setFlash(flash)
        @flash = flash
    end
    

    def isFlash()
        return @flash
    end
end

require "org/allbinary/AppletUtil"
require "org/allbinary/graphics/Anchor"
require "org/allbinary/graphics/displayable/DisplayInfoSingleton"
require "org/allbinary/graphics/font/MyFontProcessor"
require "org/allbinary/graphics/font/UpdateMyFontProcessor"
require "org/allbinary/input/motion/button/TouchScreenFactory"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/time/TimeDelayHelper"

