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

# require "javax/microedition/khronos/opengles/GL10"
# require "javax/microedition/lcdui/Image"
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
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/image/opengles/OpenGLESImage"

class TrueTypeFontUtil
    @@instance = TrueTypeFontUtil.new()
end

