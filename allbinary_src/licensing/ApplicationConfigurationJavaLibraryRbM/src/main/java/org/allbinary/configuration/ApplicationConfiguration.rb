# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.configuration

# require "java/io/InputStream"
# require "java/io/OutputStream"

class ApplicationConfiguration
    attr_accessor :logUtil, :fullscreen, :showTitleBar, :progressBarView, :FILE

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @fullscreen = true
        @showTitleBar = false
        @progressBarView = false
        @FILE = "ReloadConfiguration.dat"
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
            if FileFactory.getInstance().isFile(@FILE)
                self.read()
            else
                self.write()
            end
        rescue StandardError => e
            commonStrings = CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.CONSTRUCTOR, e)
        end
    end
    

    # throws Exception
    def read()
        fileInputStreamFactory = FileStreamFactory.getInstance()
        fileInputStream = fileInputStreamFactory.getFileInputStreamInstance(StringUtil.getInstance().EMPTY_STRING, @FILE)
        dataInputStream = AbDataInputStream.new(fileInputStream)
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
        closeable = NullCloseable::NULL_CLOSEABLE
        begin
            @logUtil.putF("Write Configuration: " + self.to_s, self, "write")
            fileInputStreamFactory = FileStreamFactory.getInstance()
            fileOutputStream = fileInputStreamFactory.getFileOutputStreamInstance(StringUtil.getInstance().EMPTY_STRING, @FILE)
            dataOutputStream = AbDataOutputStream.new(fileOutputStream)
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
            StreamUtil.getInstance().close(closeable)
        end
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
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "java/io/Closeable"
require "org/allbinary/game/configuration/feature/Feature"
require "org/allbinary/game/configuration/feature/Features"
require "org/allbinary/game/configuration/feature/MainFeatureFactory"
require "org/allbinary/logic/NullUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/io/AbDataInputStream"
require "org/allbinary/logic/io/AbDataOutputStream"
require "org/allbinary/logic/io/FileStreamFactory"
require "org/allbinary/logic/io/NullCloseable"
require "org/allbinary/logic/io/StreamUtil"
require "org/allbinary/logic/io/file/FileFactory"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/string/CommonStrings"

class ApplicationConfiguration
    @@instance = NullUtil.getInstance().NULL_OBJECT
end

