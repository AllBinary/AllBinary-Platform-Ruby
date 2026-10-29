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


class FileFactory
    

    def self.getInstance()
        return FileFactory.instance
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def getInstance(filePath)
        return AbFile.createAbFileFromRawPath(filePath)
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def getInstance(file, childFilePath)
        return AbFile.createAbFileWithChild(file, childFilePath)
    end
    

    # throws Exception
    def isFile(path)
        file = AbFile.createAbFile(path)
        if file.exists()
            return true
        else
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

require "org/allbinary/logic/io/file/AbFile"

class FileFactory
    @@instance = FileFactory.new()
end

