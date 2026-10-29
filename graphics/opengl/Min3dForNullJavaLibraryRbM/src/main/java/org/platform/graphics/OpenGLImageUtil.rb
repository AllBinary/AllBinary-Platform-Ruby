# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.platform.graphics

require "org/allbinary/image/opengles/OpenGLImageUtilBase"

class OpenGLImageUtil < OpenGLImageUtilBase
    

    def self.getInstance()
        return OpenGLImageUtil.instance
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

class OpenGLImageUtil
    @@instance = OpenGLImageUtil.new()
end

