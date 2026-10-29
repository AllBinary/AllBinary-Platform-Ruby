# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.graphics.opengles

# require "javax/microedition/khronos/opengles/GL10"
require "org/allbinary/graphics/threed/min3d/renderer/processor/ObjectThreedOpenGLProcessor"

class EnableFacesShaderOpenGLProcessor < ObjectThreedOpenGLProcessor
    

    def self.getInstance()
        return EnableFacesShaderOpenGLProcessor.instance
    end
    

    def initialize()
        super()
    end
    

    def process(gl, anyType)
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

class EnableFacesShaderOpenGLProcessor
    @@instance = EnableFacesShaderOpenGLProcessor.new()
end

