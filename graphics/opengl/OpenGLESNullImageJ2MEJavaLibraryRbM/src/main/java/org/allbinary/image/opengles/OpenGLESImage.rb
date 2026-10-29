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

# require "javax/microedition/khronos/opengles/GL"
# require "javax/microedition/khronos/opengles/GL10"
# require "javax/microedition/lcdui/Image"
# require "javax/microedition/lcdui/NullImage"
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
        return defined?(@@texture2dList) ? @@texture2dList : nil
    end

    def self.texture2dList=(value)
        @@texture2dList = value
    end
end

require "org/allbinary/platform/graphics/PlatformBitmapBase"
require "org/allbinary/platform/graphics/PlatformBitmapBaseFactory"
require "org/allbinary/platform/opengles/PlatformTextureBaseFactory"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/image/opengles/OpenGLESImageProperties"

class OpenGLESImage
    NULL_OPENGL_IMAGE = OpenGLESImage.new(NullImage::NULL_IMAGE, PlatformBitmapBaseFactory::NULL_PLATFORM_BITMAP_BASE_FACTORY, PlatformTextureBaseFactory::NULL_PLATFORM_TEXTURE_BASE_FACTORY)
    @@texture2dList = BasicArrayListD.new()
    TYPE = 4
end

