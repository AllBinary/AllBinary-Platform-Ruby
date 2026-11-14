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
# package org.allbinary.image.opengles

require "org/allbinary/image/opengles/OpenGLSurfaceChangedInterface"

#OpenGLESNullImageJ2MEJavaLibrary
class OpenGLESImage
    include OpenGLSurfaceChangedInterface
    attr_accessor :commonStrings, :textureFactory, :openGLBitmap, :openGLESImageProperties

    def initialize_fields
        @commonStrings = CommonStrings.getInstance()
        @textureFactory = nil
        @openGLBitmap = nil
        @openGLESImageProperties = OpenGLESImageProperties.new()
    end
    

    def initialize(image, bitmapFactory, textureFactory)
        initialize_fields
        @openGLBitmap = bitmapFactory.createBitmap(image)
        @textureFactory = textureFactory
    end
    

    # throws Exception
    def set(gl)
        raise StandardError.new(@commonStrings.NOT_IMPLEMENTED)
    end
    

    def initTexture(gl)
        return false
    end
    

    def drawRegion(gl, viewHeight, x_src, y_src, width, height, x, y, z)
    end
    

    def draw(gl, x, y, z)
    end
    

    def getType()
        return OpenGLESImage::TYPE
    end

    def self.texture2dList()
        OpenGLESImage.java_static_fields unless @java_static_fields_started
        return defined?(@@texture2dList) ? @@texture2dList : nil
    end

    def self.texture2dList=(value)
        OpenGLESImage.java_static_fields unless @java_static_fields_started
        @@texture2dList = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:TYPE, 4)
        begin
            const_set(:NULL_OPENGL_IMAGE, OpenGLESImage.new(NullImage::NULL_IMAGE, PlatformBitmapBaseFactory::NULL_PLATFORM_BITMAP_BASE_FACTORY, PlatformTextureBaseFactory::NULL_PLATFORM_TEXTURE_BASE_FACTORY))
            @@texture2dList = BasicArrayListD.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "OpenGLESImage"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_OPENGL_IMAGE, :TYPE].include?(name)
        end
        super
    end
end

autoload :GL, "javax/microedition/khronos/opengles/GL"
autoload :GL10, "javax/microedition/khronos/opengles/GL10"
autoload :Image, "javax/microedition/lcdui/Image"
autoload :NullImage, "javax/microedition/lcdui/NullImage"
autoload :PlatformBitmapBase, "org/allbinary/platform/graphics/PlatformBitmapBase"
autoload :PlatformBitmapBaseFactory, "org/allbinary/platform/graphics/PlatformBitmapBaseFactory"
autoload :PlatformTextureBaseFactory, "org/allbinary/platform/opengles/PlatformTextureBaseFactory"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"
autoload :OpenGLESImageProperties, "org/allbinary/image/opengles/OpenGLESImageProperties"

begin
    OpenGLESImage.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

