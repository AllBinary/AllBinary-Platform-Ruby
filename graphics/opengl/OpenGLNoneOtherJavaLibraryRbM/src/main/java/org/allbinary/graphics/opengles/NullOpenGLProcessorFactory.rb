# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.graphics.opengles


module ::Org; module Allbinary; module Graphics; module Opengles

class NullOpenGLProcessorFactory
    

    def self.getInstance()
        return NullOpenGLProcessorFactory.instance
    end

    def self.instance()
        NullOpenGLProcessorFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        NullOpenGLProcessorFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = OpenGLProcessor.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "NullOpenGLProcessorFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :OpenGLProcessor, "org/allbinary/graphics/opengles/OpenGLProcessor" unless const_defined?(:OpenGLProcessor, false)

begin
    NullOpenGLProcessorFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

