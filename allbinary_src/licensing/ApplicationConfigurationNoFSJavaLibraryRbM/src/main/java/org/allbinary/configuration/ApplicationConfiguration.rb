# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.configuration


class ApplicationConfiguration
    attr_accessor :logUtil, :fullscreen, :showTitleBar, :progressBarView

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @fullscreen = true
        @showTitleBar = false
        @progressBarView = false
    end
    

    def self.getInstance()
        if ApplicationConfiguration.instance == NullUtil.getInstance().NULL_OBJECT
            ApplicationConfiguration.instance = ApplicationConfiguration.new()
        end
        return ApplicationConfiguration.instance
    end
    

    def initialize()
        initialize_fields
        begin
            self.read()
        rescue StandardError => e
            commonStrings = CommonStrings.getInstance()
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
        if gameFeature == MainFeatureFactory.getInstance().FULL_SCREEN
            features = Features.getInstance()
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
        stringBuffer = StringMaker.new()
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
            @@instance = NullUtil.getInstance().NULL_OBJECT
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

autoload :Feature, "org/allbinary/game/configuration/feature/Feature"
autoload :Features, "org/allbinary/game/configuration/feature/Features"
autoload :MainFeatureFactory, "org/allbinary/game/configuration/feature/MainFeatureFactory"
autoload :NullUtil, "org/allbinary/logic/NullUtil"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"

begin
    ApplicationConfiguration.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

