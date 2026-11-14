# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.graphics.opengles


class OpenGLUtil
    

    def self.getInstance()
        return OpenGLUtil.instance
    end
    

    def addImage(image)
        return image
    end
    

    def clear()
    end
    

    def addRunnable(runnable)
    end

    def self.instance()
        OpenGLUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        OpenGLUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = OpenGLUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "OpenGLUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :Image, "javax/microedition/lcdui/Image"
require "java/lang/Runnable"

begin
    OpenGLUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

