# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.graphics

require "java/lang/JavaOverload"
# require "java/io/IOException"
require "org/allbinary/platform/graphics/PlatformBitmapBaseFactory"

module ::Org; module Allbinary; module Graphics

class OpenGLBitmapFactory < ::Org::Allbinary::Platform::Graphics::PlatformBitmapBaseFactory
    attr_accessor :ARGB_8888

    def jfields_org_allbinary_graphics_OpenGLBitmapFactory
        @ARGB_8888 = OpenGLBitmapConfig.new(::Android::Graphics::Bitmap::Config.ARGB_8888)
    end

    def initialize
        super()
        jfields_org_allbinary_graphics_OpenGLBitmapFactory
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def createBitmap_j3(width, height, config)
        return OpenGLBitmap.new(::Android::Graphics::Bitmap.createBitmap(width, height, config.bitmapConfig))
    end
    

    # throws IOException
    def decodeStream(inputStream)
        return OpenGLBitmap.new(::Android::Graphics::BitmapFactory.decodeStream(inputStream))
    end
    java_overload :decodeStream, 1
    

    def createBitmap_j1(image)
        return OpenGLBitmap.new((image).getBitmap())
    end

    def createBitmap(*java_overload_args)
        return createBitmap_j3(*java_overload_args) if java_overload_args.length == 3
        return createBitmap_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method createBitmap takes #{java_overload_args.length} arguments"
    end

    def self.instance()
        OpenGLBitmapFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        OpenGLBitmapFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = OpenGLBitmapFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "OpenGLBitmapFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Java; module Io; autoload :InputStream, "java/io/InputStream" unless const_defined?(:InputStream, false); end; end
module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end
module ::Android; module Graphics; autoload :Bitmap, "android/graphics/Bitmap" unless const_defined?(:Bitmap, false); end; end
module ::Android; module Graphics; autoload :BitmapFactory, "android/graphics/BitmapFactory" unless const_defined?(:BitmapFactory, false); end; end
module ::Org; module Allbinary; module Platform; module Graphics; autoload :PlatformBitmapBase, "org/allbinary/platform/graphics/PlatformBitmapBase" unless const_defined?(:PlatformBitmapBase, false); end; end; end; end
module ::Org; module Microemu; module Android; module Device; autoload :AndroidImageInterface, "org/microemu/android/device/AndroidImageInterface" unless const_defined?(:AndroidImageInterface, false); end; end; end; end
autoload :OpenGLBitmap, "org/allbinary/graphics/OpenGLBitmap" unless const_defined?(:OpenGLBitmap, false)
autoload :OpenGLBitmapConfig, "org/allbinary/graphics/OpenGLBitmapConfig" unless const_defined?(:OpenGLBitmapConfig, false)

begin
    OpenGLBitmapFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end

