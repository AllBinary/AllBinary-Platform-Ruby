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
require "java/lang/JavaClass"
# require "java/io/File"

module ::Org; module Allbinary; module Logic; module Io; module FilePackage

#data/init/views/TestStore/template/type/genericTemplateObjectConfig.xml
class FileUtil
    attr_accessor :logUtil, :directory, :logConfigTypeFactory, :commonStrings, :streamUtil, :WRITE_LABEL, :DATA_LABEL, :WRITE_METHOD

    def jfields_org_allbinary_logic_io_file_FileUtil
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @directory = ::Org::Allbinary::Logic::Io::FilePackage::Directory::Directory.getInstance()
        @logConfigTypeFactory = ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @streamUtil = ::Org::Allbinary::Logic::Io::StreamUtil.getInstance()
        @WRITE_LABEL = "Write file: "
        @DATA_LABEL = " data: "
        @WRITE_METHOD = "write"
    end
    

    def self.getInstance()
        return FileUtil.instance
    end
    

    def initialize()
        jfields_org_allbinary_logic_io_file_FileUtil
    end
    

    # throws Exception
    def write_j2_1(inputStream, file)
        dataOutputStream = ::Org::Allbinary::Logic::Io::DataOutputStreamFactory.getInstance().getInstanceForAbFile(file)
        self.write(inputStream, dataOutputStream)
    end
    

    # throws Exception
    def write_j2_2(inputStream, dataOutputStream)
        begin
            dataOutputStream = ::Org::Allbinary::Logic::Io::StreamUtil.getInstance().get(inputStream, dataOutputStream, (Array.new(16384, 0)).tap { |java_array| java_array.instance_variable_set(:@java_component, :B) })
            dataOutputStream.flush()
        ensure
            ::Org::Allbinary::Logic::Io::StreamUtil.getInstance().close(dataOutputStream)
        end
    end
    

    # throws Exception
    def write_j3(inputStream, dataOutputStream, buffer)
        begin
            dataOutputStream = ::Org::Allbinary::Logic::Io::StreamUtil.getInstance().get(inputStream, dataOutputStream, buffer)
            dataOutputStream.flush()
        ensure
            ::Org::Allbinary::Logic::Io::StreamUtil.getInstance().close(dataOutputStream)
        end
    end
    

    # throws Exception
    def copy_j2_1(dataInputStream, dataOutputStream)
        begin
            dataOutputStream = ::Org::Allbinary::Logic::Io::StreamUtil.getInstance().get(dataInputStream, dataOutputStream, (Array.new(16384, 0)).tap { |java_array| java_array.instance_variable_set(:@java_component, :B) })
            dataOutputStream.flush()
        ensure
            ::Org::Allbinary::Logic::Io::StreamUtil.getInstance().close(dataOutputStream)
            ::Org::Allbinary::Logic::Io::StreamUtil.getInstance().close(dataInputStream)
        end
    end
    

    # throws Exception
    def fixPath(file, path, realPath, cloud)
        beginIndex = file.getPath().indexOf(cloud) + cloud.length
        endIndex = file.getPath().indexOf(file.getName())
        fixedPathString = (realPath.toFileSystemString()).to_s + file.getPath().substring(beginIndex, endIndex)
        fixedPath = ::Org::Allbinary::Logic::Io::Path::AbPath.new(fixedPathString, ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING)
        @directory.create(fixedPath)
        string = fixedPath.toFileSystemString()
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(@logConfigTypeFactory.FILE)
            @logUtil.putF(string, self, "fixPath")
        end
        outPath = ::Org::Allbinary::Logic::Io::Path::AbPath.new(string, file.getName())
        return outPath
    end
    

    # throws Exception
    def copyToCloud_j4_1(file, path, realPath, cloud)
        self.copyToCloud(file, path, realPath, cloud, false, false)
    end
    

    # throws Exception
    def copyToCloud_j6(file, path, realPath, cloud, overwriteNewer, overwriteAll)
        begin
            outPath = self.fixPath(file, path, realPath, cloud)
            outFile = AbFile.createAbFileFromAbPath(outPath)
            if !self.copyPrepare(file, outFile, overwriteNewer, overwriteAll)
                return
            else
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(@logConfigTypeFactory.FILE)
                    stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
                    stringBuffer.append("Out File: ")
                    stringBuffer.append(outFile.getPath())
                    stringBuffer.append(" In File: ")
                    stringBuffer.append(file.getPath())
                    stringBuffer.append(" to cloud.")
                    @logUtil.putF(stringBuffer.to_s, FileUtil.getInstance(), "copyToCloud")
                end
            end
            dataOutputStream = ::Org::Allbinary::Logic::Io::DataOutputStreamFactory.getInstance().getInstanceForAbFile(outFile)
            fileInputStream = ::Org::Allbinary::Logic::Io::AbFileLocalInputStream.new(file)
            self.copy(fileInputStream, dataOutputStream)
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(@logConfigTypeFactory.FILEERROR)
                stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
                stringBuffer.append("Error Copying File File: ")
                stringBuffer.append(file.to_s)
                stringBuffer.append(" to cloud.")
                @logUtil.put(stringBuffer.to_s, FileUtil.getInstance(), "copyToCloud", e)
            end
            raise e
        end
    end
    

    # throws Exception
    def copyToCloud_j2(file, outFile)
        self.copyToCloud(file, outFile, false, false)
    end
    

    # throws Exception
    def copyToCloud_j4_2(file, outFile, overwriteNewer, overwriteAll)
        begin
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
            if !self.copyPrepare(file, outFile, overwriteNewer, overwriteAll)
                return
            else
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(@logConfigTypeFactory.FILE)
                    stringBuffer.delete(0, stringBuffer.length())
                    stringBuffer.append("Out File: ")
                    stringBuffer.append(outFile.getPath())
                    stringBuffer.append(" In File: ")
                    stringBuffer.append(file.getPath())
                    stringBuffer.append(" to cloud.")
                    @logUtil.putF(stringBuffer.to_s, FileUtil.getInstance(), "copyToCloud")
                end
            end
            dataOutputStream = ::Org::Allbinary::Logic::Io::DataOutputStreamFactory.getInstance().getInstanceForAbFile(outFile)
            fileInputStream = ::Org::Allbinary::Logic::Io::AbFileLocalInputStream.new(file)
            self.copy(fileInputStream, dataOutputStream)
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(@logConfigTypeFactory.FILEERROR)
                stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
                stringBuffer.append("Error Copying File File: ")
                stringBuffer.append(file.to_s)
                stringBuffer.append(" to cloud.")
                @logUtil.put(stringBuffer.to_s, FileUtil.getInstance(), "copyToCloud", e)
            end
            raise e
        end
    end

    def copyToCloud(*java_overload_args)
        return copyToCloud_j4(*java_overload_args) if java_overload_args.length == 4
        return copyToCloud_j6(*java_overload_args) if java_overload_args.length == 6
        return copyToCloud_j2(*java_overload_args) if java_overload_args.length == 2
        raise ArgumentError, "No method copyToCloud takes #{java_overload_args.length} arguments"
    end

    def copyToCloud_j4(*java_overload_args)
        return copyToCloud_j4_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(AbFile)) && (java_overload_args[1].nil? || java_overload_args[1].is_a?(::Org::Allbinary::Logic::Io::Path::AbPath)) && (java_overload_args[2].nil? || java_overload_args[2].is_a?(::Org::Allbinary::Logic::Io::Path::AbPath)) && (java_overload_args[3].nil? || java_overload_args[3].is_a?(::String))
        return copyToCloud_j4_2(*java_overload_args)
    end
    

    # throws Exception
    def copyPrepare(fromFile, toFile, overwriteNewer, overwriteAll)
        if toFile.exists()
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
            if overwriteAll
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(@logConfigTypeFactory.FILE)
                    stringBuffer.delete(0, stringBuffer.length())
                    stringBuffer.append("Overwriting File: ")
                    stringBuffer.append(toFile.getPath())
                    @logUtil.putF(stringBuffer.to_s, FileUtil.getInstance(), "copyFile")
                end
                toFile.delete()
                toFile.createNewFile()
            elsif toFile.lastModified() < fromFile.lastModified() && overwriteNewer
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(@logConfigTypeFactory.FILE)
                    stringBuffer.delete(0, stringBuffer.length())
                    stringBuffer.append("Newer by: ")
                    stringBuffer.appendlong(((fromFile.lastModified() - toFile.lastModified()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
                    stringBuffer.append("ms ")
                    stringBuffer.append("Copying File: ")
                    stringBuffer.append(toFile.getPath())
                    @logUtil.putF(stringBuffer.to_s, FileUtil.getInstance(), "copyFile")
                end
                toFile.delete()
                toFile.createNewFile()
            else
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(@logConfigTypeFactory.FILE)
                    stringBuffer.delete(0, stringBuffer.length())
                    stringBuffer.append("File Already Exists")
                    if overwriteNewer
                        stringBuffer.append(" And Is Not Older")
                    else
                        stringBuffer.append(" And Not A In Overwrite Mode")
                    end
                    stringBuffer.append(::Org::Allbinary::StringPackage::CommonLabels.getInstance().COLON_SEP)
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
    def copyFile_j2(fromFile, toFile)
        self.copyFile(fromFile, toFile, false, false)
    end
    

    # throws Exception
    def copyFile_j4(fromFile, toFile, overwriteNewer, overwriteAll)
        begin
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(@logConfigTypeFactory.FILE)
                stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
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
            dataOutputStream = ::Org::Allbinary::Logic::Io::DataOutputStreamFactory.getInstance().getInstanceForAbFile(toFile)
            fileInputStream = ::Org::Allbinary::Logic::Io::AbFileInputStream.createFromAbFile(fromFile)
            self.copy(fileInputStream, dataOutputStream)
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(@logConfigTypeFactory.FILEERROR)
                stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
                stringBuffer.append("Error Copying File fromFile: ")
                stringBuffer.append(fromFile.to_s)
                stringBuffer.append(" to: ")
                stringBuffer.append(toFile.to_s)
                @logUtil.put(stringBuffer.to_s, FileUtil.getInstance(), "copyFile", e)
            end
            raise e
        end
    end

    def copyFile(*java_overload_args)
        return copyFile_j2(*java_overload_args) if java_overload_args.length == 2
        return copyFile_j4(*java_overload_args) if java_overload_args.length == 4
        raise ArgumentError, "No method copyFile takes #{java_overload_args.length} arguments"
    end
    

    def self.getNewDirectory(fromFile)
        newDirectory = fromFile.getPath()
        separatorChar = FilePathData.getInstance().PATH_START
        if ::Org::Allbinary::Logic::Io::AbIOSystem.getInstance().isType("com.vobject.appengine.java.io")
            separatorChar = ::Org::Allbinary::Logic::Io::Path::AbPathData.getInstance().SEPARATOR
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
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
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
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(@logConfigTypeFactory.FILE)
            @logUtil.putF(stringBuffer.to_s, FileUtil.getInstance(), "copySomeFilesToDirectory()")
        end
        nextFile = nil
        (start...end_).each do |index|
            nextFile = fileList.get(index)
            if nextFile.isDirectory()
            else
                path = ::Org::Allbinary::Logic::Io::Path::AbPath.new(nextFile.getPath(), ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING).getPath()
                beginIndex = fromDirectoryAbPath.getPath().length()
                if path.indexOf(::Org::Allbinary::Globals::URLGLOBALS.getWebappPath()) < 0
                    beginIndex -= ::Org::Allbinary::Logic::Io::Path::AbPath.new(::Org::Allbinary::Globals::URLGLOBALS.getWebappPath(), ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING).getPath().length()
                end
                newPath = (toDirectoryAbPath.toFileSystemString()).to_s + path.substring(beginIndex)
                toFile = AbFile.createAbFileFromAbPath(::Org::Allbinary::Logic::Io::Path::AbPath.new(newPath, ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING))
                self.copyFile(nextFile, toFile, overwriteNewer, overwriteAll)
            end
        end
    end
    

    # throws Exception
    def copyDirectory(fromFile, to)
        begin
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(@logConfigTypeFactory.FILE)
                stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
                stringBuffer.append("Copying Directory from: ")
                stringBuffer.append(fromFile.getPath())
                stringBuffer.append(" to: ")
                stringBuffer.append(to.getPath())
                @logUtil.putF(stringBuffer.to_s, FileUtil.getInstance(), "copyDirectory")
            end
            newDirectory = FileUtil.getNewDirectory(fromFile)
            newDirectoryAbPath = ::Org::Allbinary::Logic::Io::Path::AbPath.new((to.getPath() + ::Org::Allbinary::Logic::Io::Path::AbPathData.getInstance().SEPARATOR).to_s + newDirectory, ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING)
            if !@directory.create(newDirectoryAbPath)
                raise StandardError.new("Failed to create directory: " + (newDirectoryAbPath).to_s)
            end
            fileArray = FileWrapperUtil.wrapFiles(fromFile.listFiles())
            size = fileArray.length
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(@logConfigTypeFactory.FILE)
                stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
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
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(@logConfigTypeFactory.FILEERROR)
                stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
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
    def copy_j2_2(fromAbPath, to)
        java_monitor.synchronize do
        _COPY = "copy"
        begin
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(@logConfigTypeFactory.FILE)
                stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
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
                    if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(@logConfigTypeFactory.FILE)
                        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
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
                    if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(@logConfigTypeFactory.FILE)
                        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
                        stringBuffer.append("Copied file with new name ")
                        stringBuffer.append(" from: ")
                        stringBuffer.append(fromLocationFile.getPath())
                        stringBuffer.append(" to: ")
                        stringBuffer.append(toLocationFile.getPath())
                        @logUtil.putF(stringBuffer.to_s, FileUtil.getInstance(), _COPY)
                    end
                end
            elsif fromLocationFile.isDirectory() && toLocationFile.isDirectory()
                if fromAbPath.toFileSystemString().charAt(fromAbPath.toFileSystemString().length() - 1) == ::File::SEPARATOR
                    if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(@logConfigTypeFactory.FILE)
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
                    if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(@logConfigTypeFactory.FILE)
                        @logUtil.putF("Copied subdirectories", FileUtil.getInstance(), _COPY)
                    end
                else
                    if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(@logConfigTypeFactory.FILE)
                        @logUtil.putF("Copyinhg directory", FileUtil.getInstance(), _COPY)
                    end
                    self.copyDirectory(fromLocationFile, toLocationFile)
                    if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(@logConfigTypeFactory.FILE)
                        @logUtil.putF("Copied directory", FileUtil.getInstance(), _COPY)
                    end
                end
            end
            return true
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(@logConfigTypeFactory.FILEERROR)
                stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
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

    def copy(*java_overload_args)
        return copy_j2(*java_overload_args) if java_overload_args.length == 2
        raise ArgumentError, "No method copy takes #{java_overload_args.length} arguments"
    end

    def copy_j2(*java_overload_args)
        return copy_j2_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::Org::Allbinary::Logic::Io::AbFileInputStream)) && (java_overload_args[1].nil? || java_overload_args[1].is_a?(::Org::Allbinary::Logic::Io::AbDataOutputStream))
        return copy_j2_2(*java_overload_args)
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
    def write_j2_3(filePath, string)
        dataOutputStream = nil
        begin
            ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(@WRITE_LABEL).append(filePath).append(@DATA_LABEL).append(string).to_s, self, @WRITE_METHOD)
            fileInputStreamFactory = ::Org::Allbinary::Logic::Io::FileStreamFactory.getInstance()
            fileOutputStream = fileInputStreamFactory.getFileOutputStreamInstance(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING, filePath)
            dataOutputStream = ::Org::Allbinary::Logic::Io::AbDataOutputStream.new(fileOutputStream)
            dataOutputStream.write(string.bytes, 0, string.length)
            dataOutputStream.flush()
        ensure
            ::Org::Allbinary::Logic::Io::StreamUtil.getInstance().close(dataOutputStream)
        end
    end

    def write(*java_overload_args)
        return write_j2(*java_overload_args) if java_overload_args.length == 2
        return write_j3(*java_overload_args) if java_overload_args.length == 3
        raise ArgumentError, "No method write takes #{java_overload_args.length} arguments"
    end

    def write_j2(*java_overload_args)
        return write_j2_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::Java::Io::InputStream)) && (java_overload_args[1].nil? || java_overload_args[1].is_a?(AbFile))
        return write_j2_2(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::Java::Io::InputStream)) && (java_overload_args[1].nil? || java_overload_args[1].is_a?(::Org::Allbinary::Logic::Io::AbDataOutputStream))
        return write_j2_3(*java_overload_args)
    end
    

    def loadFileAsList(file, max, byteArray1)
        return FileUtil2.getInstance().loadFileAsList(file, max, byteArray1)
    end

    def self.instance()
        FileUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        FileUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = FileUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "FileUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Java; module Io; autoload :InputStream, "java/io/InputStream" unless const_defined?(:InputStream, false); end; end
module ::Java; module Io; autoload :OutputStream, "java/io/OutputStream" unless const_defined?(:OutputStream, false); end; end
module ::Org; module Allbinary; module Globals; autoload :URLGLOBALS, "org/allbinary/globals/URLGLOBALS" unless const_defined?(:URLGLOBALS, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil" unless const_defined?(:PreLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; autoload :AbDataOutputStream, "org/allbinary/logic/io/AbDataOutputStream" unless const_defined?(:AbDataOutputStream, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; autoload :AbFileInputStream, "org/allbinary/logic/io/AbFileInputStream" unless const_defined?(:AbFileInputStream, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; autoload :AbFileLocalInputStream, "org/allbinary/logic/io/AbFileLocalInputStream" unless const_defined?(:AbFileLocalInputStream, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; autoload :AbIOSystem, "org/allbinary/logic/io/AbIOSystem" unless const_defined?(:AbIOSystem, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; autoload :DataOutputStreamFactory, "org/allbinary/logic/io/DataOutputStreamFactory" unless const_defined?(:DataOutputStreamFactory, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; autoload :FileStreamFactory, "org/allbinary/logic/io/FileStreamFactory" unless const_defined?(:FileStreamFactory, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; autoload :StreamUtil, "org/allbinary/logic/io/StreamUtil" unless const_defined?(:StreamUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; module Directory; autoload :Directory, "org/allbinary/logic/io/file/directory/Directory" unless const_defined?(:Directory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPath, "org/allbinary/logic/io/path/AbPath" unless const_defined?(:AbPath, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPathData, "org/allbinary/logic/io/path/AbPathData" unless const_defined?(:AbPathData, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonLabels, "org/allbinary/string/CommonLabels" unless const_defined?(:CommonLabels, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end
autoload :AbFile, "org/allbinary/logic/io/file/AbFile" unless const_defined?(:AbFile, false)
autoload :FilePathData, "org/allbinary/logic/io/file/FilePathData" unless const_defined?(:FilePathData, false)
autoload :FileUtil2, "org/allbinary/logic/io/file/FileUtil2" unless const_defined?(:FileUtil2, false)
autoload :FileWrapperUtil, "org/allbinary/logic/io/file/FileWrapperUtil" unless const_defined?(:FileWrapperUtil, false)

begin
    FileUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

