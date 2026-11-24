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
# package org.allbinary.game.paint.help

require "java/lang/JavaOverload"
require "org/allbinary/graphics/font/UpdateMyFontInterface"
require "org/allbinary/graphics/paint/Paintable"

module ::Org; module Allbinary; module Game; module Paint; module Help

class HelpPaintable < ::Org::Allbinary::Graphics::Paint::Paintable
    include ::Org::Allbinary::Graphics::Font::UpdateMyFontInterface
    attr_accessor :displayInfo, :updateMyFontProcessor, :myFontProcessor, :anchor, :title, :inputInfo, :basicColor, :titleBeginWidth, :beginWidthArray, :charHeight

    def jfields_org_allbinary_game_paint_help_HelpPaintable
        @displayInfo = ::Org::Allbinary::Graphics::Displayable::DisplayInfoSingleton.getInstance()
        @updateMyFontProcessor = ::Org::Allbinary::Graphics::Font::UpdateMyFontProcessor.new(self)
        @myFontProcessor = @updateMyFontProcessor
        @anchor = ::Org::Allbinary::Graphics::Anchor::TOP_LEFT
        @title = nil unless instance_variable_defined?(:@title)
        @inputInfo = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().getArrayInstance()
        @basicColor = nil unless instance_variable_defined?(:@basicColor)
        @titleBeginWidth = 0 unless instance_variable_defined?(:@titleBeginWidth)
        @beginWidthArray = ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_INT_ARRAY
        @charHeight = 0 unless instance_variable_defined?(:@charHeight)
    end
    

    def initialize(title, backgroundBasicColor, basicColor)
        super()
        jfields_org_allbinary_game_paint_help_HelpPaintable
        @title = title
        @basicColor = basicColor
    end
    

    def updateMeasurement(graphics)
        font = graphics.getFont()
        @titleBeginWidth = (font.stringWidth(@title) >> 1)
        @charHeight = font.getHeight()
        size = @inputInfo.length
        (0...size).each do |index|
            @beginWidthArray[index] = (font.stringWidth(@inputInfo[index]) >> 1)
        end
        @myFontProcessor = ::Org::Allbinary::Graphics::Font::MyFontProcessor.getInstance()
    end
    java_overload :updateMeasurement, 1
    

    def setInputInfoP(inputInfo)
        @inputInfo = inputInfo
        @beginWidthArray = (Array.new(@inputInfo.length, 0)).tap { |java_array| java_array.instance_variable_set(:@java_component, :I) }
        @myFontProcessor = @updateMyFontProcessor
    end
    java_overload :setInputInfoP, 1
    

    def paint(graphics)
        @myFontProcessor.process(graphics)
        halfWidth = @displayInfo.getLastHalfWidth()
        graphics.setColor(@basicColor.to_i)
        graphics.drawString(@title, halfWidth - @titleBeginWidth, @charHeight, @anchor)
        size = @inputInfo.length
        (0...size).each do |index|
            graphics.drawString(@inputInfo[index], halfWidth - @beginWidthArray[index], (index + 3) * @charHeight, @anchor)
        end
    end
    java_overload :paint, 1
end

module ::Javax; module Microedition; module Lcdui; autoload :Font, "javax/microedition/lcdui/Font" unless const_defined?(:Font, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :Anchor, "org/allbinary/graphics/Anchor" unless const_defined?(:Anchor, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; autoload :DisplayInfoSingleton, "org/allbinary/graphics/displayable/DisplayInfoSingleton" unless const_defined?(:DisplayInfoSingleton, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Font; autoload :MyFontProcessor, "org/allbinary/graphics/font/MyFontProcessor" unless const_defined?(:MyFontProcessor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Font; autoload :UpdateMyFontProcessor, "org/allbinary/graphics/font/UpdateMyFontProcessor" unless const_defined?(:UpdateMyFontProcessor, false); end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end

end; end; end; end; end

