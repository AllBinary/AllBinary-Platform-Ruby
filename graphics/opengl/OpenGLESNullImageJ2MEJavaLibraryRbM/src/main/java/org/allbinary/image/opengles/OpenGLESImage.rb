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
require "org/allbinary/image/opengles/OpenGLSurfaceChangedInterface"

module ::Org; module Allbinary; module Image; module Opengles

#OpenGLESNullImageJ2MEJavaLibrary
class OpenGLESImage
    include OpenGLSurfaceChangedInterface
    attr_accessor :commonStrings, :textureFactory, :openGLBitmap, :openGLESImageProperties

    def jfields_org_allbinary_image_opengles_OpenGLESImage
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @textureFactory = nil unless instance_variable_defined?(:@textureFactory)
        @openGLBitmap = nil unless instance_variable_defined?(:@openGLBitmap)
        @openGLESImageProperties = OpenGLESImageProperties.new()
    end
    

    def initialize(image, bitmapFactory, textureFactory)
        jfields_org_allbinary_image_opengles_OpenGLESImage
        @openGLBitmap = bitmapFactory.createBitmap(image)
        @textureFactory = textureFactory
    end
    

    # throws Exception
    def set(gl)
        raise StandardError.new(@commonStrings.NOT_IMPLEMENTED)
    end
    java_overload :set, 1
    

    def initTexture(gl)
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
module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :NullImage, "javax/microedition/lcdui/NullImage" unless const_defined?(:NullImage, false); end; end; end
module ::Org; module Allbinary; module Platform; module Graphics; autoload :PlatformBitmapBase, "org/allbinary/platform/graphics/PlatformBitmapBase" unless const_defined?(:PlatformBitmapBase, false); end; end; end; end
module ::Org; module Allbinary; module Platform; module Graphics; autoload :PlatformBitmapBaseFactory, "org/allbinary/platform/graphics/PlatformBitmapBaseFactory" unless const_defined?(:PlatformBitmapBaseFactory, false); end; end; end; end
module ::Org; module Allbinary; module Platform; module Opengles; autoload :PlatformTextureBaseFactory, "org/allbinary/platform/opengles/PlatformTextureBaseFactory" unless const_defined?(:PlatformTextureBaseFactory, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
autoload :OpenGLESImageProperties, "org/allbinary/image/opengles/OpenGLESImageProperties" unless const_defined?(:OpenGLESImageProperties, false)

begin
    OpenGLESImage.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

