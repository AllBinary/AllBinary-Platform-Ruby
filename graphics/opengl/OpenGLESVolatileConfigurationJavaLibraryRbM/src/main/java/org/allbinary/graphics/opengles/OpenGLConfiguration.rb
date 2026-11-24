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


module ::Org; module Allbinary; module Graphics; module Opengles

class OpenGLConfiguration
    attr_accessor :logUtil, :commonStrings, :opengl, :type, :imageColor, :color, :versionSelector

    def jfields_org_allbinary_graphics_opengles_OpenGLConfiguration
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @opengl = false
        @type = OpenGLFeatureFactory.getInstance().OPENGL_AS_GAME_THREAD
        @imageColor = OpenGLFeatureFactory.getInstance().IMAGE_COLOR_DEPTH_4444
        @color = OpenGLFeatureFactory.getInstance().IMAGE_COLOR_DEPTH_4444
        @versionSelector = OpenGLFeatureFactory.getInstance().OPENGL_AUTO_SELECT
    end
    

    def self.getInstance()
        if OpenGLConfiguration.instance == ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT
            OpenGLConfiguration.instance = OpenGLConfiguration.new()
        end
        return OpenGLConfiguration.instance
    end
    

    def initialize()
        jfields_org_allbinary_graphics_opengles_OpenGLConfiguration
    end
    

    def write()
    end
    

    # throws Exception
    def init()
        features = ::Org::Allbinary::Game::Configuration::Feature::Features.getInstance()
        if ::Org::Allbinary::Game::Configuration::Event::ChangedGameFeatureListener.getInstance().isChangedFeature(::Org::Allbinary::Game::Configuration::Feature::MainFeatureFactory.getInstance().STATIC)
            if self.isOpenGL()
                if !features.isDefault(OpenGLFeatureFactory.getInstance().OPENGL)
                    @logUtil.putF("Turning on OpenGL", self, @commonStrings.INIT)
                    features.addDefault(OpenGLFeatureFactory.getInstance().OPENGL)
                    @logUtil.putF("Using OpenGL Type Feature: " + (self.getType()).to_s, self, @commonStrings.INIT)
                    features.addDefault(self.getType())
                    @logUtil.putF("Using OpenGL ImageColor Feature: " + (self.getImageColor()).to_s, self, @commonStrings.INIT)
                    features.addDefault(self.getImageColor())
                    @logUtil.putF("Using OpenGL Color Feature: " + (self.getColor()).to_s, self, @commonStrings.INIT)
                    features.addDefault(self.getColor())
                    @logUtil.putF("Using OpenGL Version Selector Feature: " + (self.getVersionSelector()).to_s, self, @commonStrings.INIT)
                    features.addDefault(self.getVersionSelector())
                end
            else
                @logUtil.putF("OpenGL is Off", self, @commonStrings.INIT)
            end
        else
            if self.isOpenGL() && !features.isDefault(OpenGLFeatureFactory.getInstance().OPENGL)
                ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put("OpenGL is set but not Enabled since Statics where not cleared (Reboot or Complete exit is Required)", self, @commonStrings.INIT)
            end
        end
        ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put(self.to_s, self, @commonStrings.INIT)
    end
    

    # throws Exception
    def update(gameFeature, colorLocked)
        features = ::Org::Allbinary::Game::Configuration::Feature::Features.getInstance()
        openGLFeatureFactory = OpenGLFeatureFactory.getInstance()
        modified = false
        if gameFeature == openGLFeatureFactory.OPENGL
            if features.isFeature(gameFeature)
                if !self.isOpenGL()
                    self.setOpenGL(true)
                    modified = true
                end
            else
                if self.isOpenGL()
                    self.setOpenGL(false)
                    modified = true
                end
            end
        end
        if gameFeature == openGLFeatureFactory.OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS || gameFeature == openGLFeatureFactory.OPENGL_AS_GAME_THREAD
            if features.isFeature(gameFeature)
                if gameFeature != self.getType()
                    self.setType(gameFeature)
                    modified = true
                end
            end
        end
        if gameFeature == openGLFeatureFactory.IMAGE_COLOR_DEPTH_4444 || gameFeature == openGLFeatureFactory.IMAGE_COLOR_DEPTH_565 || gameFeature == openGLFeatureFactory.IMAGE_COLOR_DEPTH_8888
            if features.isFeature(gameFeature)
                if self.getImageColor() != gameFeature
                    self.setImageColor(gameFeature)
                    if colorLocked
                        if gameFeature == openGLFeatureFactory.IMAGE_COLOR_DEPTH_4444
                            self.setColor(openGLFeatureFactory.OPENGL_COLOR_DEPTH_4444)
                        elsif gameFeature == openGLFeatureFactory.IMAGE_COLOR_DEPTH_565
                            self.setColor(openGLFeatureFactory.OPENGL_COLOR_DEPTH_565)
                        elsif gameFeature == openGLFeatureFactory.IMAGE_COLOR_DEPTH_8888
                            self.setColor(openGLFeatureFactory.OPENGL_COLOR_DEPTH_8888)
                        end
                    end
                    modified = true
                end
            end
        end
        if gameFeature == openGLFeatureFactory.OPENGL_COLOR_DEPTH_4444 || gameFeature == openGLFeatureFactory.OPENGL_COLOR_DEPTH_565 || gameFeature == openGLFeatureFactory.OPENGL_COLOR_DEPTH_8888
            if features.isFeature(gameFeature)
                if self.getColor() != gameFeature
                    self.setColor(gameFeature)
                    modified = true
                end
            end
        end
        if gameFeature == openGLFeatureFactory.OPENGL_AUTO_SELECT || gameFeature == openGLFeatureFactory.OPENGL_MINIMUM
            if features.isFeature(gameFeature)
                self.setVersionSelector(gameFeature)
            end
            modified = true
        end
    end
    

    def setOpenGL(opengl)
        @opengl = opengl
    end
    

    def isOpenGL()
        return @opengl
    end
    

    def setImageColor(imageColor)
        @imageColor = imageColor
    end
    

    def getImageColor()
        return @imageColor
    end
    

    def setColor(color)
        @color = color
    end
    

    def getColor()
        return @color
    end
    

    def setVersionSelector(versionSelector)
        @versionSelector = versionSelector
    end
    

    def getVersionSelector()
        return @versionSelector
    end
    

    def setType(type)
        @type = type
    end
    

    def getType()
        return @type
    end
    

    def toString()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringUtil = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance()
        stringBuffer.append(" isOpenGL: ")
        stringBuffer.appendboolean(self.isOpenGL())
        stringBuffer.append(" VersionSelector: ")
        stringBuffer.append(stringUtil.toString(self.getVersionSelector()))
        stringBuffer.append(" Type: ")
        stringBuffer.append(stringUtil.toString(self.getType()))
        stringBuffer.append(" Image Color: ")
        stringBuffer.append(stringUtil.toString(self.getImageColor()))
        stringBuffer.append(" Color: ")
        stringBuffer.append(stringUtil.toString(self.getColor()))
        return stringBuffer.to_s
    end
    alias_method :to_s, :toString

    def self.instance()
        OpenGLConfiguration.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        OpenGLConfiguration.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "OpenGLConfiguration"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil" unless const_defined?(:PreLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Event; autoload :ChangedGameFeatureListener, "org/allbinary/game/configuration/event/ChangedGameFeatureListener" unless const_defined?(:ChangedGameFeatureListener, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :Feature, "org/allbinary/game/configuration/feature/Feature" unless const_defined?(:Feature, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :Features, "org/allbinary/game/configuration/feature/Features" unless const_defined?(:Features, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :MainFeatureFactory, "org/allbinary/game/configuration/feature/MainFeatureFactory" unless const_defined?(:MainFeatureFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
autoload :OpenGLFeature, "org/allbinary/graphics/opengles/OpenGLFeature" unless const_defined?(:OpenGLFeature, false)
autoload :OpenGLFeatureFactory, "org/allbinary/graphics/opengles/OpenGLFeatureFactory" unless const_defined?(:OpenGLFeatureFactory, false)

begin
    OpenGLConfiguration.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

