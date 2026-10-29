# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.device


class OpenGLESNullGraphicsFactory
    

    def self.getInstance()
        return OpenGLESNullGraphicsFactory.instance
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/device/OpenGLESGraphics"

class OpenGLESNullGraphicsFactory
    @@instance = OpenGLESGraphics.new()
end

