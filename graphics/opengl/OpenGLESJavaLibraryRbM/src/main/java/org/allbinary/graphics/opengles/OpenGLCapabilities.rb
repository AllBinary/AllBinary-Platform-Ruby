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

# require "javax/microedition/khronos/opengles/GL10"
# require "javax/microedition/khronos/opengles/GL11"

class OpenGLCapabilities
    attr_accessor :logUtil, :CUSTOM_GL_SURFACE_VIEW, :stringUtil, :initialized, :glVersionString, :glShaderVersionString, :shaderVersion, :glRenderer, :glVendor, :glExtensions, :possiblyAccelerated, :acceleratedString, :maxTextureSize, :VERSION_1_0, :VERSION_1_1, :VERSION_2_0, :VERSION_3_0, :VERSION_3_1, :VERSION_3_2, :VERSION_HIGHER_THAN_EXISTS, :VERSION_UNK, :GL_EXT_GPU_SHADER_100, :GL_EXT_GPU_SHADER4, :glVersion, :glInstanceVersion, :glExtensionDrawTexture, :glThreedDrawTexture, :glExtensionGPUShader4, :glExtensionGPUShader100, :vertexBufferObjectSupport

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @CUSTOM_GL_SURFACE_VIEW = true
        @stringUtil = StringUtil.getInstance()
        @initialized = false
        @glVersionString = @stringUtil.EMPTY_STRING
        @glShaderVersionString = @stringUtil.EMPTY_STRING
        @shaderVersion = 0
        @glRenderer = @stringUtil.EMPTY_STRING
        @glVendor = @stringUtil.EMPTY_STRING
        @glExtensions = @stringUtil.EMPTY_STRING
        @possiblyAccelerated = false
        @acceleratedString = @stringUtil.EMPTY_STRING
        @maxTextureSize = 64
        @VERSION_1_0 = "1.0"
        @VERSION_1_1 = "1.1"
        @VERSION_2_0 = "2.0"
        @VERSION_3_0 = "3.0"
        @VERSION_3_1 = "3.1"
        @VERSION_3_2 = "3.2"
        @VERSION_HIGHER_THAN_EXISTS = "999.999"
        @VERSION_UNK = "Unk"
        @GL_EXT_GPU_SHADER_100 = "GL_ARB_shading_language_100"
        @GL_EXT_GPU_SHADER4 = "GL_EXT_gpu_shader4"
        @glVersion = @glVersionString
        @glInstanceVersion = @VERSION_UNK
        @glExtensionDrawTexture = false
        @glThreedDrawTexture = false
        @glExtensionGPUShader4 = false
        @glExtensionGPUShader100 = false
        @vertexBufferObjectSupport = false
    end
    

    def self.getInstance()
        return OpenGLCapabilities.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    def isInitialized()
        return @initialized
    end
    

    def requireInitialization()
    end
    

    def initCapabilities(gl)
        _METHOD_NAME = "initGLCapabilities"
        begin
            features = Features.getInstance()
            openGLFeatureFactory = OpenGLFeatureFactory.getInstance()
            openGLImageSpecificFactory = OpenGLImageSpecificFactory.getInstance()
            stringBuffer = StringMaker.new()
            @glVersionString = gl.glGetString(GL10.GL_VERSION)
            _GL_SHADING_LANGUAGE_VERSION = 0x8b8c
            @glShaderVersionString = gl.glGetString(_GL_SHADING_LANGUAGE_VERSION)
            if @glShaderVersionString == nil
                @glShaderVersionString = @stringUtil.EMPTY_STRING
            end
            begin
                if @glShaderVersionString != nil && (@glShaderVersionString.index(".") || -1) >= 0
                    startIndex = (@glShaderVersionString.rindex(" ") || -1)
                    if startIndex >= 0
                        @glShaderVersionString = @glShaderVersionString[startIndex + 1..]
                    end
                    @shaderVersion = Integer(@glShaderVersionString.gsub(CommonSeps.getInstance().PERIOD, StringUtil.getInstance().EMPTY_STRING))
                end
            rescue StandardError => e
                commonStrings = CommonStrings.getInstance()
                @logUtil.put(commonStrings.EXCEPTION, self, _METHOD_NAME, e)
            end
            @glRenderer = gl.glGetString(GL10.GL_RENDERER)
            @glVendor = gl.glGetString(GL10.GL_VENDOR)
            @glExtensions = gl.glGetString(GL10.GL_EXTENSIONS)
            if (@glExtensions.index(@GL_EXT_GPU_SHADER_100) || -1) >= 0
                @glExtensionGPUShader100 = true
            else
                @glExtensionGPUShader100 = false
            end
            if (@glExtensions.index(@GL_EXT_GPU_SHADER4) || -1) >= 0
                @glExtensionGPUShader4 = true
            else
                @glExtensionGPUShader4 = false
            end
            if @glRenderer == nil
                @glRenderer = @stringUtil.EMPTY_STRING
            end
            if (@glRenderer.downcase.index("pixelflinger") || -1) >= 0
                @acceleratedString = "Probably Not for " + @glRenderer
                @possiblyAccelerated = false
            else
                @acceleratedString = "Probably for " + @glRenderer
                @possiblyAccelerated = true
            end
            @glExtensionDrawTexture = false
            if @glVersionString == nil
                @glVersionString = @stringUtil.EMPTY_STRING
                @glVersion = @VERSION_UNK
            elsif (@glVersionString.index(" 1.0") || -1) >= 0
                @glVersion = @VERSION_1_0
            elsif (@glVersionString.index(" 1.1") || -1) >= 0
                @glVersion = @VERSION_1_1
            else
                @glVersion = @VERSION_UNK
            end
            if gl.is_a?(GL11)
                @glInstanceVersion = @VERSION_1_1
            elsif gl.is_a?(GL10)
                @glInstanceVersion = @VERSION_1_0
            end
            if @glVendor == nil
                @glVendor = @stringUtil.EMPTY_STRING
            end
            if @glExtensions == nil
                @glExtensions = @stringUtil.EMPTY_STRING
            end
            if @possiblyAccelerated
                PreLogUtil.put(StringMaker.new().append("VBO:?").appendboolean((@glInstanceVersion == @VERSION_1_1)).append("||").appendboolean(self.isExtension(openGLFeatureFactory.OPENGL_VERTEX_BUFFER_OBJECT)).to_s, self, _METHOD_NAME)
                if (@glInstanceVersion == @VERSION_1_1 || self.isExtension(openGLFeatureFactory.OPENGL_VERTEX_BUFFER_OBJECT))
                    if AndroidUtil.isAndroid()
                        PreLogUtil.put("VBO implementation was detected, but disabled by default for Android", self, _METHOD_NAME)
                    else
                        PreLogUtil.put("VBO implementation was detected, but disabled for now", self, _METHOD_NAME)
                    end
                end
            end
            stringUtil = StringUtil.getInstance()
            if features.isDefault(openGLFeatureFactory.OPENGL_AUTO_SELECT)
                if @vertexBufferObjectSupport
                    openGLImageSpecificFactory.setImageFactory(OpenGLESGL11VBOImageFactory.new())
                else
                    stringBuffer.append("OpenGL is on but ")
                    stringBuffer.append(stringUtil.toString(openGLFeatureFactory.OPENGL_DRAW_TEXTURE))
                    stringBuffer.append(" was not available")
                    PreLogUtil.put(stringBuffer.to_s, self, _METHOD_NAME)
                    openGLImageSpecificFactory.setImageFactory(OpenGLESGL10ImageFactory.new())
                end
            else
                stringBuffer.append(stringUtil.toString(openGLFeatureFactory.OPENGL_AUTO_SELECT))
                stringBuffer.append(" is not on")
                PreLogUtil.put(stringBuffer.to_s, self, _METHOD_NAME)
                openGLImageSpecificFactory.setImageFactory(OpenGLESGL10ImageFactory.new())
            end
            maxTextureSizeArray = Array.new(1, 0)
            gl.glGetIntegerv(GL10.GL_MAX_TEXTURE_SIZE, maxTextureSizeArray, 0)
            @maxTextureSize = maxTextureSizeArray[0]
            @initialized = true
        rescue StandardError => e
            commonStrings = CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, _METHOD_NAME, e)
        end
    end
    

    def isExtension(gameFeature)
        index = (@glExtensions.index(gameFeature.getName()) || -1)
        if index >= 0
            return true
        else
            return false
        end
    end
    

    def isGlExtensionDrawTexture()
        self.requireInitialization()
        return @glExtensionDrawTexture
    end
    

    def isGlExtensionGPUShader100()
        return @glExtensionGPUShader100
    end
    

    def isGlExtensionGPUShader4()
        self.requireInitialization()
        return @glExtensionGPUShader4
    end
    

    def getGlVersion()
        self.requireInitialization()
        return @glVersion
    end
    

    def getGlVersionString()
        self.requireInitialization()
        return @glVersionString
    end
    

    def getGlShaderVersion()
        self.requireInitialization()
        return @glShaderVersionString
    end
    

    def isGlThreedDrawTexture()
        self.requireInitialization()
        return @glThreedDrawTexture
    end
    

    def getGlRenderer()
        self.requireInitialization()
        return @glRenderer
    end
    

    def isVertexBufferObjectSupport()
        self.requireInitialization()
        return @vertexBufferObjectSupport
    end
    

    def isTextureSizeValid(widthAndHeight)
        self.requireInitialization()
        if @maxTextureSize >= widthAndHeight
            return true
        end
        return false
    end
    

    def toString()
        commonSeps = CommonSeps.getInstance()
        stringBuffer = StringMaker.new()
        stringBuffer.append("GL_VERSION: ")
        stringBuffer.append(@glVersionString)
        stringBuffer.append(" GL_SHADING_LANGUAGE_VERSION: ")
        stringBuffer.append(@glShaderVersionString)
        stringBuffer.append(" GL_RENDERER: ")
        stringBuffer.append(@glRenderer)
        stringBuffer.append(" GL_VENDOR: ")
        stringBuffer.append(@glVendor)
        stringBuffer.append(commonSeps.NEW_LINE)
        stringBuffer.append(" Is Accelerated: ")
        stringBuffer.append(@acceleratedString)
        stringBuffer.append(commonSeps.NEW_LINE)
        stringBuffer.append(" VBO Support: ")
        stringBuffer.appendboolean(self.isVertexBufferObjectSupport())
        stringBuffer.append(commonSeps.NEW_LINE)
        stringBuffer.append(" Max Texture Size: ")
        stringBuffer.appendint(@maxTextureSize)
        stringBuffer.append(commonSeps.NEW_LINE)
        stringBuffer.append(" GL_EXTENSIONS: ")
        begin
            tokenizer = Tokenizer.new(commonSeps.SPACE)
            list = tokenizer.getTokensFromString(@glExtensions, BasicArrayListD.new())
            size = list.size()
            (0...size).each do |index|
                stringBuffer.append(commonSeps.NEW_LINE)
                stringBuffer.append(@stringUtil.toString(list.objectArray[index]))
            end
        rescue StandardError => e
            commonStrings = CommonStrings.getInstance()
            PreLogUtil.putOE(commonStrings.EXCEPTION, self, commonStrings.TOSTRING, e)
        end
        return stringBuffer.to_s
    end
    alias_method :to_s, :toString

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/AndroidUtil"
require "org/allbinary/image/opengles/OpenGLESGL10ImageFactory"
require "org/allbinary/image/opengles/OpenGLESGL11VBOImageFactory"
require "org/allbinary/image/opengles/OpenGLImageSpecificFactory"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/logic/string/tokens/Tokenizer"
require "org/allbinary/logic/communication/log/PreLogUtil"
require "org/allbinary/game/configuration/feature/Features"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/graphics/opengles/OpenGLFeature"
require "org/allbinary/graphics/opengles/OpenGLFeatureFactory"

class OpenGLCapabilities
    @@instance = OpenGLCapabilities.new()
end

