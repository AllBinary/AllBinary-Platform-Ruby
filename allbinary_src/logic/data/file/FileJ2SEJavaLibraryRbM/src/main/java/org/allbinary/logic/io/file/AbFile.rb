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

# require "java/io/File"
# require "java/io/FileFilter"
# require "java/io/FilenameFilter"
# require "java/io/IOException"
# require "java/net/URI"
require "org/allbinary/logic/io/file/AbFileInterface"

class AbFile
    include AbFileInterface
    attr_accessor :file

    def initialize_fields
        @file = nil
    end
    

    # throws Exception
    def self.createAbFileWithChild(file, childPathName)
        return AbFile.new(File.new(file.getFile(), childPathName))
    end
    

    # throws Exception
    def self.createAbFile(filePath)
        return AbFile.new(File.new(AbPath.new(filePath, StringUtil.getInstance().EMPTY_STRING).toFileSystemString()))
    end
    

    # throws Exception
    def self.createAbFilePathAndName(filePath, fileName)
        return AbFile.new(File.new(AbPath.new(filePath, StringUtil.getInstance().EMPTY_STRING).toFileSystemString(), fileName))
    end
    

    def self.createAbFileFromAbPath(abPath)
        return AbFile.new(File.new(abPath.toFileSystemString()))
    end
    

    def self.createAbFileFromRawPath(filePath)
        return AbFile.new(File.new(filePath))
    end
    

    def initialize(file)
        initialize_fields
        @file = file
    end
    

    def getFile()
        return @file
    end
    

    def getName()
        return @file.getName()
    end
    

    def getParent()
        return @file.getParent()
    end
    

    def getParentFile()
        return @file.getParentFile()
    end
    

    def getPath()
        return @file.getPath()
    end
    

    def isAbsolute()
        return @file.isAbsolute()
    end
    

    def getAbsolutePath()
        return @file.getAbsolutePath()
    end
    

    def getAbsoluteFile()
        return @file.getAbsoluteFile()
    end
    

    # throws IOException
    def getCanonicalPath()
        return @file.getCanonicalPath()
    end
    

    # throws IOException
    def getCanonicalFile()
        return @file.getCanonicalFile()
    end
    

    def toURI()
        return @file.toURI()
    end
    

    def canRead()
        return @file.canRead()
    end
    

    def canWrite()
        return @file.canWrite()
    end
    

    def exists()
        return @file.exists()
    end
    

    def isDirectory()
        return @file.isDirectory()
    end
    

    def isFile()
        return @file.isFile()
    end
    

    def isHidden()
        return @file.isHidden()
    end
    

    def lastModified()
        return @file.lastModified()
    end
    

    def length()
        return @file.length()
    end
    

    # throws IOException
    def createNewFile()
        return @file.createNewFile()
    end
    

    # throws IOException
    def delete()
        return @file.delete()
    end
    

    def deleteOnExit()
        @file.deleteOnExit()
    end
    

    def list()
        return @file.list()
    end
    

    def listWithFilter(filter)
        return @file.list(filter)
    end
    

    def listFiles()
        return @file.listFiles()
    end
    

    def listFilesFileNameFilter(filter)
        return @file.listFiles(filter)
    end
    

    def listFilesFileFilter(filter)
        return @file.listFiles(filter)
    end
    

    def mkdir()
        return @file.mkdir()
    end
    

    def mkdirs()
        return @file.mkdirs()
    end
    

    def renameTo(dest)
        return @file.renameTo(dest.getFile())
    end
    

    def setLastModified(time)
        return @file.setLastModified(time)
    end
    

    def setReadOnly()
        return @file.setReadOnly()
    end
    

    def setWritable(writable, ownerOnly)
        return @file.setExecutable(writable, ownerOnly)
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def setWritable(writable)
        return @file.setWritable(writable)
    end
    

    def setReadable(readable, ownerOnly)
        return @file.setReadable(readable, ownerOnly)
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def setReadable(readable)
        return @file.setReadable(readable)
    end
    

    def setExecutable(executable, ownerOnly)
        return @file.setExecutable(executable, ownerOnly)
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def setExecutable(executable)
        return @file.setExecutable(executable)
    end
    

    def canExecute()
        return @file.canExecute()
    end
    

    def getTotalSpace()
        return @file.getTotalSpace()
    end
    

    def getFreeSpace()
        return @file.getFreeSpace()
    end
    

    def getUsableSpace()
        return @file.getUsableSpace()
    end
    

    def compareTo(pathname)
        return @file.compareTo(pathname)
    end
    

    def equals(obj)
        return TsUtil.getInstance().equalsNotstring(@file, obj)
    end
    alias_method :==, :equals
    

    def hashCode()
        return @file.hash
    end
    alias_method :hash, :hashCode
    

    def toString()
        return @file.to_s
    end
    alias_method :to_s, :toString
end

require "org/allbinary/TsUtil"
require "org/allbinary/logic/io/path/AbPath"
require "org/allbinary/logic/string/StringUtil"

class AbFile
    NULL_FILE = AbFile.createAbFileFromRawPath(StringUtil.getInstance().EMPTY_STRING)
end

