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
# require "javax/microedition/lcdui/OpenGLESPostLoadPlatformImage"
# require "javax/microedition/lcdui/PostLoadImageProcessor"
require "org/allbinary/image/opengles/OpenGLSurfaceChangedInterface"

#OpenGLESSWTJOGLImageJavaLibrary
class OpenGLESImage < Image
    include OpenGLSurfaceChangedInterface
    attr_accessor :logUtil, :commonStrings, :textureFactory, :openGLBitmap, :imageProcessor, :openGLESImageTranslate, :openGLESImageProperties

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @textureFactory = nil
        @openGLBitmap = nil
        @imageProcessor = OpenGLESImageProcessor.getInstance()
        @openGLESImageTranslate = OpenGLESImageTranslate.getInstance()
        @openGLESImageProperties = OpenGLESImageProperties.new()
    end
    

    def initialize(image, bitmapFactory, textureFactory)
        super(image.getName(), PostLoadImageProcessor::NULL_POST_LOAD_IMAGE_PROCESSOR)
        initialize_fields
        @openGLBitmap = bitmapFactory.createBitmap(image)
        @textureFactory = textureFactory
        OpenGLImageCacheFactory.getInstance().init(self)
        @platformImage = OpenGLESPostLoadPlatformImage.getInstance()
    end
    

    def getHeight()
        return ((@openGLBitmap.getHeight() * @openGLESImageProperties.scaleY2)).to_i
    end
    

    def getWidth()
        return ((@openGLBitmap.getWidth() * @openGLESImageProperties.scaleX2)).to_i
    end
    

    # throws Exception
    def set(gl)
        raise StandardError.new(@commonStrings.NOT_IMPLEMENTED)
    end
    

    def initTexture(gl)
        if !OpenGLESImage.texture2dList.contains(self)
            OpenGLESImage.texture2dList.add(self)
            textures = Array.new(1, 0)
            gl.glEnable(GL10.GL_TEXTURE_2D)
            if @openGLESImageProperties.textureID != -1
                textures[0] = @openGLESImageProperties.textureID
                gl.glDeleteTextures(1, textures, 0)
            end
            gl.glGenTextures(1, textures, 0)
            @openGLESImageProperties.textureID = textures[0]
            gl.glBindTexture(GL10.GL_TEXTURE_2D, @openGLESImageProperties.textureID)
            gl.glTexParameterf(GL10.GL_TEXTURE_2D, GL10.GL_TEXTURE_MIN_FILTER, GL10.GL_NEAREST)
            gl.glTexParameterf(GL10.GL_TEXTURE_2D, GL10.GL_TEXTURE_WRAP_S, GL10.GL_CLAMP_TO_EDGE)
            gl.glTexParameterf(GL10.GL_TEXTURE_2D, GL10.GL_TEXTURE_WRAP_T, GL10.GL_CLAMP_TO_EDGE)
            return true
        end
        return false
    end
    

    def drawRegion(gl, viewHeight, x_src, y_src, width, height, x, y, z)
    end
    

    def draw(gl, x, y, z)
    end
    

    def getType()
        return OpenGLESImage::TYPE
    end
    

    def toString()
        graphicsStrings = GraphicsStrings.getInstance()
        return StringMaker.new().append(self.getName()).append(super.to_s).append(graphicsStrings.OPACITY).appendfloat((@openGLESImageProperties.alphaf).to_f).to_s
    end
    alias_method :to_s, :toString

    def self.texture2dList()
        return defined?(@@texture2dList) ? @@texture2dList : nil
    end

    def self.texture2dList=(value)
        @@texture2dList = value
    end
end

require "org/allbinary/graphics/GraphicsStrings"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/platform/graphics/PlatformBitmapBase"
require "org/allbinary/platform/graphics/PlatformBitmapBaseFactory"
require "org/allbinary/platform/opengles/PlatformTextureBaseFactory"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/image/opengles/OpenGLESImageProcessor"
require "org/allbinary/image/opengles/OpenGLESImageProperties"
require "org/allbinary/image/opengles/OpenGLESImageTranslate"
require "org/allbinary/image/opengles/OpenGLImageCacheFactory"

class OpenGLESImage
    NULL_OPENGL_IMAGE = OpenGLESImage.new(NullImage::NULL_IMAGE, PlatformBitmapBaseFactory::NULL_PLATFORM_BITMAP_BASE_FACTORY, PlatformTextureBaseFactory::NULL_PLATFORM_TEXTURE_BASE_FACTORY)
    @@texture2dList = BasicArrayListD.new()
    TYPE = 4
end

