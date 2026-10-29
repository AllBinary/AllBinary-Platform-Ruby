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
    attr_accessor :VERSION_1_0, :VERSION_1_1, :VERSION_2_0, :VERSION_3_0, :VERSION_3_1, :VERSION_3_2, :VERSION_HIGHER_THAN_EXISTS, :glVersion, :shaderVersion, :glInstanceVersion, :maxTextureSize

    def initialize_fields
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
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/string/StringUtil"

class OpenGLCapabilities
    @@instance = OpenGLCapabilities.new()
end

