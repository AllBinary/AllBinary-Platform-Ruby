# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.graphics.opengles

require "java/lang/JavaOverload"
require "org/allbinary/graphics/threed/min3d/renderer/processor/ObjectThreedOpenGLProcessor"

module ::Org; module Allbinary; module Graphics; module Opengles

class EnableFacesShaderOpenGLProcessor < ::Org::Allbinary::Graphics::Threed::Min3d::Renderer::Processor::ObjectThreedOpenGLProcessor
    

    def self.getInstance()
        return @@instance
    end
    

    def initialize()
        super()
    end
    

    def process(gl, anyType)
    end
    java_overload :process, 2

    def self.instance()
        EnableFacesShaderOpenGLProcessor.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        EnableFacesShaderOpenGLProcessor.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = EnableFacesShaderOpenGLProcessor.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "EnableFacesShaderOpenGLProcessor"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Javax; module Microedition; module Khronos; module Opengles; autoload :GL10, "javax/microedition/khronos/opengles/GL10" unless const_defined?(:GL10, false); end; end; end; end

begin
    EnableFacesShaderOpenGLProcessor.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

