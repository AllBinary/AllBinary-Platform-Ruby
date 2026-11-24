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

require "java/lang/JavaOverload"
require "org/allbinary/graphics/font/UpdateMyFontInterface"
require "org/allbinary/graphics/paint/InitUpdatePaintable"

module ::Org; module Allbinary; module Game; module Displayable; module Canvas

class GamePerformanceInitUpdatePaintable < ::Org::Allbinary::Graphics::Paint::InitUpdatePaintable
    include ::Org::Allbinary::Graphics::Font::UpdateMyFontInterface
    attr_accessor :halfHeight, :yArray, :myFontProcessor, :baseRefreshHelperCharArray, :defaultStringWidth, :RED

    def jfields_org_allbinary_game_displayable_canvas_GamePerformanceInitUpdatePaintable
        @halfHeight = ::Org::Allbinary::Graphics::Displayable::DisplayInfoSingleton.getInstance().getLastHalfHeight()
        @yArray = [@halfHeight + 30, @halfHeight + 30, @halfHeight + 30 + 15, @halfHeight + 30 + 15, @halfHeight + 30 + 30, @halfHeight + 30 + 30, @halfHeight + 30 + 45, @halfHeight + 30 + 45]
        @myFontProcessor = ::Org::Allbinary::Graphics::Font::UpdateMyFontProcessor.new(self)
        @baseRefreshHelperCharArray = Array.new(0) { Array.new(0, "\0") }
        @defaultStringWidth = 0 unless instance_variable_defined?(:@defaultStringWidth)
        @RED = ::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance().RED.to_i
    end

    def initialize
        super()
        jfields_org_allbinary_game_displayable_canvas_GamePerformanceInitUpdatePaintable
    end
    

    def updateMeasurement(graphics)
        font = graphics.getFont()
        @defaultStringWidth = ::Org::Allbinary::Graphics::Font::MyFontProcessor.defaultStringWidth(font, 2)
        @myFontProcessor = ::Org::Allbinary::Graphics::Font::MyFontProcessor.getInstance()
    end
    java_overload :updateMeasurement, 1
    

    def init()
    end
    java_overload :init, 0
    

    def update()
        @baseRefreshHelperCharArray = ::Org::Allbinary::Canvas::GameStatisticsFactory.getInstance().to2DCharArray()
    end
    java_overload :update, 0
    

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
    java_overload :paint, 1
end

module ::Javax; module Microedition; module Lcdui; autoload :Font, "javax/microedition/lcdui/Font" unless const_defined?(:Font, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Canvas; autoload :GameStatisticsFactory, "org/allbinary/canvas/GameStatisticsFactory" unless const_defined?(:GameStatisticsFactory, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory" unless const_defined?(:BasicColorFactory, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; autoload :DisplayInfoSingleton, "org/allbinary/graphics/displayable/DisplayInfoSingleton" unless const_defined?(:DisplayInfoSingleton, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Font; autoload :MyFontProcessor, "org/allbinary/graphics/font/MyFontProcessor" unless const_defined?(:MyFontProcessor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Font; autoload :UpdateMyFontProcessor, "org/allbinary/graphics/font/UpdateMyFontProcessor" unless const_defined?(:UpdateMyFontProcessor, false); end; end; end; end

end; end; end; end; end

