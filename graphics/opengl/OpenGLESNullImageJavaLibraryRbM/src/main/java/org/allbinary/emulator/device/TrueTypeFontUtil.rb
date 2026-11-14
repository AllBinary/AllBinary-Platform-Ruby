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
# package org.allbinary.emulator.device

require "org/allbinary/emulator/device/TrueTypeFontUtilBase"

class TrueTypeFontUtil < TrueTypeFontUtilBase
    attr_accessor :fontImage

    def initialize_fields
        @fontImage = OpenGLESImage::NULL_OPENGL_IMAGE
    end
    

    def self.getInstance()
        return TrueTypeFontUtil.instance
    end
    

    def initialize()
        super(1)
        initialize_fields
    end
    

    def getAsTextureSize(textureSize)
        raise RuntimeError.new()
    end
    

    def getCellSize(cellSize)
        raise RuntimeError.new()
    end
    

    def getFontBitmap(filename, fontSize, cellSize, basicColor)
        raise RuntimeError.new()
    end
    

    def saveFontAtlasAsFile()
    end
    

    def getFontBitmapGL(gl, filename, cellSize, basicColor)
        raise RuntimeError.new()
    end
    

    def getFontWidths(filename, fontSize)
        raise RuntimeError.new()
    end

    def self.instance()
        TrueTypeFontUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        TrueTypeFontUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = TrueTypeFontUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "TrueTypeFontUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :GL10, "javax/microedition/khronos/opengles/GL10"
autoload :Image, "javax/microedition/lcdui/Image"
autoload :BasicColor, "org/allbinary/graphics/color/BasicColor"
autoload :OpenGLESImage, "org/allbinary/image/opengles/OpenGLESImage"

begin
    TrueTypeFontUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

