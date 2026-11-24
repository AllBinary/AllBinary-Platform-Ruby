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

require "java/lang/Object"
require "java/lang/JavaOverload"
require "org/allbinary/image/ImageCache"

module ::Org; module Allbinary; module Image; module Opengles

#ImageCacheOpenGLESJavaLibrary
class OpenGLImageCache < ::Org::Allbinary::Image::ImageCache
    attr_accessor :imageCache, :preResourceImageUtil, :gl, :lock, :list, :renderer

    def jfields_org_allbinary_image_opengles_OpenGLImageCache
        @imageCache = ::Org::Allbinary::Image::ImageCacheFactory.getInstance()
        @preResourceImageUtil = ::Org::Allbinary::Image::PreResourceImageUtil.getInstance()
        @gl = ::Org::Allbinary::Device::NullGL10::NULL_GL10
        @lock = ::Org::Allbinary::ThreadPackage::SynchObject.new()
        @list = ::Org::Allbinary::Util::BasicArrayListD.new()
        @renderer = ::Org::Allbinary::Graphics::Opengles::Renderer::AllBinaryRendererBase3.new()
    end
    

    def initialize()
        super()
        jfields_org_allbinary_image_opengles_OpenGLImageCache
    end
    

    def addListener(renderer)
        @renderer = renderer
    end
    java_overload :addListener, 1
    

    # throws Exception
    def update(gl)
        @gl = gl
        (@lock).java_monitor.synchronize do
            (@list.size() - 1).step(0, -(1)) do |index|
                openGLESImage = (@list.objectArray[index])
                if openGLESImage != OpenGLESImage::NULL_OPENGL_IMAGE
                    openGLESImage.set(gl)
                end
            end
        end
    end
    java_overload :update, 1
    

    # throws Exception
    def createImage(caller, width, height)
        textureSize = width
        if height > width
            textureSize = height
        end
        while (textureSize % 4) != 0
            textureSize += 1
        end
        width = textureSize
        height = textureSize
        image2 = @imageCache.get(caller, width, height)
        image = @preResourceImageUtil.encapsulate(image2)
        (@lock).java_monitor.synchronize do
            if image != ::Javax::Microedition::Lcdui::NullImage::NULL_IMAGE
                @list.add(image)
            end
        end
        return image
    end
    java_overload :createImage, 3
    

    # throws Exception
    def createImageFromInputStream(key, inputStream)
        cachedImage = @imageCache.getWithKey(key)
        image = @preResourceImageUtil.encapsulate(cachedImage)
        (@lock).java_monitor.synchronize do
            if image != ::Javax::Microedition::Lcdui::NullImage::NULL_IMAGE
                @list.add(image)
            end
        end
        return image
    end
    java_overload :createImageFromInputStream, 2
    

    def getGlP()
        return @gl
    end
    java_overload :getGlP, 0
    

    def init(image)
        begin
            (@lock).java_monitor.synchronize do
                if @list.contains(image)
                    raise RuntimeError.new()
                end
                @list.add(image)
            end
            @renderer.add(image)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.INIT, e)
        end
    end
    java_overload :init, 1
end

module ::Java; module Io; autoload :InputStream, "java/io/InputStream" unless const_defined?(:InputStream, false); end; end
module ::Javax; module Microedition; module Khronos; module Opengles; autoload :GL10, "javax/microedition/khronos/opengles/GL10" unless const_defined?(:GL10, false); end; end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :NullImage, "javax/microedition/lcdui/NullImage" unless const_defined?(:NullImage, false); end; end; end
module ::Org; module Allbinary; module Device; autoload :NullGL10, "org/allbinary/device/NullGL10" unless const_defined?(:NullGL10, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Opengles; module Renderer; autoload :AllBinaryRendererBase3, "org/allbinary/graphics/opengles/renderer/AllBinaryRendererBase3" unless const_defined?(:AllBinaryRendererBase3, false); end; end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Image; autoload :ImageCacheFactory, "org/allbinary/image/ImageCacheFactory" unless const_defined?(:ImageCacheFactory, false); end; end; end
module ::Org; module Allbinary; module Image; autoload :PreResourceImageUtil, "org/allbinary/image/PreResourceImageUtil" unless const_defined?(:PreResourceImageUtil, false); end; end; end
module ::Org; module Allbinary; module ThreadPackage; autoload :SynchObject, "org/allbinary/thread/SynchObject" unless const_defined?(:SynchObject, false); end; end; end
autoload :OpenGLESImage, "org/allbinary/image/opengles/OpenGLESImage" unless const_defined?(:OpenGLESImage, false)

end; end; end; end

