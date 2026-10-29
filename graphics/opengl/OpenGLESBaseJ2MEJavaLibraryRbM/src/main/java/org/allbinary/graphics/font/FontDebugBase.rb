# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.graphics.font

# require "javax/microedition/lcdui/Font"

#OpenGLESBaseJ2MEJavaLibrary
class FontDebugBase
    attr_accessor :SET_FONT

    def initialize_fields
        @SET_FONT = "setFont"
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return FontDebugBase.instanceBase
    end
    

    def debugMetrics(currentFont, convertedTextSize, displayMetrics, stringBuffer)
    end
    

    def debugDpi(densityDpi, stringBuffer)
    end
    

    def debugDimension(currentFont, convertedTextSize, longestDimensionTotalPixels, stringBuffer)
    end

    def self.instanceBase()
        return defined?(@@instanceBase) ? @@instanceBase : nil
    end

    def self.instanceBase=(value)
        @@instanceBase = value
    end
end

require "org/allbinary/logic/string/StringMaker"

class FontDebugBase
    @@instanceBase = FontDebugBase.new()
end

