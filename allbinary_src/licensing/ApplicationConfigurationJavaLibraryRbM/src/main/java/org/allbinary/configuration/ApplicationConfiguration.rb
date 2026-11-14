# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.configuration


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

autoload :Closeable, "java/io/Closeable"
autoload :InputStream, "java/io/InputStream"
autoload :OutputStream, "java/io/OutputStream"
autoload :Feature, "org/allbinary/game/configuration/feature/Feature"
autoload :Features, "org/allbinary/game/configuration/feature/Features"
autoload :MainFeatureFactory, "org/allbinary/game/configuration/feature/MainFeatureFactory"
autoload :NullUtil, "org/allbinary/logic/NullUtil"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :AbDataInputStream, "org/allbinary/logic/io/AbDataInputStream"
autoload :AbDataOutputStream, "org/allbinary/logic/io/AbDataOutputStream"
autoload :FileStreamFactory, "org/allbinary/logic/io/FileStreamFactory"
autoload :NullCloseable, "org/allbinary/logic/io/NullCloseable"
autoload :StreamUtil, "org/allbinary/logic/io/StreamUtil"
autoload :FileFactory, "org/allbinary/logic/io/file/FileFactory"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :StringUtil, "org/allbinary/logic/string/StringUtil"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"

begin
    ApplicationConfiguration.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

