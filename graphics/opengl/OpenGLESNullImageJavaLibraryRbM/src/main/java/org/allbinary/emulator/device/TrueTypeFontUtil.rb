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

require "java/lang/JavaOverload"
require "org/allbinary/emulator/device/TrueTypeFontUtilBase"

module ::Org; module Allbinary; module Emulator; module Device

class TrueTypeFontUtil < TrueTypeFontUtilBase
    attr_accessor :fontImage

    def jfields_org_allbinary_emulator_device_TrueTypeFontUtil
        @fontImage = ::Org::Allbinary::Image::Opengles::OpenGLESImage::NULL_OPENGL_IMAGE
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def initialize()
        super(1)
        jfields_org_allbinary_emulator_device_TrueTypeFontUtil
    end
    

    def getAsTextureSize(textureSize)
        raise RuntimeError.new()
    end
    java_overload :getAsTextureSize, 1
    

    def getCellSize(cellSize)
        raise RuntimeError.new()
    end
    java_overload :getCellSize, 1
    

    def getFontBitmap(filename, fontSize, cellSize, basicColor)
        raise RuntimeError.new()
    end
    java_overload :getFontBitmap, 4
    

    def saveFontAtlasAsFile()
    end
    java_overload :saveFontAtlasAsFile, 0
    

    def getFontBitmapGL(gl, filename, cellSize, basicColor)
        raise RuntimeError.new()
    end
    java_overload :getFontBitmapGL, 4
    

    def getFontWidths(filename, fontSize)
        raise RuntimeError.new()
    end
    java_overload :getFontWidths, 2

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

module ::Javax; module Microedition; module Khronos; module Opengles; autoload :GL10, "javax/microedition/khronos/opengles/GL10" unless const_defined?(:GL10, false); end; end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Image; module Opengles; autoload :OpenGLESImage, "org/allbinary/image/opengles/OpenGLESImage" unless const_defined?(:OpenGLESImage, false); end; end; end; end

begin
    TrueTypeFontUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

