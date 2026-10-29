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
# package org.allbinary.logic.io.file

require "java/lang/Object"
# require "java/io/InputStream"
# require "java/io/OutputStream"

#data/init/views/TestStore/template/type/genericTemplateObjectConfig.xml
class FileUtil
    attr_accessor :logUtil, :directory, :logConfigTypeFactory, :commonStrings, :streamUtil, :WRITE_LABEL, :DATA_LABEL, :WRITE_METHOD

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @directory = Directory.getInstance()
        @logConfigTypeFactory = LogConfigTypeFactory.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @streamUtil = StreamUtil.getInstance()
        @WRITE_LABEL = "Write file: "
        @DATA_LABEL = " data: "
        @WRITE_METHOD = "write"
    end
    

    def self.getInstance()
        return FileUtil.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    # throws Exception
    def write(inputStream, file)
        dataOutputStream = DataOutputStreamFactory.getInstance().getInstanceForAbFile(file)
        self.write(inputStream, dataOutputStream)
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def write(inputStream, dataOutputStream)
        begin
            dataOutputStream = StreamUtil.getInstance().get(inputStream, dataOutputStream, Array.new(16384, 0))
            dataOutputStream.flush()
        ensure
            StreamUtil.getInstance().close(dataOutputStream)
        end
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def write(inputStream, dataOutputStream, buffer)
        begin
            dataOutputStream = StreamUtil.getInstance().get(inputStream, dataOutputStream, buffer)
            dataOutputStream.flush()
        ensure
            StreamUtil.getInstance().close(dataOutputStream)
        end
    end
    

    # throws Exception
    def copy(dataInputStream, dataOutputStream)
        begin
            dataOutputStream = StreamUtil.getInstance().get(dataInputStream, dataOutputStream, Array.new(16384, 0))
            dataOutputStream.flush()
        ensure
            StreamUtil.getInstance().close(dataOutputStream)
            StreamUtil.getInstance().close(dataInputStream)
        end
    end
    

    # throws Exception
    def fixPath(file, path, realPath, cloud)
        beginIndex = file.getPath().indexOf(cloud) + cloud.length
        endIndex = file.getPath().indexOf(file.getName())
        fixedPathString = (realPath.toFileSystemString()).to_s + file.getPath().substring(beginIndex, endIndex)
        fixedPath = AbPath.new(fixedPathString, StringUtil.getInstance().EMPTY_STRING)
        @directory.create(fixedPath)
        string = fixedPath.toFileSystemString()
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(@logConfigTypeFactory.FILE)
            @logUtil.putF(string, self, "fixPath")
        end
        outPath = AbPath.new(string, file.getName())
        return outPath
    end
    

    # throws Exception
    def copyToCloud(file, path, realPath, cloud)
        self.copyToCloud(file, path, realPath, cloud, false, false)
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def copyToCloud(file, path, realPath, cloud, overwriteNewer, overwriteAll)
        begin
            outPath = self.fixPath(file, path, realPath, cloud)
            outFile = AbFile.createAbFileFromAbPath(outPath)
            if !self.copyPrepare(file, outFile, overwriteNewer, overwriteAll)
                return
            else
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(@logConfigTypeFactory.FILE)
                    stringBuffer = StringMaker.new()
                    stringBuffer.append("Out File: ")
                    stringBuffer.append(outFile.getPath())
                    stringBuffer.append(" In File: ")
                    stringBuffer.append(file.getPath())
                    stringBuffer.append(" to cloud.")
                    @logUtil.putF(stringBuffer.to_s, FileUtil.getInstance(), "copyToCloud")
                end
            end
            dataOutputStream = DataOutputStreamFactory.getInstance().getInstanceForAbFile(outFile)
            fileInputStream = AbFileLocalInputStream.new(file)
            self.copy(fileInputStream, dataOutputStream)
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(@logConfigTypeFactory.FILEERROR)
                stringBuffer = StringMaker.new()
                stringBuffer.append("Error Copying File File: ")
                stringBuffer.append(file.to_s)
                stringBuffer.append(" to cloud.")
                @logUtil.put(stringBuffer.to_s, FileUtil.getInstance(), "copyToCloud", e)
            end
            raise e
        end
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def copyToCloud(file, outFile)
        self.copyToCloud(file, outFile, false, false)
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def copyToCloud(file, outFile, overwriteNewer, overwriteAll)
        begin
            stringBuffer = StringMaker.new()
            if !self.copyPrepare(file, outFile, overwriteNewer, overwriteAll)
                return
            else
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(@logConfigTypeFactory.FILE)
                    stringBuffer.delete(0, stringBuffer.length())
                    stringBuffer.append("Out File: ")
                    stringBuffer.append(outFile.getPath())
                    stringBuffer.append(" In File: ")
                    stringBuffer.append(file.getPath())
                    stringBuffer.append(" to cloud.")
                    @logUtil.putF(stringBuffer.to_s, FileUtil.getInstance(), "copyToCloud")
                end
            end
            dataOutputStream = DataOutputStreamFactory.getInstance().getInstanceForAbFile(outFile)
            fileInputStream = AbFileLocalInputStream.new(file)
            self.copy(fileInputStream, dataOutputStream)
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(@logConfigTypeFactory.FILEERROR)
                stringBuffer = StringMaker.new()
                stringBuffer.append("Error Copying File File: ")
                stringBuffer.append(file.to_s)
                stringBuffer.append(" to cloud.")
                @logUtil.put(stringBuffer.to_s, FileUtil.getInstance(), "copyToCloud", e)
            end
            raise e
        end
    end
    

    # throws Exception
    def copyPrepare(fromFile, toFile, overwriteNewer, overwriteAll)
        if toFile.exists()
            stringBuffer = StringMaker.new()
            if overwriteAll
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(@logConfigTypeFactory.FILE)
                    stringBuffer.delete(0, stringBuffer.length())
                    stringBuffer.append("Overwriting File: ")
                    stringBuffer.append(toFile.getPath())
                    @logUtil.putF(stringBuffer.to_s, FileUtil.getInstance(), "copyFile")
                end
                toFile.delete()
                toFile.createNewFile()
            elsif toFile.lastModified() < fromFile.lastModified() && overwriteNewer
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(@logConfigTypeFactory.FILE)
                    stringBuffer.delete(0, stringBuffer.length())
                    stringBuffer.append("Newer by: ")
                    stringBuffer.appendlong((fromFile.lastModified() - toFile.lastModified()).to_i)
                    stringBuffer.append("ms ")
                    stringBuffer.append("Copying File: ")
                    stringBuffer.append(toFile.getPath())
                    @logUtil.putF(stringBuffer.to_s, FileUtil.getInstance(), "copyFile")
                end
                toFile.delete()
                toFile.createNewFile()
            else
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(@logConfigTypeFactory.FILE)
                    stringBuffer.delete(0, stringBuffer.length())
                    stringBuffer.append("File Already Exists")
                    if overwriteNewer
                        stringBuffer.append(" And Is Not Older")
                    else
                        stringBuffer.append(" And Not A In Overwrite Mode")
                    end
                    stringBuffer.append(CommonLabels.getInstance().COLON_SEP)
                    stringBuffer.append(toFile.getPath())
                    @logUtil.putF(stringBuffer.to_s, FileUtil.getInstance(), "copyFile")
                end
                return false
            end
        else
            toFile.createNewFile()
        end
        return true
    end
    

    # throws Exception
    def copyFile(fromFile, toFile)
        self.copyFile(fromFile, toFile, false, false)
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def copyFile(fromFile, toFile, overwriteNewer, overwriteAll)
        begin
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(@logConfigTypeFactory.FILE)
                stringBuffer = StringMaker.new()
                stringBuffer.append("Copying ")
                stringBuffer.appendlong(fromFile.length())
                stringBuffer.append(" bytes from File: ")
                stringBuffer.append(fromFile.getPath())
                stringBuffer.append(" to: ")
                stringBuffer.append(toFile.getPath())
                @logUtil.putF(stringBuffer.to_s, FileUtil.getInstance(), "copyFile")
            end
            if !self.copyPrepare(fromFile, toFile, overwriteNewer, overwriteAll)
                return
            end
            dataOutputStream = DataOutputStreamFactory.getInstance().getInstanceForAbFile(toFile)
            fileInputStream = AbFileInputStream.new(fromFile)
            self.copy(fileInputStream, dataOutputStream)
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(@logConfigTypeFactory.FILEERROR)
                stringBuffer = StringMaker.new()
                stringBuffer.append("Error Copying File fromFile: ")
                stringBuffer.append(fromFile.to_s)
                stringBuffer.append(" to: ")
                stringBuffer.append(toFile.to_s)
                @logUtil.put(stringBuffer.to_s, FileUtil.getInstance(), "copyFile", e)
            end
            raise e
        end
    end
    

    def self.getNewDirectory(fromFile)
        newDirectory = fromFile.getPath()
        separatorChar = FilePathData.getInstance().PATH_START
        if AbIOSystem.getInstance().isType("com.vobject.appengine.java.io")
            separatorChar = AbPathData.getInstance().SEPARATOR
        end
        lastIndex = (newDirectory.rindex(separatorChar) || -1)
        if lastIndex >= newDirectory.length
            newDirectory = newDirectory[0...newDirectory.length - 1]
            lastIndex = (newDirectory.rindex(separatorChar) || -1)
        end
        return newDirectory[lastIndex...newDirectory.length]
    end
    

    # throws Exception
    def copyDirectoryPortion(fromDirectoryAbPath, toDirectoryAbPath, overwriteNewer, overwriteAll, current, total)
        file = AbFile.createAbFileFromAbPath(fromDirectoryAbPath)
        if !file.isDirectory()
            raise StandardError.new("Not a directory: " + (file.getPath()).to_s)
        end
        fileList = @directory.search(file, true)
        size = fileList.size()
        stringBuffer = StringMaker.new()
        stringBuffer.append("Searched: ")
        stringBuffer.append(file.getPath())
        stringBuffer.append(" Total: ")
        stringBuffer.appendint(size)
        portion = size / total + 1
        start = portion * current
        end_ = start + portion
        if end_ > size
            end_ = size
        end
        stringBuffer.append(" Section: ")
        stringBuffer.appendint(start)
        stringBuffer.append(" - ")
        stringBuffer.appendint(end_)
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(@logConfigTypeFactory.FILE)
            @logUtil.putF(stringBuffer.to_s, FileUtil.getInstance(), "copySomeFilesToDirectory()")
        end
        nextFile = nil
        (start...end_).each do |index|
            nextFile = fileList.get(index)
            if nextFile.isDirectory()
            else
                path = AbPath.new(nextFile.getPath(), StringUtil.getInstance().EMPTY_STRING).getPath()
                beginIndex = fromDirectoryAbPath.getPath().length()
                if path.indexOf(URLGLOBALS.getWebappPath()) < 0
                    beginIndex -= AbPath.new(URLGLOBALS.getWebappPath(), StringUtil.getInstance().EMPTY_STRING).getPath().length()
                end
                newPath = (toDirectoryAbPath.toFileSystemString()).to_s + path.substring(beginIndex)
                toFile = AbFile.createAbFileFromAbPath(AbPath.new(newPath, StringUtil.getInstance().EMPTY_STRING))
                self.copyFile(nextFile, toFile, overwriteNewer, overwriteAll)
            end
        end
    end
    

    # throws Exception
    def copyDirectory(fromFile, to)
        begin
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(@logConfigTypeFactory.FILE)
                stringBuffer = StringMaker.new()
                stringBuffer.append("Copying Directory from: ")
                stringBuffer.append(fromFile.getPath())
                stringBuffer.append(" to: ")
                stringBuffer.append(to.getPath())
                @logUtil.putF(stringBuffer.to_s, FileUtil.getInstance(), "copyDirectory")
            end
            newDirectory = FileUtil.getNewDirectory(fromFile)
            newDirectoryAbPath = AbPath.new((to.getPath() + AbPathData.getInstance().SEPARATOR).to_s + newDirectory, StringUtil.getInstance().EMPTY_STRING)
            if !@directory.create(newDirectoryAbPath)
                raise StandardError.new("Failed to create directory: " + (newDirectoryAbPath).to_s)
            end
            fileArray = FileWrapperUtil.wrapFiles(fromFile.listFiles())
            size = fileArray.length
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(@logConfigTypeFactory.FILE)
                stringBuffer = StringMaker.new()
                stringBuffer.append("Copying ")
                stringBuffer.appendint(size)
                stringBuffer.append(" files from: ")
                stringBuffer.append(fromFile.getPath())
                stringBuffer.append(" to: ")
                stringBuffer.append(to.getPath())
                @logUtil.putF(stringBuffer.to_s, FileUtil.getInstance(), "copyDirectory")
            end
            file = nil
            (0...size).each do |index|
                file = fileArray[index]
                if file.isFile()
                    self.copyFile(file, AbFile.createAbFilePathAndName(newDirectoryAbPath.to_s, file.getName()))
                elsif file.isDirectory()
                    self.copyDirectory(file, AbFile.createAbFileFromAbPath(newDirectoryAbPath))
                else
                    raise StandardError.new("File Copy Error")
                end
            end
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(@logConfigTypeFactory.FILEERROR)
                stringBuffer = StringMaker.new()
                stringBuffer.append("Error Copying Directory fromFile: ")
                stringBuffer.append(fromFile.to_s)
                stringBuffer.append(" to: ")
                stringBuffer.append(to.to_s)
                @logUtil.put(stringBuffer.to_s, FileUtil.getInstance(), "copyDirectory", e)
            end
            raise e
        end
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def copy(fromAbPath, to)
        java_monitor.synchronize do
        _COPY = "copy"
        begin
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(@logConfigTypeFactory.FILE)
                stringBuffer = StringMaker.new()
                stringBuffer.append("Copying AbPaths from: ")
                stringBuffer.append(fromAbPath.to_s)
                stringBuffer.append(" to: ")
                stringBuffer.append(to.to_s)
                @logUtil.putF(stringBuffer.to_s, FileUtil.getInstance(), _COPY)
            end
            if fromAbPath == nil
                raise StandardError.new("Cannot Copy From A Null Location")
            end
            if to == nil
                raise StandardError.new("Cannot Copy To A Null Location")
            end
            fromLocationFile = AbFile.createAbFileFromAbPath(fromAbPath)
            toLocationFile = AbFile.createAbFileFromAbPath(to)
            if fromLocationFile.isFile()
                if toLocationFile.isDirectory()
                    file = AbFile.createAbFileWithChild(toLocationFile, fromLocationFile.getName())
                    self.copyFile(fromLocationFile, file)
                    if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(@logConfigTypeFactory.FILE)
                        stringBuffer = StringMaker.new()
                        stringBuffer.append("Copied file=")
                        stringBuffer.append(fromLocationFile.getName())
                        stringBuffer.append(" from: ")
                        stringBuffer.append(fromLocationFile.getPath())
                        stringBuffer.append(" to: ")
                        stringBuffer.append(toLocationFile.getPath())
                        @logUtil.putF(stringBuffer.to_s, FileUtil.getInstance(), _COPY)
                    end
                else
                    self.copyFile(fromLocationFile, toLocationFile)
                    if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(@logConfigTypeFactory.FILE)
                        stringBuffer = StringMaker.new()
                        stringBuffer.append("Copied file with new name ")
                        stringBuffer.append(" from: ")
                        stringBuffer.append(fromLocationFile.getPath())
                        stringBuffer.append(" to: ")
                        stringBuffer.append(toLocationFile.getPath())
                        @logUtil.putF(stringBuffer.to_s, FileUtil.getInstance(), _COPY)
                    end
                end
            elsif fromLocationFile.isDirectory() && toLocationFile.isDirectory()
                if fromAbPath.toFileSystemString().charAt(fromAbPath.toFileSystemString().length() - 1) == java.io.File.separatorChar
                    if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(@logConfigTypeFactory.FILE)
                        @logUtil.putF("Copying subdirectories", FileUtil.getInstance(), _COPY)
                    end
                    fileArray = FileWrapperUtil.wrapFiles(fromLocationFile.listFiles())
                    (0...fileArray.length).each do |index|
                        file = fileArray[index]
                        if file.isFile()
                            aFile = AbFile.createAbFileWithChild(toLocationFile, file.getName())
                            self.copyFile(file, aFile)
                        elsif file.isDirectory()
                            self.copyDirectory(file, toLocationFile)
                        else
                            raise StandardError.new("File Copy Error")
                        end
                    end
                    if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(@logConfigTypeFactory.FILE)
                        @logUtil.putF("Copied subdirectories", FileUtil.getInstance(), _COPY)
                    end
                else
                    if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(@logConfigTypeFactory.FILE)
                        @logUtil.putF("Copyinhg directory", FileUtil.getInstance(), _COPY)
                    end
                    self.copyDirectory(fromLocationFile, toLocationFile)
                    if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(@logConfigTypeFactory.FILE)
                        @logUtil.putF("Copied directory", FileUtil.getInstance(), _COPY)
                    end
                end
            end
            return true
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(@logConfigTypeFactory.FILEERROR)
                stringBuffer = StringMaker.new()
                stringBuffer.append("Error Copying fromAbPath: ")
                stringBuffer.append(fromAbPath.to_s)
                stringBuffer.append(" to: ")
                stringBuffer.append(to.to_s)
                @logUtil.put(stringBuffer.to_s, FileUtil.getInstance(), _COPY, e)
            end
            raise e
        end
        end
    end
    

    def shouldSkip(file, skipFiles)
        size = skipFiles.length
        skipFile = nil
        (0...size).each do |index|
            skipFile = skipFiles[index]
            if file.getPath().compareTo(skipFile) == 0
                return true
            end
        end
        return false
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def write(filePath, string)
        dataOutputStream = nil
        begin
            PreLogUtil.put(StringMaker.new().append(@WRITE_LABEL).append(filePath).append(@DATA_LABEL).append(string).to_s, self, @WRITE_METHOD)
            fileInputStreamFactory = FileStreamFactory.getInstance()
            fileOutputStream = fileInputStreamFactory.getFileOutputStreamInstance(StringUtil.getInstance().EMPTY_STRING, filePath)
            dataOutputStream = AbDataOutputStream.new(fileOutputStream)
            dataOutputStream.write(string.bytes, 0, string.length)
            dataOutputStream.flush()
        ensure
            StreamUtil.getInstance().close(dataOutputStream)
        end
    end
    

    def loadFileAsList(file, max, byteArray1)
        return FileUtil2.getInstance().loadFileAsList(file, max, byteArray1)
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/globals/URLGLOBALS"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/communication/log/PreLogUtil"
require "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory"
require "org/allbinary/logic/io/AbDataOutputStream"
require "org/allbinary/logic/io/AbFileInputStream"
require "org/allbinary/logic/io/AbFileLocalInputStream"
require "org/allbinary/logic/io/AbIOSystem"
require "org/allbinary/logic/io/DataOutputStreamFactory"
require "org/allbinary/logic/io/FileStreamFactory"
require "org/allbinary/logic/io/StreamUtil"
require "org/allbinary/logic/io/file/directory/Directory"
require "org/allbinary/logic/io/path/AbPath"
require "org/allbinary/logic/io/path/AbPathData"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/string/CommonLabels"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/logic/io/file/AbFile"
require "org/allbinary/logic/io/file/FilePathData"
require "org/allbinary/logic/io/file/FileUtil2"
require "org/allbinary/logic/io/file/FileWrapperUtil"

class FileUtil
    @@instance = FileUtil.new()
end

