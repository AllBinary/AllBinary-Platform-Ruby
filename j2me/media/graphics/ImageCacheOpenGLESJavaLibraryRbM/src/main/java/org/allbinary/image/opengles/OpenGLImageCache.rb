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
# require "java/io/InputStream"
# require "javax/microedition/khronos/opengles/GL10"
# require "javax/microedition/lcdui/Image"
# require "javax/microedition/lcdui/NullImage"
require "org/allbinary/image/ImageCache"

#ImageCacheOpenGLESJavaLibrary
class OpenGLImageCache < ImageCache
    attr_accessor :imageCache, :preResourceImageUtil, :gl, :lock, :list, :renderer

    def initialize_fields
        @imageCache = ImageCacheFactory.getInstance()
        @preResourceImageUtil = PreResourceImageUtil.getInstance()
        @gl = NullGL10::NULL_GL10
        @lock = SynchObject.new()
        @list = BasicArrayListD.new()
        @renderer = AllBinaryRendererBase3.new()
    end
    

    def initialize()
        super()
        initialize_fields
    end
    

    def addListener(renderer)
        @renderer = renderer
    end
    

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
            if image != NullImage::NULL_IMAGE
                @list.add(image)
            end
        end
        return image
    end
    

    # throws Exception
    def createImageFromInputStream(key, inputStream)
        cachedImage = @imageCache.getWithKey(key)
        image = @preResourceImageUtil.encapsulate(cachedImage)
        (@lock).java_monitor.synchronize do
            if image != NullImage::NULL_IMAGE
                @list.add(image)
            end
        end
        return image
    end
    

    def getGlP()
        return @gl
    end
    

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
end

require "org/allbinary/device/NullGL10"
require "org/allbinary/graphics/opengles/renderer/AllBinaryRendererBase3"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/image/ImageCacheFactory"
require "org/allbinary/image/PreResourceImageUtil"
require "org/allbinary/thread/SynchObject"
require "org/allbinary/image/opengles/OpenGLESImage"

