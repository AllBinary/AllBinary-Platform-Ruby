# 
# AllBinary Open License Version 1 
# Copyright (c) 2026 AllBinary 
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

#FileJ2SE should be the same as J2SEForJ2ME
class AbFileSystem
    attr_accessor :logUtil, :commonStrings

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return AbFileSystem.instance
    end
    

    def isDirectoryOrFile(path)
        file = File.new(path)
        return file.isDirectory() || file.isFile()
    end
    

    def isDirectory(path)
        return File.new(path).isDirectory()
    end
    

    def getFilesAsStringArrayForPath(currentDirPath)
        file = File.new(currentDirPath)
        if file.exists()
            return file.list()
        else
            return StringUtil.getInstance().getArrayInstance()
        end
    end
    

    def readAsString(fileName)
        bytes = Array.new(1000000, 0)
        return self.readAsString(fileName, bytes)
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def readAsString(fileName, bytes)
        closeable = NullUtil.getInstance().NULL_OBJECT
        begin
            idFile = FileInputStream.new(fileName)
            closeable = idFile
            size = idFile.read(bytes)
            if size > 0
                return bytes, 0, size.pack("c*").force_encoding("UTF-8")
            end
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "readAsString", e)
        ensure
            self.close(closeable)
        end
        return StringUtil.getInstance().EMPTY_STRING
    end
    

    def close(closeable)
        begin
            if closeable != nil
                inputStream = (closeable)
                inputStream.close()
            end
            return true
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.CLOSE, e)
            return false
        end
    end

    def self.instance()
        AbFileSystem.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        AbFileSystem.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = AbFileSystem.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "AbFileSystem"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :FileInputStream, "java/io/FileInputStream"
autoload :InputStream, "java/io/InputStream"
autoload :NullUtil, "org/allbinary/logic/NullUtil"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :StringUtil, "org/allbinary/logic/string/StringUtil"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"

begin
    AbFileSystem.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

