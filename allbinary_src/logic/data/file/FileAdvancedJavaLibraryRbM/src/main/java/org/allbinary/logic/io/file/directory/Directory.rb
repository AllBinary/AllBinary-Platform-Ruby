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

module ::Org; module Allbinary; module Logic; module Io; module FilePackage; module Directory

class Directory
    

    def self.getInstance()
        return @@instance
    end
    

    def initialize()
    end
    

    def create_j1_1(directoryAbPath)
        return self.create(directoryAbPath.toFileSystemString())
    end
    

    # throws Exception
    def remove_j1_1(existingDirectoryAbPath)
        self.remove(existingDirectoryAbPath.toFileSystemString())
    end
    

    def create_j1_2(directory)
        begin
            directoryFile = ::Org::Allbinary::Logic::Io::FilePackage::FileFactory.getInstance().getInstance(directory)
            if !directoryFile.isDirectory()
                ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put("Creating Directories: " + directory, self, "create")
                if !directoryFile.mkdirs()
                    return false
                end
            end
            return true
        rescue StandardError => e
            ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.putOE("Error Creating Directories: " + directory, self, "create", e)
            return false
        end
    end

    def create(*java_overload_args)
        return create_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method create takes #{java_overload_args.length} arguments"
    end

    def create_j1(*java_overload_args)
        return create_j1_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::Org::Allbinary::Logic::Io::Path::AbPath))
        return create_j1_2(*java_overload_args)
    end
    

    # throws Exception
    def remove_j1_2(existingDirectory)
        existingDirectoryFile = ::Org::Allbinary::Logic::Io::FilePackage::FileFactory.getInstance().getInstance(existingDirectory)
        if existingDirectoryFile.isDirectory()
            if existingDirectoryFile.list().length > 0
                raise StandardError.new("Did not remove category: " + existingDirectory + " because files exist")
            elsif existingDirectoryFile.delete()
                ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put("Successfully Removed: " + existingDirectory, "Directory", "remove")
            end
        else
            raise StandardError.new("Category Directory Is Missing:" + existingDirectory)
        end
    end

    def remove(*java_overload_args)
        return remove_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method remove takes #{java_overload_args.length} arguments"
    end

    def remove_j1(*java_overload_args)
        return remove_j1_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::Org::Allbinary::Logic::Io::Path::AbPath))
        return remove_j1_2(*java_overload_args)
    end
    

    def search_j2_1(fileFilter, file)
        return self.search(fileFilter, file, false)
    end
    

    def search_j3_1(fileFilter, file, isRecursiveSearch)
        fileList = ::Org::Allbinary::Util::BasicArrayListD.new()
        recursiveFileList = nil
        if file.isDirectory()
            fileArray = file.listFilesFileFilter(fileFilter)
            if fileArray == nil
                return fileList
            end
            files = ::Org::Allbinary::Logic::Io::FilePackage::FileWrapperUtil.wrapFiles(fileArray)
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
    

    def search_j1(file)
        return self.search(file, false)
    end
    

    def search_j2_2(file, isRecursiveSearch)
        fileList = ::Org::Allbinary::Util::BasicArrayListD.new()
        recursiveFileList = nil
        if file.isDirectory()
            fileArray = file.listFiles()
            if fileArray == nil
                return fileList
            end
            files = ::Org::Allbinary::Logic::Io::FilePackage::FileWrapperUtil.wrapFiles(fileArray)
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
    

    def search_j2_3(searchValue, file)
        return self.search(searchValue, file, false)
    end
    

    def search_j3_2(searchValue, file, isRecursiveSearch)
        fileList = ::Org::Allbinary::Util::BasicArrayListD.new()
        recursiveFileList = nil
        if file.isDirectory()
            fileArray = file.listFiles()
            if fileArray == nil
                return fileList
            end
            files = ::Org::Allbinary::Logic::Io::FilePackage::FileWrapperUtil.wrapFiles(fileArray)
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
    

    def search_j2_4(level, file)
        return self.search(level, file, false)
    end
    

    def search_j3_3(level, file, isRecursiveSearch)
        fileList = ::Org::Allbinary::Util::BasicArrayListD.new()
        recursiveFileList = nil
        if file.isDirectory()
            fileArray = file.listFiles()
            if fileArray == nil
                return fileList
            end
            files = ::Org::Allbinary::Logic::Io::FilePackage::FileWrapperUtil.wrapFiles(fileArray)
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

    def search(*java_overload_args)
        return search_j2(*java_overload_args) if java_overload_args.length == 2
        return search_j3(*java_overload_args) if java_overload_args.length == 3
        return search_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method search takes #{java_overload_args.length} arguments"
    end

    def search_j2(*java_overload_args)
        return search_j2_1(*java_overload_args) if true && !(java_overload_args[0].is_a?(::Numeric) || java_overload_args[0] == true || java_overload_args[0] == false || java_overload_args[0].is_a?(::Array)) && (java_overload_args[1].nil? || java_overload_args[1].is_a?(::Org::Allbinary::Logic::Io::FilePackage::AbFile))
        return search_j2_2(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::Org::Allbinary::Logic::Io::FilePackage::AbFile)) && (java_overload_args[1] == true || java_overload_args[1] == false)
        return search_j2_3(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::String)) && (java_overload_args[1].nil? || java_overload_args[1].is_a?(::Org::Allbinary::Logic::Io::FilePackage::AbFile))
        return search_j2_4(*java_overload_args)
    end

    def search_j3(*java_overload_args)
        return search_j3_1(*java_overload_args) if true && !(java_overload_args[0].is_a?(::Numeric) || java_overload_args[0] == true || java_overload_args[0] == false || java_overload_args[0].is_a?(::Array)) && (java_overload_args[1].nil? || java_overload_args[1].is_a?(::Org::Allbinary::Logic::Io::FilePackage::AbFile)) && (java_overload_args[2] == true || java_overload_args[2] == false)
        return search_j3_2(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::String)) && (java_overload_args[1].nil? || java_overload_args[1].is_a?(::Org::Allbinary::Logic::Io::FilePackage::AbFile)) && (java_overload_args[2] == true || java_overload_args[2] == false)
        return search_j3_3(*java_overload_args)
    end

    def self.instance()
        Directory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        Directory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = Directory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "Directory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil" unless const_defined?(:PreLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :AbFile, "org/allbinary/logic/io/file/AbFile" unless const_defined?(:AbFile, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :FileFactory, "org/allbinary/logic/io/file/FileFactory" unless const_defined?(:FileFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :FileWrapperUtil, "org/allbinary/logic/io/file/FileWrapperUtil" unless const_defined?(:FileWrapperUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPath, "org/allbinary/logic/io/path/AbPath" unless const_defined?(:AbPath, false); end; end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end

begin
    Directory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

