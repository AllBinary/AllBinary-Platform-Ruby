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
# package org.allbinary.graphics.color

# require "jsinterop/annotations/JsType"
# require "jsinterop/annotations/JsMethod"
# require "jsinterop/annotations/JsProperty"

class BasicColorFactory
    attr_accessor :NULL_COLOR, :TAN, :SKIN_PINK, :RED, :LIGHT_RED, :DARK_GREEN, :GREEN, :LIGHT_GREEN, :PURPLE, :BLUE, :LIGHT_BLUE, :VERY_LIGHT_BLUE, :PUCE, :AQUA, :YELLOW, :PINK, :BLACK, :GREY, :LIGHT_GREY, :DARK_GREY, :ORANGE, :BROWN, :WHITE, :TRANSPARENT_COLOR, :TRANSPARENT_GREY, :TRANSPARENT_BLACK, :TRANSPARENT_RED, :CLEAR_COLOR, :BORDER_COLOR

    def initialize_fields
        @NULL_COLOR = self.createInstanceARGB(255, 255, 255, 255, "null color")
        @TAN = self.createInstance(0xE9D8B5)
        @SKIN_PINK = self.createInstance(0xFDCECE)
        @RED = self.createInstanceAN(BasicColorUtil.getInstance().ALPHA, 0xFF0000, "red")
        @LIGHT_RED = self.createInstanceAN(BasicColorUtil.getInstance().ALPHA, 0xFFA0A0, "light red")
        @DARK_GREEN = self.createInstance(0x00FF00)
        @GREEN = self.createInstanceAN(BasicColorUtil.getInstance().ALPHA, 0x00DD00, "green")
        @LIGHT_GREEN = self.createInstance(0x007700)
        @PURPLE = self.createInstanceAN(BasicColorUtil.getInstance().ALPHA, 0x400040, "purple")
        @BLUE = self.createInstanceAN(BasicColorUtil.getInstance().ALPHA, 0x0000FF, "blue")
        @LIGHT_BLUE = self.createInstance(0x00aaff)
        @VERY_LIGHT_BLUE = self.createInstance(0x000033)
        @PUCE = self.createInstance(0xFF00AA)
        @AQUA = self.createInstance(0x00FFFF)
        @YELLOW = self.createInstanceAN(BasicColorUtil.getInstance().ALPHA, 0xFFFF00, "yellow")
        @PINK = self.createInstance(0xFF00FF)
        @BLACK = self.createInstanceAN(BasicColorUtil.getInstance().ALPHA, 0x000000, "black")
        @GREY = self.createInstanceAN(BasicColorUtil.getInstance().ALPHA, 0xAAAAAA, "grey")
        @LIGHT_GREY = self.createInstance(0xC0C0C0)
        @DARK_GREY = self.createInstance(0x404040)
        @ORANGE = self.createInstance(0xe07718)
        @BROWN = self.createInstance(0x956B00)
        @WHITE = self.createInstance(0xFFFFFF)
        @TRANSPARENT_COLOR = self.createInstanceAN(0x00000000, 0x000000, StringUtil.getInstance().EMPTY_STRING)
        @TRANSPARENT_GREY = self.createInstanceAN(0x52000000, 0xECECEC, StringUtil.getInstance().EMPTY_STRING)
        @TRANSPARENT_BLACK = self.createInstanceAN(0x52000000, 0x000000, StringUtil.getInstance().EMPTY_STRING)
        @TRANSPARENT_RED = self.createInstanceAN(0x52000000, 0xFF0000, StringUtil.getInstance().EMPTY_STRING)
        @CLEAR_COLOR = @BLACK
        @BORDER_COLOR = @WHITE
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return BasicColorFactory.instance
    end
    

    def createInstance(value)
        return BasicColor.new(BasicColorUtil.getInstance().ALPHA, value, StringUtil.getInstance().EMPTY_STRING)
    end
    

    def createInstanceA(alphaValue, value)
        return BasicColor.new(alphaValue, value, StringUtil.getInstance().EMPTY_STRING)
    end
    

    def createInstanceAN(alphaValue, value, name)
        return BasicColor.new(alphaValue, value, name)
    end
    

    def createInstanceARGB(alphaValue, r, g, b, name)
        _ALPHA_MASK = 0xFF000000
        return BasicColor.new(alphaValue, ((alphaValue << 24) & _ALPHA_MASK) + ((r << 16) & 0x00FF0000) + ((g << 8) & 0x0000FF00) + (b & 0x000000FF), StringUtil.getInstance().EMPTY_STRING)
    end

    def self.instance()
        BasicColorFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        BasicColorFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = BasicColorFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "BasicColorFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :StringUtil, "org/allbinary/logic/string/StringUtil"
autoload :BasicColor, "org/allbinary/graphics/color/BasicColor"
autoload :BasicColorUtil, "org/allbinary/graphics/color/BasicColorUtil"

begin
    BasicColorFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

