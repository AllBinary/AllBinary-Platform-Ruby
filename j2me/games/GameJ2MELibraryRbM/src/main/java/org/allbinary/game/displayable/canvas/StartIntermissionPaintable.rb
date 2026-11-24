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

class StartIntermissionPaintable < ::Org::Allbinary::Graphics::Paint::InitUpdatePaintable
    include ::Org::Allbinary::Graphics::Font::UpdateMyFontInterface
    attr_accessor :fontDebugFactory, :basicSetColorUtil, :gameCanvas, :stringArray, :fontSize, :font, :lastWidth, :updateMyFontProcessor, :myFontProcessor, :basicColor, :color, :lineYOffsetArray, :hasChanged, :anchor, :fontHeightP, :BEGIN_LEVEL, :EMPTY_STRING

    def jfields_org_allbinary_game_displayable_canvas_StartIntermissionPaintable
        @fontDebugFactory = ::Org::Allbinary::Graphics::Font::FontDebugFactory.getInstance()
        @basicSetColorUtil = ::Org::Allbinary::Graphics::Color::BasicColorSetUtil.getInstance()
        @gameCanvas = nil unless instance_variable_defined?(:@gameCanvas)
        @stringArray = nil unless instance_variable_defined?(:@stringArray)
        @fontSize = nil unless instance_variable_defined?(:@fontSize)
        @font = nil unless instance_variable_defined?(:@font)
        @lastWidth = nil unless instance_variable_defined?(:@lastWidth)
        @updateMyFontProcessor = ::Org::Allbinary::Graphics::Font::UpdateMyFontProcessor.new(self)
        @myFontProcessor = @updateMyFontProcessor
        @basicColor = ::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance().BLACK
        @color = nil unless instance_variable_defined?(:@color)
        @lineYOffsetArray = ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_INT_ARRAY
        @hasChanged = true
        @anchor = ::Org::Allbinary::Graphics::Anchor::TOP_LEFT
        @fontHeightP = 0 unless instance_variable_defined?(:@fontHeightP)
        @BEGIN_LEVEL = "Begin Level "
        @EMPTY_STRING = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
    end
    

    def initialize(gameCanvas, stringArray, basicColor, font)
        super()
        jfields_org_allbinary_game_displayable_canvas_StartIntermissionPaintable
        @gameCanvas = gameCanvas
        @stringArray = stringArray
        @lastWidth = (Array.new(@stringArray.length, 0)).tap { |java_array| java_array.instance_variable_set(:@java_component, :I) }
        self.setBasicColorP(basicColor)
        @color = basicColor.to_i
        @fontSize = font.getSize()
        @font = font
    end
    

    def updateMeasurement(graphics)
        font = graphics.getFont()
        @fontHeightP = font.getHeight()
        @myFontProcessor = ::Org::Allbinary::Graphics::Font::MyFontProcessor.getInstance()
    end
    java_overload :updateMeasurement, 1
    

    def paint(graphics)
        @myFontProcessor.process(graphics)
        existingFont = graphics.getFont()
        @fontDebugFactory.setFont(@font, graphics)
        displayInfo = ::Org::Allbinary::Graphics::Displayable::DisplayInfoSingleton.getInstance()
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
    java_overload :paint, 1
    

    def update()
        level = @gameCanvas.getLayerManager().getGameInfo().getCurrentLevel()
        @stringArray[0] = ::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(@BEGIN_LEVEL).appendint(level).to_s
        (@stringArray.length - 1).step(1, -(1)) do |index|
            @stringArray[index] = @EMPTY_STRING
        end
    end
    java_overload :update, 0
    

    def setBasicColorP(basicColor)
        @basicColor = basicColor
    end
    java_overload :setBasicColorP, 1
    

    def getBasicColorP()
        return @basicColor
    end
    java_overload :getBasicColorP, 0
end

module ::Javax; module Microedition; module Lcdui; autoload :Font, "javax/microedition/lcdui/Font" unless const_defined?(:Font, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :Anchor, "org/allbinary/graphics/Anchor" unless const_defined?(:Anchor, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory" unless const_defined?(:BasicColorFactory, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorSetUtil, "org/allbinary/graphics/color/BasicColorSetUtil" unless const_defined?(:BasicColorSetUtil, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; autoload :DisplayInfoSingleton, "org/allbinary/graphics/displayable/DisplayInfoSingleton" unless const_defined?(:DisplayInfoSingleton, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Font; autoload :FontDebugFactory, "org/allbinary/graphics/font/FontDebugFactory" unless const_defined?(:FontDebugFactory, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Font; autoload :MyFontProcessor, "org/allbinary/graphics/font/MyFontProcessor" unless const_defined?(:MyFontProcessor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Font; autoload :UpdateMyFontProcessor, "org/allbinary/graphics/font/UpdateMyFontProcessor" unless const_defined?(:UpdateMyFontProcessor, false); end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
autoload :AllBinaryGameCanvas, "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas" unless const_defined?(:AllBinaryGameCanvas, false)

end; end; end; end; end

