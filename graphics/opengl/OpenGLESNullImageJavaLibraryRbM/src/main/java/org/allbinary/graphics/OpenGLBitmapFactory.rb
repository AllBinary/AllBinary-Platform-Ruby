# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.graphics

# require "java/io/IOException"
require "org/allbinary/platform/graphics/PlatformBitmapBaseFactory"

class OpenGLBitmapFactory < PlatformBitmapBaseFactory
    attr_accessor :ARGB_8888
    class Config
        attr_accessor :bitmapConfig

        def initialize_fields
            @bitmapConfig = nil
        end
        

        def initialize(bitmapConfig)
            initialize_fields
            @bitmapConfig = bitmapConfig
        end
    end

    def initialize_fields
        @ARGB_8888 = Config.new(NullUtil.getInstance().NULL_OBJECT)
    end

    def initialize
        super()
        initialize_fields
    end
    

    def self.getInstance()
        return OpenGLBitmapFactory.instance
    end
    

    def createBitmap(width, height, config)
        return OpenGLBitmap.new(NullUtil.getInstance().NULL_OBJECT)
    end
    

    # throws IOException
    def decodeStream(inputStream)
        return OpenGLBitmap.new(NullUtil.getInstance().NULL_OBJECT)
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def createBitmap(image)
        return OpenGLBitmap.new(NullUtil.getInstance().NULL_OBJECT)
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

autoload :InputStream, "java/io/InputStream"
autoload :Image, "javax/microedition/lcdui/Image"
autoload :NullUtil, "org/allbinary/logic/NullUtil"
autoload :PlatformBitmapBase, "org/allbinary/platform/graphics/PlatformBitmapBase"
autoload :OpenGLBitmap, "org/allbinary/graphics/OpenGLBitmap"

begin
    OpenGLBitmapFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

