# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.configuration


module ::Org; module Allbinary; module Configuration

class ApplicationConfiguration
    attr_accessor :logUtil, :fullscreen, :showTitleBar, :progressBarView, :FILE

    def jfields_org_allbinary_configuration_ApplicationConfiguration
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @fullscreen = true
        @showTitleBar = false
        @progressBarView = false
        @FILE = "ReloadConfiguration.dat"
    end
    

    def self.getInstance()
        if ApplicationConfiguration.instance == ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT
            ApplicationConfiguration.instance = ApplicationConfiguration.new()
        end
        return ApplicationConfiguration.instance
    end
    

    def initialize()
        jfields_org_allbinary_configuration_ApplicationConfiguration
        begin
            if ::Org::Allbinary::Logic::Io::FilePackage::FileFactory.getInstance().isFile(@FILE)
                self.read()
            else
                self.write()
            end
        rescue StandardError => e
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.CONSTRUCTOR, e)
        end
    end
    

    # throws Exception
    def read()
        fileInputStreamFactory = ::Org::Allbinary::Logic::Io::FileStreamFactory.getInstance()
        fileInputStream = fileInputStreamFactory.getFileInputStreamInstance(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING, @FILE)
        dataInputStream = ::Org::Allbinary::Logic::Io::AbDataInputStream.new(fileInputStream)
        fullScreen = dataInputStream.readInt()
        if fullScreen == 0
            self.setFullscreen(false)
        elsif fullScreen == 1
            self.setFullscreen(true)
        else
            raise StandardError.new("Invalid FullScreen ActivityConfiguration")
        end
        progressBarView = dataInputStream.readInt()
        if progressBarView == 0
            self.setProgressBarView(false)
        elsif progressBarView == 1
            self.setProgressBarView(true)
        else
            raise StandardError.new("Invalid ProgressBarView ActivityConfiguration")
        end
        showTitleBar = dataInputStream.readInt()
        if showTitleBar == 0
            self.setShowTitleBar(false)
        elsif showTitleBar == 1
            self.setShowTitleBar(true)
        else
            raise StandardError.new("Invalid ShowTitleBar ActivityConfiguration")
        end
        @logUtil.putF("Read Configuration: " + self.to_s, self, "read")
    end
    

    # throws Exception
    def write()
        closeable = ::Org::Allbinary::Logic::Io::NullCloseable::NULL_CLOSEABLE
        begin
            @logUtil.putF("Write Configuration: " + self.to_s, self, "write")
            fileInputStreamFactory = ::Org::Allbinary::Logic::Io::FileStreamFactory.getInstance()
            fileOutputStream = fileInputStreamFactory.getFileOutputStreamInstance(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING, @FILE)
            dataOutputStream = ::Org::Allbinary::Logic::Io::AbDataOutputStream.new(fileOutputStream)
            closeable = dataOutputStream
            if self.isFullscreen()
                dataOutputStream.writeInt(1)
            else
                dataOutputStream.writeInt(0)
            end
            if self.isProgressBarView()
                dataOutputStream.writeInt(1)
            else
                dataOutputStream.writeInt(0)
            end
            if self.isShowTitleBar()
                dataOutputStream.writeInt(1)
            else
                dataOutputStream.writeInt(0)
            end
            dataOutputStream.flush()
        rescue StandardError => e
            raise e
        ensure
            ::Org::Allbinary::Logic::Io::StreamUtil.getInstance().close(closeable)
        end
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

module ::Java; module Io; autoload :Closeable, "java/io/Closeable" unless const_defined?(:Closeable, false); end; end
module ::Java; module Io; autoload :InputStream, "java/io/InputStream" unless const_defined?(:InputStream, false); end; end
module ::Java; module Io; autoload :OutputStream, "java/io/OutputStream" unless const_defined?(:OutputStream, false); end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :Feature, "org/allbinary/game/configuration/feature/Feature" unless const_defined?(:Feature, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :Features, "org/allbinary/game/configuration/feature/Features" unless const_defined?(:Features, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :MainFeatureFactory, "org/allbinary/game/configuration/feature/MainFeatureFactory" unless const_defined?(:MainFeatureFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; autoload :AbDataInputStream, "org/allbinary/logic/io/AbDataInputStream" unless const_defined?(:AbDataInputStream, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; autoload :AbDataOutputStream, "org/allbinary/logic/io/AbDataOutputStream" unless const_defined?(:AbDataOutputStream, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; autoload :FileStreamFactory, "org/allbinary/logic/io/FileStreamFactory" unless const_defined?(:FileStreamFactory, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; autoload :NullCloseable, "org/allbinary/logic/io/NullCloseable" unless const_defined?(:NullCloseable, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; autoload :StreamUtil, "org/allbinary/logic/io/StreamUtil" unless const_defined?(:StreamUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :FileFactory, "org/allbinary/logic/io/file/FileFactory" unless const_defined?(:FileFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end

begin
    ApplicationConfiguration.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end

