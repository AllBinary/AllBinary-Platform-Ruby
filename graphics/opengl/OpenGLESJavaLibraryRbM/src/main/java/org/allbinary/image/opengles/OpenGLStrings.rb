# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.image.opengles


class OpenGLStrings
    attr_accessor :GL_ERROR_LABEL, :SET

    def initialize_fields
        @GL_ERROR_LABEL = "GLError: "
        @SET = "set(GL10)"
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return OpenGLStrings.instance
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

class OpenGLStrings
    @@instance = OpenGLStrings.new()
end

