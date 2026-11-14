# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.graphics.font


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
        FontDebugBase.java_static_fields unless @java_static_fields_started
        return defined?(@@instanceBase) ? @@instanceBase : nil
    end

    def self.instanceBase=(value)
        FontDebugBase.java_static_fields unless @java_static_fields_started
        @@instanceBase = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instanceBase = FontDebugBase.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "FontDebugBase"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :Font, "javax/microedition/lcdui/Font"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"

begin
    FontDebugBase.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

