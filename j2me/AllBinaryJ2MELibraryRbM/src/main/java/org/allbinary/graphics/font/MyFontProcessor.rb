# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.allbinary.graphics.font

# require "javax/microedition/lcdui/Font"
# require "javax/microedition/lcdui/Graphics"

class MyFontProcessor
    

    def self.defaultCharWidth(font)
        return font.charWidth("C")
    end
    

    def self.defaultStringWidth(font, size)
        return MyFontProcessor.defaultCharWidth(font) * size
    end
    

    def self.getInstance()
        return MyFontProcessor.instance
    end
    

    def process(graphics)
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

class MyFontProcessor
    @@instance = MyFontProcessor.new()
end

