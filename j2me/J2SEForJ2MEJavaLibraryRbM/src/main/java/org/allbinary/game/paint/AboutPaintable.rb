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

#J2SEForJ2ME
class AboutPaintable < ::Org::Allbinary::Graphics::Paint::Paintable
    include ::Org::Allbinary::Graphics::Font::UpdateMyFontInterface
    attr_accessor :displayInfoSingleton, :ABOUT, :info, :developers, :paintableArray, :myFontProcessor, :charHeight, :aboutBeginWidth, :infoBeginWidth, :developersBeginWidth, :anchor

    def jfields_org_allbinary_game_paint_AboutPaintable
        @displayInfoSingleton = ::Org::Allbinary::Graphics::Displayable::DisplayInfoSingleton.getInstance()
        @ABOUT = ::Org::Allbinary::Graphics::Displayable::CanvasStrings.getInstance().ABOUT
        @info = nil unless instance_variable_defined?(:@info)
        @developers = nil unless instance_variable_defined?(:@developers)
        @paintableArray = [self]
        @myFontProcessor = ::Org::Allbinary::Graphics::Font::UpdateMyFontProcessor.new(self)
        @charHeight = 0 unless instance_variable_defined?(:@charHeight)
        @aboutBeginWidth = 0 unless instance_variable_defined?(:@aboutBeginWidth)
        @infoBeginWidth = nil unless instance_variable_defined?(:@infoBeginWidth)
        @developersBeginWidth = nil unless instance_variable_defined?(:@developersBeginWidth)
        @anchor = ::Org::Allbinary::Graphics::Anchor::TOP_LEFT
    end
    

    def self.getInstance(info, developers)
        return AboutPaintable.new(info, developers)
    end
    

    def initialize(info, developers)
        super()
        jfields_org_allbinary_game_paint_AboutPaintable
        @info = info
        @infoBeginWidth = (Array.new(@info.length, 0)).tap { |java_array| java_array.instance_variable_set(:@java_component, :I) }
        @developers = developers
        @developersBeginWidth = (Array.new(@developers.length, 0)).tap { |java_array| java_array.instance_variable_set(:@java_component, :I) }
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
        @myFontProcessor = ::Org::Allbinary::Graphics::Font::MyFontProcessor.getInstance()
    end
    java_overload :updateMeasurement, 1
    

    def getPaintableArrayInstance()
        return @paintableArray
    end
    java_overload :getPaintableArrayInstance, 0
    

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
    java_overload :paint, 1
end

module ::Javax; module Microedition; module Lcdui; autoload :Font, "javax/microedition/lcdui/Font" unless const_defined?(:Font, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :Anchor, "org/allbinary/graphics/Anchor" unless const_defined?(:Anchor, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; autoload :CanvasStrings, "org/allbinary/graphics/displayable/CanvasStrings" unless const_defined?(:CanvasStrings, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; autoload :DisplayInfoSingleton, "org/allbinary/graphics/displayable/DisplayInfoSingleton" unless const_defined?(:DisplayInfoSingleton, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Font; autoload :MyFontProcessor, "org/allbinary/graphics/font/MyFontProcessor" unless const_defined?(:MyFontProcessor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Font; autoload :UpdateMyFontProcessor, "org/allbinary/graphics/font/UpdateMyFontProcessor" unless const_defined?(:UpdateMyFontProcessor, false); end; end; end; end

end; end; end; end

