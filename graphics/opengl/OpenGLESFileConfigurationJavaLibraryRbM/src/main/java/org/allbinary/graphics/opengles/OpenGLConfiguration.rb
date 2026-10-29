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

# require "java/io/DataInputStream"
# require "java/io/InputStream"
# require "java/io/OutputStream"

class OpenGLConfiguration
    attr_accessor :logUtil, :FILE, :commonStrings, :tsUtil, :opengl, :type, :imageColor, :color, :versionSelector

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @FILE = "OpenGLConfiguration.dat"
        @commonStrings = CommonStrings.getInstance()
        @tsUtil = TsUtil.getInstance()
        @opengl = false
        @type = OpenGLFeatureFactory.getInstance().OPENGL_AS_GAME_THREAD
        @imageColor = OpenGLFeatureFactory.getInstance().IMAGE_COLOR_DEPTH_4444
        @color = OpenGLFeatureFactory.getInstance().IMAGE_COLOR_DEPTH_4444
        @versionSelector = OpenGLFeatureFactory.getInstance().OPENGL_AUTO_SELECT
    end
    

    def self.getInstance()
        if OpenGLConfiguration.instance == NullUtil.getInstance().NULL_OBJECT
            OpenGLConfiguration.instance = OpenGLConfiguration.new()
        end
        return OpenGLConfiguration.instance
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
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.CONSTRUCTOR, e)
        end
    end
    

    # throws Exception
    def read()
        openGLFeatureFactory = OpenGLFeatureFactory.getInstance()
        fileInputStreamFactory = FileStreamFactory.getInstance()
        fileInputStream = fileInputStreamFactory.getFileInputStreamInstance(StringUtil.getInstance().EMPTY_STRING, @FILE)
        dataInputStream = DataInputStream.new(fileInputStream)
        openGLValue = dataInputStream.readInt()
        if openGLValue == 0
            self.setOpenGL(false)
        elsif openGLValue == 1
            self.setOpenGL(true)
        else
            raise StandardError.new("Invalid OpenGL Setting")
        end
        version = dataInputStream.readUTF()
        if @tsUtil.compareTo(version, openGLFeatureFactory.OPENGL_AUTO_SELECT.getName()) == 0
            self.setVersionSelector(openGLFeatureFactory.OPENGL_AUTO_SELECT)
        elsif @tsUtil.compareTo(version, openGLFeatureFactory.OPENGL_MINIMUM.getName()) == 0
            self.setVersionSelector(openGLFeatureFactory.OPENGL_MINIMUM)
        else
            raise StandardError.new("OpenGLConfiguration: Error reading version selector: " + version)
        end
        type = dataInputStream.readUTF()
        if @tsUtil.compareTo(type, openGLFeatureFactory.OPENGL_AS_GAME_THREAD.getName()) == 0
            self.setType(openGLFeatureFactory.OPENGL_AS_GAME_THREAD)
        elsif @tsUtil.compareTo(type, openGLFeatureFactory.OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS.getName()) == 0
            self.setType(openGLFeatureFactory.OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS)
        else
            raise StandardError.new("OpenGLConfiguration: Error reading image color")
        end
        imageColor = dataInputStream.readUTF()
        if @tsUtil.compareTo(imageColor, openGLFeatureFactory.IMAGE_COLOR_DEPTH_4444.getName()) == 0
            self.setImageColor(openGLFeatureFactory.IMAGE_COLOR_DEPTH_4444)
        elsif @tsUtil.compareTo(imageColor, openGLFeatureFactory.IMAGE_COLOR_DEPTH_4444.getName()) == 0
            self.setImageColor(openGLFeatureFactory.IMAGE_COLOR_DEPTH_4444)
        elsif @tsUtil.compareTo(imageColor, openGLFeatureFactory.IMAGE_COLOR_DEPTH_4444.getName()) == 0
            self.setImageColor(openGLFeatureFactory.IMAGE_COLOR_DEPTH_4444)
        else
            raise StandardError.new("OpenGLConfiguration: Error reading image color: " + (imageColor).to_s)
        end
        color = dataInputStream.readUTF()
        if @tsUtil.compareTo(color, openGLFeatureFactory.OPENGL_COLOR_DEPTH_4444.getName()) == 0
            self.setColor(openGLFeatureFactory.OPENGL_COLOR_DEPTH_4444)
        elsif @tsUtil.compareTo(color, openGLFeatureFactory.OPENGL_COLOR_DEPTH_565.getName()) == 0
            self.setColor(openGLFeatureFactory.OPENGL_COLOR_DEPTH_565)
        elsif @tsUtil.compareTo(color, openGLFeatureFactory.OPENGL_COLOR_DEPTH_8888.getName()) == 0
            self.setColor(openGLFeatureFactory.OPENGL_COLOR_DEPTH_8888)
        else
            raise StandardError.new("OpenGLConfiguration: Error reading color: " + (color).to_s)
        end
        PreLogUtil.put("Read Configuration: " + self.to_s, self, "read")
    end
    

    # throws Exception
    def write()
        closeable = NullCloseable::NULL_CLOSEABLE
        begin
            PreLogUtil.put("Write Configuration: " + self.to_s, self, "write")
            fileInputStreamFactory = FileStreamFactory.getInstance()
            fileOutputStream = fileInputStreamFactory.getFileOutputStreamInstance(StringUtil.getInstance().EMPTY_STRING, @FILE)
            dataOutputStream = AbDataOutputStream.new(fileOutputStream)
            closeable = dataOutputStream
            if self.isOpenGL()
                dataOutputStream.writeInt(1)
            else
                dataOutputStream.writeInt(0)
            end
            dataOutputStream.writeUTF(self.getVersionSelector().getName())
            dataOutputStream.writeUTF(self.getType().getName())
            dataOutputStream.writeUTF(self.getImageColor().getName())
            dataOutputStream.writeUTF(self.getColor().getName())
            dataOutputStream.flush()
        rescue StandardError => e
            raise e
        ensure
            StreamUtil.getInstance().close(closeable)
        end
    end
    

    # throws Exception
    def init()
        features = Features.getInstance()
        if ChangedGameFeatureListener.getInstance().isChangedFeature(MainFeatureFactory.getInstance().STATIC)
            openGLFeatureFactory = OpenGLFeatureFactory.getInstance()
            if self.isOpenGL()
                if features.isFeature(openGLFeatureFactory.OPENGL_2D) || features.isFeature(openGLFeatureFactory.OPENGL_3D) || features.isFeature(openGLFeatureFactory.OPENGL_2D_AND_3D)
                    if !features.isDefault(OpenGLFeatureFactory.getInstance().OPENGL)
                        @logUtil.putF("Turning on OpenGL as Default", self, @commonStrings.INIT)
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
                    @logUtil.putF("OpenGL is enabled, but this game does not support OpenGL (Probably from installing with the same package name from a game that had OpenGL available)", self, @commonStrings.INIT)
                end
            else
                @logUtil.putF("OpenGL is Off", self, @commonStrings.INIT)
            end
        else
            if self.isOpenGL() && !features.isDefault(OpenGLFeatureFactory.getInstance().OPENGL)
                PreLogUtil.put("OpenGL is set but not Enabled since statics where not cleared (Reboot or Complete exit is Required)", self, @commonStrings.INIT)
            end
        end
        PreLogUtil.put(self.to_s, self, @commonStrings.INIT)
    end
    

    # throws Exception
    def update(gameFeature, colorLocked)
        features = Features.getInstance()
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
        if modified
            self.write()
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
        stringBuffer = StringMaker.new()
        stringUtil = StringUtil.getInstance()
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
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "java/io/Closeable"
require "org/allbinary/TsUtil"
require "org/allbinary/logic/io/AbDataOutputStream"
require "org/allbinary/logic/io/FileStreamFactory"
require "org/allbinary/logic/io/StreamUtil"
require "org/allbinary/logic/io/file/FileFactory"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/communication/log/PreLogUtil"
require "org/allbinary/game/configuration/event/ChangedGameFeatureListener"
require "org/allbinary/game/configuration/feature/Feature"
require "org/allbinary/game/configuration/feature/Features"
require "org/allbinary/game/configuration/feature/MainFeatureFactory"
require "org/allbinary/logic/NullUtil"
require "org/allbinary/logic/io/NullCloseable"
require "org/allbinary/graphics/opengles/OpenGLFeature"
require "org/allbinary/graphics/opengles/OpenGLFeatureFactory"

class OpenGLConfiguration
    @@instance = NullUtil.getInstance().NULL_OBJECT
end

