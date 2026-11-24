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

require "java/lang/JavaOverload"
require "org/allbinary/graphics/font/UpdateMyFontInterface"
require "org/allbinary/graphics/paint/Paintable"

module ::Org; module Allbinary; module Game; module Paint

class PressStartMenuPaintable < ::Org::Allbinary::Graphics::Paint::Paintable
    include ::Org::Allbinary::Graphics::Font::UpdateMyFontInterface
    attr_accessor :displayInfo, :PRESS_START, :KEY_START, :MENU_START, :myFontProcessor, :startString, :timeDelayHelper, :flash, :anchor, :beginWidth, :line

    def jfields_org_allbinary_game_paint_PressStartMenuPaintable
        @displayInfo = ::Org::Allbinary::Graphics::Displayable::DisplayInfoSingleton.getInstance()
        @PRESS_START = "Press Screen To Start"
        @KEY_START = "Press or Click F2 To Begin"
        @MENU_START = "Press Start From The Menu To Begin"
        @myFontProcessor = ::Org::Allbinary::Graphics::Font::UpdateMyFontProcessor.new(self)
        @startString = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
        @timeDelayHelper = ::Org::Allbinary::TimePackage::TimeDelayHelper.new(1100)
        @flash = false unless instance_variable_defined?(:@flash)
        @anchor = ::Org::Allbinary::Graphics::Anchor::TOP_LEFT
        @beginWidth = 0 unless instance_variable_defined?(:@beginWidth)
        @line = 0 unless instance_variable_defined?(:@line)
    end
    

    def initialize()
        super()
        jfields_org_allbinary_game_paint_PressStartMenuPaintable
        if ::Org::Allbinary::Input::Motion::Button::TouchScreenFactory.getInstance().isTouch()
            @startString = @PRESS_START
        elsif ::Org::Allbinary::AppletUtil.isAppletLoader(self)
            @startString = @KEY_START
        else
            @startString = @MENU_START
        end
    end
    

    def updateMeasurement(graphics)
        font = graphics.getFont()
        @beginWidth = (graphics.getFont().stringWidth(@startString) >> 1)
        @line = (4 * ::Org::Allbinary::Graphics::Font::MyFontProcessor.defaultCharWidth(font)) + (font.getHeight() >> 1)
        @myFontProcessor = ::Org::Allbinary::Graphics::Font::MyFontProcessor.getInstance()
    end
    java_overload :updateMeasurement, 1
    

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
    java_overload :paint, 1
    

    def setFlash(flash)
        @flash = flash
    end
    java_overload :setFlash, 1
    

    def isFlash()
        return @flash
    end
    java_overload :isFlash, 0
end

module ::Javax; module Microedition; module Lcdui; autoload :Font, "javax/microedition/lcdui/Font" unless const_defined?(:Font, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; autoload :AppletUtil, "org/allbinary/AppletUtil" unless const_defined?(:AppletUtil, false); end; end
module ::Org; module Allbinary; module Graphics; autoload :Anchor, "org/allbinary/graphics/Anchor" unless const_defined?(:Anchor, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; autoload :DisplayInfoSingleton, "org/allbinary/graphics/displayable/DisplayInfoSingleton" unless const_defined?(:DisplayInfoSingleton, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Font; autoload :MyFontProcessor, "org/allbinary/graphics/font/MyFontProcessor" unless const_defined?(:MyFontProcessor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Font; autoload :UpdateMyFontProcessor, "org/allbinary/graphics/font/UpdateMyFontProcessor" unless const_defined?(:UpdateMyFontProcessor, false); end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Button; autoload :TouchScreenFactory, "org/allbinary/input/motion/button/TouchScreenFactory" unless const_defined?(:TouchScreenFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module TimePackage; autoload :TimeDelayHelper, "org/allbinary/time/TimeDelayHelper" unless const_defined?(:TimeDelayHelper, false); end; end; end

end; end; end; end

