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

# require "java/io/InputStream"

#HTMLForJ2ME
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
        return false
    end
    

    def isDirectory(path)
        return false
    end
    

    def getFilesAsStringArrayForPath(currentDirPath)
        return StringUtil.getInstance().getArrayInstance()
    end
    

    def readAsString(fileName)
        bytes = Array.new(1000000, 0)
        return self.readAsString(fileName, bytes)
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def readAsString(fileName, bytes)
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

class AbFileSystem
    @@instance = AbFileSystem.new()
end

