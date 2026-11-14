#
# AllBinary Open License Version 1
# Copyright (c) 2011 AllBinary
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
# package org.allbinary.graphics.opengles


class OpenGLCapabilities
    attr_accessor :CUSTOM_GL_SURFACE_VIEW, :VERSION_1_0, :VERSION_1_1, :VERSION_2_0, :VERSION_3_0, :VERSION_3_1, :VERSION_3_2, :VERSION_HIGHER_THAN_EXISTS, :glVersion, :shaderVersion, :glInstanceVersion, :maxTextureSize

    def initialize_fields
        @CUSTOM_GL_SURFACE_VIEW = true
        @VERSION_1_0 = "1.0"
        @VERSION_1_1 = "1.1"
        @VERSION_2_0 = "2.0"
        @VERSION_3_0 = "3.0"
        @VERSION_3_1 = "3.1"
        @VERSION_3_2 = "3.2"
        @VERSION_HIGHER_THAN_EXISTS = "999.999"
        @glVersion = StringUtil.getInstance().EMPTY_STRING
        @shaderVersion = 0
        @glInstanceVersion = StringUtil.getInstance().EMPTY_STRING
        @maxTextureSize = 64
    end
    

    def self.getInstance()
        return OpenGLCapabilities.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    def isInitialized()
        return true
    end
    

    def initCapabilities(gl)
    end
    

    def isGlExtensionDrawTexture()
        return false
    end
    

    def getGlVersion()
        return @glVersion
    end
    

    def isVertexBufferObjectSupport()
        return false
    end
    

    def isTextureSizeValid(widthAndHeight)
        return true
    end

    def self.instance()
        OpenGLCapabilities.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        OpenGLCapabilities.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = OpenGLCapabilities.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "OpenGLCapabilities"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :StringUtil, "org/allbinary/logic/string/StringUtil"

begin
    OpenGLCapabilities.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

