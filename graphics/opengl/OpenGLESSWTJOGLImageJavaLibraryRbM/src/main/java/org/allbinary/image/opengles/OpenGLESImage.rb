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

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
require "javax/microedition/lcdui/Image"
require "org/allbinary/image/opengles/OpenGLSurfaceChangedInterface"

module ::Org; module Allbinary; module Image; module Opengles

#OpenGLESSWTJOGLImageJavaLibrary
class OpenGLESImage < ::Javax::Microedition::Lcdui::Image
    include OpenGLSurfaceChangedInterface
    attr_accessor :logUtil, :commonStrings, :textureFactory, :openGLBitmap, :imageProcessor, :openGLESImageTranslate, :openGLESImageProperties

    def jfields_org_allbinary_image_opengles_OpenGLESImage
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @textureFactory = nil unless instance_variable_defined?(:@textureFactory)
        @openGLBitmap = nil unless instance_variable_defined?(:@openGLBitmap)
        @imageProcessor = OpenGLESImageProcessor.getInstance()
        @openGLESImageTranslate = OpenGLESImageTranslate.getInstance()
        @openGLESImageProperties = OpenGLESImageProperties.new()
    end
    

    def initialize(image, bitmapFactory, textureFactory)
        super(image.getName(), ::Javax::Microedition::Lcdui::PostLoadImageProcessor::NULL_POST_LOAD_IMAGE_PROCESSOR)
        jfields_org_allbinary_image_opengles_OpenGLESImage
        @openGLBitmap = bitmapFactory.createBitmap(image)
        @textureFactory = textureFactory
        OpenGLImageCacheFactory.getInstance().init(self)
        @platformImage = ::Javax::Microedition::Lcdui::OpenGLESPostLoadPlatformImage.getInstance()
    end
    

    def getHeight()
        return (((@openGLBitmap.getHeight() * @openGLESImageProperties.scaleY2)).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })
    end
    java_overload :getHeight, 0
    

    def getWidth()
        return (((@openGLBitmap.getWidth() * @openGLESImageProperties.scaleX2)).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })
    end
    java_overload :getWidth, 0
    

    # throws Exception
    def set(gl)
        raise StandardError.new(@commonStrings.NOT_IMPLEMENTED)
    end
    java_overload :set, 1
    

    def initTexture(gl)
        if !OpenGLESImage.texture2dList.contains(self)
            OpenGLESImage.texture2dList.add(self)
            textures = (Array.new(1, 0)).tap { |java_array| java_array.instance_variable_set(:@java_component, :I) }
            gl.glEnable(::Javax::Microedition::Khronos::Opengles::GL10::GL_TEXTURE_2D)
            if @openGLESImageProperties.textureID != -1
                textures[0] = @openGLESImageProperties.textureID
                gl.glDeleteTextures(1, textures, 0)
            end
            gl.glGenTextures(1, textures, 0)
            @openGLESImageProperties.textureID = textures[0]
            gl.glBindTexture(::Javax::Microedition::Khronos::Opengles::GL10::GL_TEXTURE_2D, @openGLESImageProperties.textureID)
            gl.glTexParameterf(::Javax::Microedition::Khronos::Opengles::GL10::GL_TEXTURE_2D, ::Javax::Microedition::Khronos::Opengles::GL10::GL_TEXTURE_MIN_FILTER, ::Javax::Microedition::Khronos::Opengles::GL10::GL_NEAREST)
            gl.glTexParameterf(::Javax::Microedition::Khronos::Opengles::GL10::GL_TEXTURE_2D, ::Javax::Microedition::Khronos::Opengles::GL10::GL_TEXTURE_WRAP_S, ::Javax::Microedition::Khronos::Opengles::GL10::GL_CLAMP_TO_EDGE)
            gl.glTexParameterf(::Javax::Microedition::Khronos::Opengles::GL10::GL_TEXTURE_2D, ::Javax::Microedition::Khronos::Opengles::GL10::GL_TEXTURE_WRAP_T, ::Javax::Microedition::Khronos::Opengles::GL10::GL_CLAMP_TO_EDGE)
            return true
        end
        return false
    end
    java_overload :initTexture, 1
    

    def drawRegion(gl, viewHeight, x_src, y_src, width, height, x, y, z)
    end
    java_overload :drawRegion, 9
    

    def draw(gl, x, y, z)
    end
    java_overload :draw, 4
    

    def getType()
        return OpenGLESImage::TYPE
    end
    java_overload :getType, 0
    

    def toString()
        graphicsStrings = ::Org::Allbinary::Graphics::GraphicsStrings.getInstance()
        return ::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(self.getName()).append(super.to_s).append(graphicsStrings.OPACITY).appendfloat((@openGLESImageProperties.alphaf).to_f).to_s
    end
    java_overload :toString, 0
    alias_method :to_s, :toString

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
            const_set(:NULL_OPENGL_IMAGE, OpenGLESImage.new(::Javax::Microedition::Lcdui::NullImage::NULL_IMAGE, ::Org::Allbinary::Platform::Graphics::PlatformBitmapBaseFactory::NULL_PLATFORM_BITMAP_BASE_FACTORY, ::Org::Allbinary::Platform::Opengles::PlatformTextureBaseFactory::NULL_PLATFORM_TEXTURE_BASE_FACTORY))
            @@texture2dList = ::Org::Allbinary::Util::BasicArrayListD.new()
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

module ::Javax; module Microedition; module Khronos; module Opengles; autoload :GL, "javax/microedition/khronos/opengles/GL" unless const_defined?(:GL, false); end; end; end; end
module ::Javax; module Microedition; module Khronos; module Opengles; autoload :GL10, "javax/microedition/khronos/opengles/GL10" unless const_defined?(:GL10, false); end; end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :NullImage, "javax/microedition/lcdui/NullImage" unless const_defined?(:NullImage, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :OpenGLESPostLoadPlatformImage, "javax/microedition/lcdui/OpenGLESPostLoadPlatformImage" unless const_defined?(:OpenGLESPostLoadPlatformImage, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :PostLoadImageProcessor, "javax/microedition/lcdui/PostLoadImageProcessor" unless const_defined?(:PostLoadImageProcessor, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :GraphicsStrings, "org/allbinary/graphics/GraphicsStrings" unless const_defined?(:GraphicsStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Platform; module Graphics; autoload :PlatformBitmapBase, "org/allbinary/platform/graphics/PlatformBitmapBase" unless const_defined?(:PlatformBitmapBase, false); end; end; end; end
module ::Org; module Allbinary; module Platform; module Graphics; autoload :PlatformBitmapBaseFactory, "org/allbinary/platform/graphics/PlatformBitmapBaseFactory" unless const_defined?(:PlatformBitmapBaseFactory, false); end; end; end; end
module ::Org; module Allbinary; module Platform; module Opengles; autoload :PlatformTextureBaseFactory, "org/allbinary/platform/opengles/PlatformTextureBaseFactory" unless const_defined?(:PlatformTextureBaseFactory, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
autoload :OpenGLESImageProcessor, "org/allbinary/image/opengles/OpenGLESImageProcessor" unless const_defined?(:OpenGLESImageProcessor, false)
autoload :OpenGLESImageProperties, "org/allbinary/image/opengles/OpenGLESImageProperties" unless const_defined?(:OpenGLESImageProperties, false)
autoload :OpenGLESImageTranslate, "org/allbinary/image/opengles/OpenGLESImageTranslate" unless const_defined?(:OpenGLESImageTranslate, false)
autoload :OpenGLImageCacheFactory, "org/allbinary/image/opengles/OpenGLImageCacheFactory" unless const_defined?(:OpenGLImageCacheFactory, false)

begin
    OpenGLESImage.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

