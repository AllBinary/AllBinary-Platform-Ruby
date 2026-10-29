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
# package org.allbinary.logic.io.file.directory

# require "java/io/FileFilter"

class Directory
    

    def self.getInstance()
        return Directory.instance
    end
    

    def initialize()
    end
    

    def create(directoryAbPath)
        return self.create(directoryAbPath.toFileSystemString())
    end
    

    # throws Exception
    def remove(existingDirectoryAbPath)
        self.remove(existingDirectoryAbPath.toFileSystemString())
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def create(directory)
        begin
            directoryFile = FileFactory.getInstance().getInstance(directory)
            if !directoryFile.isDirectory()
                PreLogUtil.put("Creating Directories: " + directory, self, "create")
                if !directoryFile.mkdirs()
                    return false
                end
            end
            return true
        rescue StandardError => e
            PreLogUtil.putOE("Error Creating Directories: " + directory, self, "create", e)
            return false
        end
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def remove(existingDirectory)
        existingDirectoryFile = FileFactory.getInstance().getInstance(existingDirectory)
        if existingDirectoryFile.isDirectory()
            if existingDirectoryFile.list().length > 0
                raise StandardError.new("Did not remove category: " + existingDirectory + " because files exist")
            elsif existingDirectoryFile.delete()
                PreLogUtil.put("Successfully Removed: " + existingDirectory, "Directory", "remove")
            end
        else
            raise StandardError.new("Category Directory Is Missing:" + existingDirectory)
        end
    end
    

    def search(fileFilter, file)
        return self.search(fileFilter, file, false)
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def search(fileFilter, file, isRecursiveSearch)
        fileList = BasicArrayListD.new()
        recursiveFileList = nil
        if file.isDirectory()
            fileArray = file.listFilesFileFilter(fileFilter)
            if fileArray == nil
                return fileList
            end
            files = FileWrapperUtil.wrapFiles(fileArray)
            if files == nil
                return fileList
            end
            size = files.length
            (0...size).each do |index|
                fileList.add(files[index])
                if isRecursiveSearch
                    recursiveFileList = self.search(fileFilter, files[index], isRecursiveSearch)
                    fileList.addAllList(recursiveFileList)
                end
            end
        end
        return fileList
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def search(file)
        return self.search(file, false)
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def search(file, isRecursiveSearch)
        fileList = BasicArrayListD.new()
        recursiveFileList = nil
        if file.isDirectory()
            fileArray = file.listFiles()
            if fileArray == nil
                return fileList
            end
            files = FileWrapperUtil.wrapFiles(fileArray)
            if files == nil
                return fileList
            end
            (0...files.length).each do |index|
                fileList.add(files[index])
                if isRecursiveSearch
                    recursiveFileList = self.search(files[index], isRecursiveSearch)
                    fileList.addAllList(recursiveFileList)
                end
            end
        end
        return fileList
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def search(searchValue, file)
        return self.search(searchValue, file, false)
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def search(searchValue, file, isRecursiveSearch)
        fileList = BasicArrayListD.new()
        recursiveFileList = nil
        if file.isDirectory()
            fileArray = file.listFiles()
            if fileArray == nil
                return fileList
            end
            files = FileWrapperUtil.wrapFiles(fileArray)
            if files == nil
                return fileList
            end
            (0...files.length).each do |index|
                if files[index].getPath().indexOf(searchValue) >= 0
                    fileList.add(files[index])
                end
                if isRecursiveSearch
                    recursiveFileList = self.search(searchValue, files[index], isRecursiveSearch)
                    fileList.addAllList(recursiveFileList)
                end
            end
        end
        return fileList
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def search(level, file)
        return self.search(level, file, false)
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def search(level, file, isRecursiveSearch)
        fileList = BasicArrayListD.new()
        recursiveFileList = nil
        if file.isDirectory()
            fileArray = file.listFiles()
            if fileArray == nil
                return fileList
            end
            files = FileWrapperUtil.wrapFiles(fileArray)
            if files == nil
                return fileList
            end
            (0...files.length).each do |index|
                fileList.add(files[index])
                if level <= 0
                    return fileList
                end
                recursiveFileList = self.search(level - 1, files[index], isRecursiveSearch)
                fileList.addAllList(recursiveFileList)
            end
        end
        return fileList
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/communication/log/PreLogUtil"
require "org/allbinary/logic/io/file/AbFile"
require "org/allbinary/logic/io/file/FileFactory"
require "org/allbinary/logic/io/file/FileWrapperUtil"
require "org/allbinary/logic/io/path/AbPath"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"

class Directory
    @@instance = Directory.new()
end

