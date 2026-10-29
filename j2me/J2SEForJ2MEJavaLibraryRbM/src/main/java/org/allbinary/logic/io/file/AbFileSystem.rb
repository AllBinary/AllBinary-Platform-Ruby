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
# require "java/io/FileInputStream"
# require "java/io/InputStream"

#J2SEForJ2ME
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
    

    # throws Exception
    def self.main(args)
        isDirectory = AbFileSystem.getInstance().isDirectory("c:")
        puts("isDirectory: " + (isDirectory).to_s)
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/NullUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/string/CommonStrings"
require "java/lang/System"

class AbFileSystem
    @@instance = AbFileSystem.new()
end

