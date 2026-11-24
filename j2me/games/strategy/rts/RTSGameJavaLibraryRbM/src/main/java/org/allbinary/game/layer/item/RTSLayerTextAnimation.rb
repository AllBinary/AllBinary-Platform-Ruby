# 
# AllBinary Open License Version 1 
# Copyright (c) 2003 AllBinary 
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
# package org.allbinary.game.layer.item

require "java/lang/JavaOverload"
require "org/allbinary/animation/Animation"
require "org/allbinary/graphics/font/UpdateMyFontInterface"

module ::Org; module Allbinary; module Game; module Layer; module Item

class RTSLayerTextAnimation < ::Org::Allbinary::Animation::Animation
    include ::Org::Allbinary::Graphics::Font::UpdateMyFontInterface
    attr_accessor :image, :text, :myFontProcessor, :fontHeight

    def jfields_org_allbinary_game_layer_item_RTSLayerTextAnimation
        @image = nil unless instance_variable_defined?(:@image)
        @text = nil unless instance_variable_defined?(:@text)
        @myFontProcessor = ::Org::Allbinary::Graphics::Font::UpdateMyFontProcessor.new(self)
        @fontHeight = 0
    end
    

    def initialize(text, image)
        super()
        jfields_org_allbinary_game_layer_item_RTSLayerTextAnimation
        @text = text
        @image = image
    end
    

    def updateMeasurement(graphics)
        font = graphics.getFont()
        @fontHeight = font.getHeight()
        @myFontProcessor = ::Org::Allbinary::Graphics::Font::MyFontProcessor.getInstance()
    end
    java_overload :updateMeasurement, 1
    

    def paintXY(graphics, x, y)
        @myFontProcessor.process(graphics)
        RTSLayerTextAnimation.superclass.java_super_method(:paintXY, 3).bind(self).call(graphics, x, y)
        adjustedCostY = @image.getHeight() - @fontHeight
        graphics.drawString(@text, x, y + adjustedCostY, 0)
    end
    java_overload :paintXY, 3
end

module ::Javax; module Microedition; module Lcdui; autoload :Font, "javax/microedition/lcdui/Font" unless const_defined?(:Font, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Font; autoload :MyFontProcessor, "org/allbinary/graphics/font/MyFontProcessor" unless const_defined?(:MyFontProcessor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Font; autoload :UpdateMyFontProcessor, "org/allbinary/graphics/font/UpdateMyFontProcessor" unless const_defined?(:UpdateMyFontProcessor, false); end; end; end; end

end; end; end; end; end

