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
# package org.allbinary.graphics.paint

require "java/lang/JavaOverload"
require "org/allbinary/graphics/font/UpdateMyFontInterface"
require "org/allbinary/graphics/paint/Paintable"

module ::Org; module Allbinary; module Graphics; module Paint

class SimpleTextPaintable < Paintable
    include ::Org::Allbinary::Graphics::Font::UpdateMyFontInterface
    attr_accessor :displayInfoSingleton, :updateMyFontProcessor, :myFontProcessor, :text, :basicColor, :topScoresWidth, :fontHeight, :anchor

    def jfields_org_allbinary_graphics_paint_SimpleTextPaintable
        @displayInfoSingleton = ::Org::Allbinary::Graphics::Displayable::DisplayInfoSingleton.getInstance()
        @updateMyFontProcessor = ::Org::Allbinary::Graphics::Font::UpdateMyFontProcessor.new(self)
        @myFontProcessor = @updateMyFontProcessor
        @text = nil unless instance_variable_defined?(:@text)
        @basicColor = nil unless instance_variable_defined?(:@basicColor)
        @topScoresWidth = 0
        @fontHeight = 0
        @anchor = ::Org::Allbinary::Graphics::Anchor::TOP_LEFT
    end
    

    def initialize(text, basicColor)
        super()
        jfields_org_allbinary_graphics_paint_SimpleTextPaintable
        @text = text
        @basicColor = basicColor
    end
    

    def updateMeasurement(graphics)
        font = graphics.getFont()
        @topScoresWidth = (font.stringWidth(@text) >> 1)
        @fontHeight = font.getHeight()
        @myFontProcessor = ::Org::Allbinary::Graphics::Font::MyFontProcessor.getInstance()
    end
    java_overload :updateMeasurement, 1
    

    def paint(graphics)
        @myFontProcessor.process(graphics)
        width = @displayInfoSingleton.getLast()[@displayInfoSingleton.WIDTH]
        graphics.setColor(self.getBasicColorP().to_i)
        graphics.drawString(@text, (width >> 1) - @topScoresWidth, @fontHeight, @anchor)
    end
    java_overload :paint, 1
    

    def setBasicColorP(basicColor)
        @basicColor = basicColor
    end
    java_overload :setBasicColorP, 1
    

    def getBasicColorP()
        return @basicColor
    end
    java_overload :getBasicColorP, 0
    

    def setText(text)
        @text = text
        @myFontProcessor = @updateMyFontProcessor
    end
    java_overload :setText, 1
    

    def getText()
        return @text
    end
    java_overload :getText, 0
end

module ::Javax; module Microedition; module Lcdui; autoload :Font, "javax/microedition/lcdui/Font" unless const_defined?(:Font, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :Anchor, "org/allbinary/graphics/Anchor" unless const_defined?(:Anchor, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; autoload :DisplayInfoSingleton, "org/allbinary/graphics/displayable/DisplayInfoSingleton" unless const_defined?(:DisplayInfoSingleton, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Font; autoload :MyFontProcessor, "org/allbinary/graphics/font/MyFontProcessor" unless const_defined?(:MyFontProcessor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Font; autoload :UpdateMyFontProcessor, "org/allbinary/graphics/font/UpdateMyFontProcessor" unless const_defined?(:UpdateMyFontProcessor, false); end; end; end; end

end; end; end; end

