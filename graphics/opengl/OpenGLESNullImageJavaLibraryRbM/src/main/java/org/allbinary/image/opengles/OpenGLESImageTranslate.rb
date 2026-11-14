# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
#  
# By agreeing to this license you and any business entity you represent are 
# legally bound to the AllBinary Open License Version 1 legal agreement. 
#  
# You may obtain the AllBinary Open License Version 1 legal agreement from 
# AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
#  
# Created By: Travis Berthelot 
#   
# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.image.opengles


class OpenGLESImageTranslate
    

    def self.getInstance()
        return OpenGLESImageTranslate.instance
    end
    

    def translate(gl, openGLESImage, x, y)
        openGLESImage.imageProcessor.translate(gl, x, y)
    end
    

    def translate2(gl, openGLESImage)
    end

    def self.instance()
        OpenGLESImageTranslate.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        OpenGLESImageTranslate.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = OpenGLESImageTranslate.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "OpenGLESImageTranslate"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :GL10, "javax/microedition/khronos/opengles/GL10"
autoload :OpenGLESImage, "org/allbinary/image/opengles/OpenGLESImage"

begin
    OpenGLESImageTranslate.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

