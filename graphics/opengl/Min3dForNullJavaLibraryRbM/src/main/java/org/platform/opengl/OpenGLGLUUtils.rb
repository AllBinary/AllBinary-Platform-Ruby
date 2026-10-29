# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.platform.opengl

# require "java/nio/ByteBuffer"
# require "javax/microedition/khronos/opengles/GL10"

class OpenGLGLUUtils
    

    def self.getInstance()
        return OpenGLGLUUtils.instance
    end
    

    def makeByteBuffer(bmp, flip)
        raise RuntimeError.new()
    end
    

    def texImage2D(gl, glVersion, target, level, generateMipMap, openGLESImage, border, flip)
        raise RuntimeError.new()
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def texImage2D(gl, glVersion, target, level, generateMipMap, bitmap, border, flip)
        raise RuntimeError.new()
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/graphics/OpenGLBitmap"
require "org/allbinary/image/opengles/OpenGLESImage"

class OpenGLGLUUtils
    @@instance = OpenGLGLUUtils.new()
end

