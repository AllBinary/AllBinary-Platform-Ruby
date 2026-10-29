# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.graphics

# require "java/io/InputStream"
# require "javax/microedition/lcdui/Image"
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
        @ARGB_8888 = Config.new(Bitmap::Config.ARGB_8888)
    end

    def initialize
        super()
        initialize_fields
    end
    

    def self.getInstance()
        return OpenGLBitmapFactory.instance
    end
    

    def createBitmap(width, height, config)
        return OpenGLBitmap.new(Bitmap.createBitmap(width, height, config.bitmapConfig))
    end
    

    # throws IOException
    def decodeStream(inputStream)
        return OpenGLBitmap.new(BitmapFactory.decodeStream(inputStream))
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def createBitmap(image)
        return OpenGLBitmap.new((image).getBitmap())
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "android/graphics/Bitmap"
require "android/graphics/BitmapFactory"
require "org/allbinary/platform/graphics/PlatformBitmapBase"
require "org/microemu/android/device/AndroidImageInterface"
require "org/allbinary/graphics/OpenGLBitmap"

class OpenGLBitmapFactory
    @@instance = OpenGLBitmapFactory.new()
end

