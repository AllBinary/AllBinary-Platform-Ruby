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

require "org/allbinary/graphics/font/UpdateMyFontInterface"

class CanvasDrawLineString
    include UpdateMyFontInterface
    attr_accessor :drawStringUtil, :myFontProcessor, :x, :y, :fontHeight

    def initialize_fields
        @drawStringUtil = DrawStringUtil.getInstance()
        @myFontProcessor = UpdateMyFontProcessor.new(self)
        @x = nil
        @y = nil
        @fontHeight = 0
    end
    

    def initialize(x, y)
        initialize_fields
        @x = x
        @y = y
    end
    

    def updateMeasurement(graphics)
        font = graphics.getFont()
        @fontHeight = font.getHeight()
        @myFontProcessor = MyFontProcessor.getInstance()
    end
    

    def paint(graphics, string, line)
        @myFontProcessor.process(graphics)
        @drawStringUtil.drawCenterString(graphics, string, 0, string.length, @x, @y + (line * @fontHeight))
    end

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

autoload :Font, "javax/microedition/lcdui/Font"
autoload :Graphics, "javax/microedition/lcdui/Graphics"
autoload :MyFontProcessor, "org/allbinary/graphics/font/MyFontProcessor"
autoload :UpdateMyFontProcessor, "org/allbinary/graphics/font/UpdateMyFontProcessor"
autoload :DrawStringUtil, "org/allbinary/graphics/draw/DrawStringUtil"

begin
    CanvasDrawLineString.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

