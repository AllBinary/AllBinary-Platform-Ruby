# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.image.opengles


module ::Org; module Allbinary; module Image; module Opengles

class OpenGLStrings
    attr_accessor :GL_ERROR_LABEL, :SET

    def jfields_org_allbinary_image_opengles_OpenGLStrings
        @GL_ERROR_LABEL = "GLError: "
        @SET = "set(GL10)"
    end

    def initialize
        jfields_org_allbinary_image_opengles_OpenGLStrings
    end
    

    def self.getInstance()
        return OpenGLStrings.instance
    end

    def self.instance()
        OpenGLStrings.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        OpenGLStrings.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = OpenGLStrings.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "OpenGLStrings"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

begin
    OpenGLStrings.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

