# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.graphics.opengles


class NullOpenGLProcessorFactory
    

    def self.getInstance()
        return NullOpenGLProcessorFactory.instance
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/graphics/opengles/OpenGLProcessor"

class NullOpenGLProcessorFactory
    @@instance = OpenGLProcessor.new()
end

