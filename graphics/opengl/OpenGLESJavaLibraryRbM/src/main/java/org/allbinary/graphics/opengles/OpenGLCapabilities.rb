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

require "java/lang/JavaClass"

module ::Org; module Allbinary; module Graphics; module Opengles

class OpenGLCapabilities
    attr_accessor :logUtil, :CUSTOM_GL_SURFACE_VIEW, :stringUtil, :initialized, :glVersionString, :glShaderVersionString, :shaderVersion, :glRenderer, :glVendor, :glExtensions, :possiblyAccelerated, :acceleratedString, :maxTextureSize, :VERSION_1_0, :VERSION_1_1, :VERSION_2_0, :VERSION_3_0, :VERSION_3_1, :VERSION_3_2, :VERSION_HIGHER_THAN_EXISTS, :VERSION_UNK, :GL_EXT_GPU_SHADER_100, :GL_EXT_GPU_SHADER4, :glVersion, :glInstanceVersion, :glExtensionDrawTexture, :glThreedDrawTexture, :glExtensionGPUShader4, :glExtensionGPUShader100, :vertexBufferObjectSupport

    def jfields_org_allbinary_graphics_opengles_OpenGLCapabilities
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @CUSTOM_GL_SURFACE_VIEW = true
        @stringUtil = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance()
        @initialized = false
        @glVersionString = @stringUtil.EMPTY_STRING
        @glShaderVersionString = @stringUtil.EMPTY_STRING
        @shaderVersion = 0
        @glRenderer = @stringUtil.EMPTY_STRING
        @glVendor = @stringUtil.EMPTY_STRING
        @glExtensions = @stringUtil.EMPTY_STRING
        @possiblyAccelerated = false unless instance_variable_defined?(:@possiblyAccelerated)
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
        @glExtensionDrawTexture = false unless instance_variable_defined?(:@glExtensionDrawTexture)
        @glThreedDrawTexture = false unless instance_variable_defined?(:@glThreedDrawTexture)
        @glExtensionGPUShader4 = false unless instance_variable_defined?(:@glExtensionGPUShader4)
        @glExtensionGPUShader100 = false unless instance_variable_defined?(:@glExtensionGPUShader100)
        @vertexBufferObjectSupport = false unless instance_variable_defined?(:@vertexBufferObjectSupport)
    end
    

    def self.getInstance()
        return OpenGLCapabilities.instance
    end
    

    def initialize()
        jfields_org_allbinary_graphics_opengles_OpenGLCapabilities
    end
    

    def isInitialized()
        return @initialized
    end
    

    def requireInitialization()
    end
    

    def initCapabilities(gl)
        _METHOD_NAME = "initGLCapabilities"
        begin
            features = ::Org::Allbinary::Game::Configuration::Feature::Features.getInstance()
            openGLFeatureFactory = OpenGLFeatureFactory.getInstance()
            openGLImageSpecificFactory = ::Org::Allbinary::Image::Opengles::OpenGLImageSpecificFactory.getInstance()
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
            @glVersionString = gl.glGetString(::Javax::Microedition::Khronos::Opengles::GL10::GL_VERSION)
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
                    @shaderVersion = Integer(@glShaderVersionString.gsub(::Org::Allbinary::StringPackage::CommonSeps.getInstance().PERIOD, ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING))
                end
            rescue StandardError => e
                commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
                @logUtil.put(commonStrings.EXCEPTION, self, _METHOD_NAME, e)
            end
            @glRenderer = gl.glGetString(::Javax::Microedition::Khronos::Opengles::GL10::GL_RENDERER)
            @glVendor = gl.glGetString(::Javax::Microedition::Khronos::Opengles::GL10::GL_VENDOR)
            @glExtensions = gl.glGetString(::Javax::Microedition::Khronos::Opengles::GL10::GL_EXTENSIONS)
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
            if gl.is_a?(::Javax::Microedition::Khronos::Opengles::GL11)
                @glInstanceVersion = @VERSION_1_1
            elsif gl.is_a?(::Javax::Microedition::Khronos::Opengles::GL10)
                @glInstanceVersion = @VERSION_1_0
            end
            if @glVendor == nil
                @glVendor = @stringUtil.EMPTY_STRING
            end
            if @glExtensions == nil
                @glExtensions = @stringUtil.EMPTY_STRING
            end
            if @possiblyAccelerated
                ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("VBO:?").appendboolean((@glInstanceVersion == @VERSION_1_1)).append("||").appendboolean(self.isExtension(openGLFeatureFactory.OPENGL_VERTEX_BUFFER_OBJECT)).to_s, self, _METHOD_NAME)
                if (@glInstanceVersion == @VERSION_1_1 || self.isExtension(openGLFeatureFactory.OPENGL_VERTEX_BUFFER_OBJECT))
                    if ::Org::Allbinary::AndroidUtil.isAndroid()
                        ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put("VBO implementation was detected, but disabled by default for Android", self, _METHOD_NAME)
                    else
                        ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put("VBO implementation was detected, but disabled for now", self, _METHOD_NAME)
                    end
                end
            end
            stringUtil = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance()
            if features.isDefault(openGLFeatureFactory.OPENGL_AUTO_SELECT)
                if @vertexBufferObjectSupport
                    openGLImageSpecificFactory.setImageFactory(::Org::Allbinary::Image::Opengles::OpenGLESGL11VBOImageFactory.new())
                else
                    stringBuffer.append("OpenGL is on but ")
                    stringBuffer.append(stringUtil.toString(openGLFeatureFactory.OPENGL_DRAW_TEXTURE))
                    stringBuffer.append(" was not available")
                    ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put(stringBuffer.to_s, self, _METHOD_NAME)
                    openGLImageSpecificFactory.setImageFactory(::Org::Allbinary::Image::Opengles::OpenGLESGL10ImageFactory.new())
                end
            else
                stringBuffer.append(stringUtil.toString(openGLFeatureFactory.OPENGL_AUTO_SELECT))
                stringBuffer.append(" is not on")
                ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put(stringBuffer.to_s, self, _METHOD_NAME)
                openGLImageSpecificFactory.setImageFactory(::Org::Allbinary::Image::Opengles::OpenGLESGL10ImageFactory.new())
            end
            maxTextureSizeArray = (Array.new(1, 0)).tap { |java_array| java_array.instance_variable_set(:@java_component, :I) }
            gl.glGetIntegerv(::Javax::Microedition::Khronos::Opengles::GL10::GL_MAX_TEXTURE_SIZE, maxTextureSizeArray, 0)
            @maxTextureSize = maxTextureSizeArray[0]
            @initialized = true
        rescue StandardError => e
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
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
        commonSeps = ::Org::Allbinary::StringPackage::CommonSeps.getInstance()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
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
            tokenizer = ::Org::Allbinary::Logic::StringPackage::Tokens::Tokenizer.new(commonSeps.SPACE)
            list = tokenizer.getTokensFromString(@glExtensions, ::Org::Allbinary::Util::BasicArrayListD.new())
            size = list.size()
            (0...size).each do |index|
                stringBuffer.append(commonSeps.NEW_LINE)
                stringBuffer.append(@stringUtil.toString(list.objectArray[index]))
            end
        rescue StandardError => e
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.putOE(commonStrings.EXCEPTION, self, commonStrings.TOSTRING, e)
        end
        return stringBuffer.to_s
    end
    alias_method :to_s, :toString

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

module ::Javax; module Microedition; module Khronos; module Opengles; autoload :GL10, "javax/microedition/khronos/opengles/GL10" unless const_defined?(:GL10, false); end; end; end; end
module ::Javax; module Microedition; module Khronos; module Opengles; autoload :GL11, "javax/microedition/khronos/opengles/GL11" unless const_defined?(:GL11, false); end; end; end; end
module ::Org; module Allbinary; autoload :AndroidUtil, "org/allbinary/AndroidUtil" unless const_defined?(:AndroidUtil, false); end; end
module ::Org; module Allbinary; module Image; module Opengles; autoload :OpenGLESGL10ImageFactory, "org/allbinary/image/opengles/OpenGLESGL10ImageFactory" unless const_defined?(:OpenGLESGL10ImageFactory, false); end; end; end; end
module ::Org; module Allbinary; module Image; module Opengles; autoload :OpenGLESGL11VBOImageFactory, "org/allbinary/image/opengles/OpenGLESGL11VBOImageFactory" unless const_defined?(:OpenGLESGL11VBOImageFactory, false); end; end; end; end
module ::Org; module Allbinary; module Image; module Opengles; autoload :OpenGLImageSpecificFactory, "org/allbinary/image/opengles/OpenGLImageSpecificFactory" unless const_defined?(:OpenGLImageSpecificFactory, false); end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; module Tokens; autoload :Tokenizer, "org/allbinary/logic/string/tokens/Tokenizer" unless const_defined?(:Tokenizer, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil" unless const_defined?(:PreLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :Features, "org/allbinary/game/configuration/feature/Features" unless const_defined?(:Features, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
autoload :OpenGLFeature, "org/allbinary/graphics/opengles/OpenGLFeature" unless const_defined?(:OpenGLFeature, false)
autoload :OpenGLFeatureFactory, "org/allbinary/graphics/opengles/OpenGLFeatureFactory" unless const_defined?(:OpenGLFeatureFactory, false)

begin
    OpenGLCapabilities.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

