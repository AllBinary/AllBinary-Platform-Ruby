# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.configuration


module ::Org; module Allbinary; module Configuration

class ApplicationConfiguration
    attr_accessor :logUtil, :fullscreen, :showTitleBar, :progressBarView

    def jfields_org_allbinary_configuration_ApplicationConfiguration
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @fullscreen = true
        @showTitleBar = false
        @progressBarView = false
    end
    

    def self.getInstance()
        if @@instance == ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT
            @@instance = ApplicationConfiguration.new()
        end
        return @@instance
    end
    

    def initialize()
        jfields_org_allbinary_configuration_ApplicationConfiguration
        begin
            self.read()
        rescue StandardError => e
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.CONSTRUCTOR, e)
        end
    end
    

    # throws Exception
    def read()
        self.setFullscreen(true)
        self.setProgressBarView(false)
        self.setShowTitleBar(false)
        @logUtil.putF("Read Configuration: " + self.to_s, self, "read")
    end
    

    # throws Exception
    def write()
    end
    

    # throws Exception
    def update(gameFeature)
        if gameFeature == ::Org::Allbinary::Game::Configuration::Feature::MainFeatureFactory.getInstance().FULL_SCREEN
            features = ::Org::Allbinary::Game::Configuration::Feature::Features.getInstance()
            if features.isFeature(gameFeature)
                if !self.isFullscreen()
                    self.setFullscreen(true)
                    self.write()
                end
            else
                if self.isFullscreen()
                    self.setFullscreen(false)
                    self.write()
                end
            end
        end
    end
    

    def setFullscreen(fullscreen)
        @fullscreen = fullscreen
    end
    

    def isFullscreen()
        return @fullscreen
    end
    

    def setShowTitleBar(showTitleBar)
        @showTitleBar = showTitleBar
    end
    

    def isShowTitleBar()
        return @showTitleBar
    end
    

    def setProgressBarView(progressBarView)
        @progressBarView = progressBarView
    end
    

    def isProgressBarView()
        return @progressBarView
    end
    

    def toString()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append("isFullscreen: ")
        stringBuffer.appendboolean(self.isFullscreen())
        stringBuffer.append(" isProgressBarView: ")
        stringBuffer.appendboolean(self.isProgressBarView())
        stringBuffer.append(" isShowTitleBar: ")
        stringBuffer.appendboolean(self.isShowTitleBar())
        return stringBuffer.to_s
    end
    alias_method :to_s, :toString

    def self.instance()
        ApplicationConfiguration.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        ApplicationConfiguration.java_static_fields unless @java_static_fields_started
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
        if name == "ApplicationConfiguration"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :Feature, "org/allbinary/game/configuration/feature/Feature" unless const_defined?(:Feature, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :Features, "org/allbinary/game/configuration/feature/Features" unless const_defined?(:Features, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :MainFeatureFactory, "org/allbinary/game/configuration/feature/MainFeatureFactory" unless const_defined?(:MainFeatureFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end

begin
    ApplicationConfiguration.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end

