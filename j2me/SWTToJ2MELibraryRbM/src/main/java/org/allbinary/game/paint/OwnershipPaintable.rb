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

#SWTToJ2ME
class OwnershipPaintable < ::Org::Allbinary::Graphics::Paint::Paintable
    include ::Org::Allbinary::Graphics::Font::UpdateMyFontInterface
    attr_accessor :logUtil, :displayInfo, :myFontProcessor, :COPYRIGHT, :basicColor, :color, :anchor, :COPYRIGHT_Y, :beginWidth

    def jfields_org_allbinary_game_paint_OwnershipPaintable
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @displayInfo = ::Org::Allbinary::Graphics::Displayable::DisplayInfoSingleton.getInstance()
        @myFontProcessor = ::Org::Allbinary::Graphics::Font::UpdateMyFontProcessor.new(self)
        @COPYRIGHT = "AllBinary Copyright (c) 2011"
        @basicColor = ::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance().WHITE
        @color = @basicColor.to_i
        @anchor = ::Org::Allbinary::Graphics::Anchor::TOP_LEFT
        @COPYRIGHT_Y = 0 unless instance_variable_defined?(:@COPYRIGHT_Y)
        @beginWidth = 0 unless instance_variable_defined?(:@beginWidth)
    end
    

    def self.getInstance()
        return OwnershipPaintable.new()
    end
    

    def initialize()
        super()
        jfields_org_allbinary_game_paint_OwnershipPaintable
    end
    

    def updateMeasurement(graphics)
        font = graphics.getFont()
        @COPYRIGHT_Y = 2 * font.getHeight()
        @beginWidth = (font.stringWidth(@COPYRIGHT) >> 1)
        @myFontProcessor = ::Org::Allbinary::Graphics::Font::MyFontProcessor.getInstance()
    end
    java_overload :updateMeasurement, 1
    

    def setBasicColorP(basicColor)
        @basicColor = basicColor
        @color = basicColor.to_i
    end
    java_overload :setBasicColorP, 1
    

    def getBasicColorP()
        return @basicColor
    end
    java_overload :getBasicColorP, 0
    

    def paint(graphics)
        @myFontProcessor.process(graphics)
        graphics.setColor(@color)
        halfWidth = @displayInfo.getLastHalfWidth()
        height = @displayInfo.getLastHeight()
        graphics.drawString(@COPYRIGHT, halfWidth - @beginWidth, height - @COPYRIGHT_Y, @anchor)
    end
    java_overload :paint, 1
end

module ::Javax; module Microedition; module Lcdui; autoload :Font, "javax/microedition/lcdui/Font" unless const_defined?(:Font, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :Anchor, "org/allbinary/graphics/Anchor" unless const_defined?(:Anchor, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory" unless const_defined?(:BasicColorFactory, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; autoload :DisplayInfoSingleton, "org/allbinary/graphics/displayable/DisplayInfoSingleton" unless const_defined?(:DisplayInfoSingleton, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Font; autoload :MyFontProcessor, "org/allbinary/graphics/font/MyFontProcessor" unless const_defined?(:MyFontProcessor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Font; autoload :UpdateMyFontProcessor, "org/allbinary/graphics/font/UpdateMyFontProcessor" unless const_defined?(:UpdateMyFontProcessor, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end

end; end; end; end

