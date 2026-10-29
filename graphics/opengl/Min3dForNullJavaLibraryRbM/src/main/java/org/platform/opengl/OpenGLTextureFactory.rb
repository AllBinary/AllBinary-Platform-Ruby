# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.platform.opengl

# require "javax/microedition/khronos/opengles/GL10"
# require "javax/microedition/lcdui/Image"
require "org/allbinary/platform/opengles/PlatformTextureBaseFactory"

class OpenGLTextureFactory < PlatformTextureBaseFactory
    attr_accessor :gluUtils

    def initialize_fields
        @gluUtils = OpenGLGLUUtils.getInstance()
    end
    

    def self.getInstance()
        return OpenGLTextureFactory.instance
    end
    

    def initialize()
        super()
        initialize_fields
    end
    

    def load(gl, target, level, image, border, flip)
        raise RuntimeError.new()
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/platform/opengl/OpenGLGLUUtils"

class OpenGLTextureFactory
    @@instance = OpenGLTextureFactory.new()
end

