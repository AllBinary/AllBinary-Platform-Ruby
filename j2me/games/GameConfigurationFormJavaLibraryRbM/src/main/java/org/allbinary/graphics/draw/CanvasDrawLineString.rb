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
# package org.allbinary.graphics.draw

require "java/lang/JavaOverload"
require "org/allbinary/graphics/font/UpdateMyFontInterface"

module ::Org; module Allbinary; module Graphics; module Draw

class CanvasDrawLineString
    include ::Org::Allbinary::Graphics::Font::UpdateMyFontInterface
    attr_accessor :drawStringUtil, :myFontProcessor, :x, :y, :fontHeight

    def jfields_org_allbinary_graphics_draw_CanvasDrawLineString
        @drawStringUtil = DrawStringUtil.getInstance()
        @myFontProcessor = ::Org::Allbinary::Graphics::Font::UpdateMyFontProcessor.new(self)
        @x = nil unless instance_variable_defined?(:@x)
        @y = nil unless instance_variable_defined?(:@y)
        @fontHeight = 0
    end
    

    def initialize(x, y)
        jfields_org_allbinary_graphics_draw_CanvasDrawLineString
        @x = x
        @y = y
    end
    

    def updateMeasurement(graphics)
        font = graphics.getFont()
        @fontHeight = font.getHeight()
        @myFontProcessor = ::Org::Allbinary::Graphics::Font::MyFontProcessor.getInstance()
    end
    java_overload :updateMeasurement, 1
    

    def paint(graphics, string, line)
        @myFontProcessor.process(graphics)
        @drawStringUtil.drawCenterString(graphics, string, 0, string.length, @x, @y + (line * @fontHeight))
    end
    java_overload :paint, 3

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_CANVAS_DRAW_LINE_STRING, CanvasDrawLineString.new(0, 0))
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "CanvasDrawLineString"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_CANVAS_DRAW_LINE_STRING].include?(name)
        end
        super
    end
end

module ::Javax; module Microedition; module Lcdui; autoload :Font, "javax/microedition/lcdui/Font" unless const_defined?(:Font, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Font; autoload :MyFontProcessor, "org/allbinary/graphics/font/MyFontProcessor" unless const_defined?(:MyFontProcessor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Font; autoload :UpdateMyFontProcessor, "org/allbinary/graphics/font/UpdateMyFontProcessor" unless const_defined?(:UpdateMyFontProcessor, false); end; end; end; end
autoload :DrawStringUtil, "org/allbinary/graphics/draw/DrawStringUtil" unless const_defined?(:DrawStringUtil, false)

begin
    CanvasDrawLineString.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

