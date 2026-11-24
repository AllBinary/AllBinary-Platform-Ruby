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
require "java/lang/JavaOverload"
require "java/lang/JavaClass"
# require "java/io/File"
# require "java/io/FileFilter"
# require "java/io/FilenameFilter"
# require "java/io/IOException"
# require "java/net/URI"
require "org/allbinary/logic/io/file/AbFileInterface"

module ::Org; module Allbinary; module Logic; module Io; module FilePackage

class AbFile
    include AbFileInterface
    attr_accessor :file

    def jfields_org_allbinary_logic_io_file_AbFile
        @file = nil unless instance_variable_defined?(:@file)
    end
    

    # throws Exception
    def self.createAbFileWithChild(file, childPathName)
        return AbFile.new(File.new(file.getFile(), childPathName))
    end
    

    # throws Exception
    def self.createAbFile(filePath)
        return AbFile.new(File.new(::Org::Allbinary::Logic::Io::Path::AbPath.new(filePath, ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING).toFileSystemString()))
    end
    

    # throws Exception
    def self.createAbFilePathAndName(filePath, fileName)
        return AbFile.new(File.new(::Org::Allbinary::Logic::Io::Path::AbPath.new(filePath, ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING).toFileSystemString(), fileName))
    end
    

    def self.createAbFileFromAbPath(abPath)
        return AbFile.new(File.new(abPath.toFileSystemString()))
    end
    

    def self.createAbFileFromRawPath(filePath)
        return AbFile.new(File.new(filePath))
    end
    

    def initialize(file)
        jfields_org_allbinary_logic_io_file_AbFile
        @file = file
    end
    

    def getFile()
        return @file
    end
    java_overload :getFile, 0
    

    def getName()
        return @file.getName()
    end
    java_overload :getName, 0
    

    def getParent()
        return @file.getParent()
    end
    java_overload :getParent, 0
    

    def getParentFile()
        return @file.getParentFile()
    end
    java_overload :getParentFile, 0
    

    def getPath()
        return @file.getPath()
    end
    java_overload :getPath, 0
    

    def isAbsolute()
        return @file.isAbsolute()
    end
    java_overload :isAbsolute, 0
    

    def getAbsolutePath()
        return @file.getAbsolutePath()
    end
    java_overload :getAbsolutePath, 0
    

    def getAbsoluteFile()
        return @file.getAbsoluteFile()
    end
    java_overload :getAbsoluteFile, 0
    

    # throws IOException
    def getCanonicalPath()
        return @file.getCanonicalPath()
    end
    java_overload :getCanonicalPath, 0
    

    # throws IOException
    def getCanonicalFile()
        return @file.getCanonicalFile()
    end
    java_overload :getCanonicalFile, 0
    

    def toURI()
        return @file.toURI()
    end
    java_overload :toURI, 0
    

    def canRead()
        return @file.canRead()
    end
    java_overload :canRead, 0
    

    def canWrite()
        return @file.canWrite()
    end
    java_overload :canWrite, 0
    

    def exists()
        return @file.exists()
    end
    java_overload :exists, 0
    

    def isDirectory()
        return @file.isDirectory()
    end
    java_overload :isDirectory, 0
    

    def isFile()
        return @file.isFile()
    end
    java_overload :isFile, 0
    

    def isHidden()
        return @file.isHidden()
    end
    java_overload :isHidden, 0
    

    def lastModified()
        return @file.lastModified()
    end
    java_overload :lastModified, 0
    

    def length()
        return @file.length()
    end
    java_overload :length, 0
    

    # throws IOException
    def createNewFile()
        return @file.createNewFile()
    end
    java_overload :createNewFile, 0
    

    # throws IOException
    def delete()
        return @file.delete()
    end
    java_overload :delete, 0
    

    def deleteOnExit()
        @file.deleteOnExit()
    end
    java_overload :deleteOnExit, 0
    

    def list()
        return @file.list()
    end
    java_overload :list, 0
    

    def listWithFilter(filter)
        return @file.list(filter)
    end
    java_overload :listWithFilter, 1
    

    def listFiles()
        return @file.listFiles()
    end
    java_overload :listFiles, 0
    

    def listFilesFileNameFilter(filter)
        return @file.listFiles(filter)
    end
    java_overload :listFilesFileNameFilter, 1
    

    def listFilesFileFilter(filter)
        return @file.listFiles(filter)
    end
    java_overload :listFilesFileFilter, 1
    

    def mkdir()
        return @file.mkdir()
    end
    java_overload :mkdir, 0
    

    def mkdirs()
        return @file.mkdirs()
    end
    java_overload :mkdirs, 0
    

    def renameTo(dest)
        return @file.renameTo(dest.getFile())
    end
    java_overload :renameTo, 1
    

    def setLastModified(time)
        return @file.setLastModified(time)
    end
    java_overload :setLastModified, 1
    

    def setReadOnly()
        return @file.setReadOnly()
    end
    java_overload :setReadOnly, 0
    

    def setWritable_j2(writable, ownerOnly)
        return @file.setExecutable(writable, ownerOnly)
    end
    

    def setWritable_j1(writable)
        return @file.setWritable(writable)
    end

    def setWritable(*java_overload_args)
        return setWritable_j2(*java_overload_args) if java_overload_args.length == 2
        return setWritable_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method setWritable takes #{java_overload_args.length} arguments"
    end
    

    def setReadable_j2(readable, ownerOnly)
        return @file.setReadable(readable, ownerOnly)
    end
    

    def setReadable_j1(readable)
        return @file.setReadable(readable)
    end

    def setReadable(*java_overload_args)
        return setReadable_j2(*java_overload_args) if java_overload_args.length == 2
        return setReadable_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method setReadable takes #{java_overload_args.length} arguments"
    end
    

    def setExecutable_j2(executable, ownerOnly)
        return @file.setExecutable(executable, ownerOnly)
    end
    

    def setExecutable_j1(executable)
        return @file.setExecutable(executable)
    end

    def setExecutable(*java_overload_args)
        return setExecutable_j2(*java_overload_args) if java_overload_args.length == 2
        return setExecutable_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method setExecutable takes #{java_overload_args.length} arguments"
    end
    

    def canExecute()
        return @file.canExecute()
    end
    java_overload :canExecute, 0
    

    def getTotalSpace()
        return @file.getTotalSpace()
    end
    java_overload :getTotalSpace, 0
    

    def getFreeSpace()
        return @file.getFreeSpace()
    end
    java_overload :getFreeSpace, 0
    

    def getUsableSpace()
        return @file.getUsableSpace()
    end
    java_overload :getUsableSpace, 0
    

    def compareTo(pathname)
        return @file.compareTo(pathname)
    end
    java_overload :compareTo, 1
    

    def equals(obj)
        return ::Org::Allbinary::TsUtil.getInstance().equalsNotstring(@file, obj)
    end
    java_overload :equals, 1
    alias_method :==, :equals
    

    def hashCode()
        return @file.hash
    end
    java_overload :hashCode, 0
    alias_method :hash, :hashCode
    

    def toString()
        return @file.to_s
    end
    java_overload :toString, 0
    alias_method :to_s, :toString

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_FILE, AbFile.createAbFileFromRawPath(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING))
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "AbFile"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_FILE].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; autoload :TsUtil, "org/allbinary/TsUtil" unless const_defined?(:TsUtil, false); end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPath, "org/allbinary/logic/io/path/AbPath" unless const_defined?(:AbPath, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end

begin
    AbFile.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

