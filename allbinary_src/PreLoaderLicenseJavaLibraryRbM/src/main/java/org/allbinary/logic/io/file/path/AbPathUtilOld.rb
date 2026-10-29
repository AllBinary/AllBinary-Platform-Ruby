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
# package org.allbinary.logic.io.file.path

require "java/lang/Object"

#Used to correct user input for paths
class AbPathUtilOld
    attr_accessor :logUtil, :abPathData, :filePathData

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @abPathData = AbPathData.getInstance()
        @filePathData = FilePathData.getInstance()
    end
    

    def self.getInstance()
        return AbPathUtilOld.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    # throws Exception
    def getExtension(abFilePath)
        return self.getExtension(abFilePath.to_s)
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def getExtension(abPath)
        return self.getExtension(abPath.to_s)
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def getExtension(filePath)
        if filePath.length < AbPathUtilOld::MIN
            raise StandardError.new("Could not be a file path since its less that 4 characters")
        end
        beginIndex = filePath.length - AbPathUtilOld::MIN
        extension = filePath[beginIndex + 1..]
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("FileExtension: " + extension, self, "getExtension()")
        end
        return extension
    end
    

    # throws Exception
    def getWithoutExtension(abFilePath)
        return self.getWithoutExtension(abFilePath.to_s)
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def getWithoutExtension(abPath)
        return self.getWithoutExtension(abPath.to_s)
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def getWithoutExtension(filePath)
        if filePath.length < AbPathUtilOld::MIN
            raise StandardError.new("Could not be a file path since its less that 4 characters")
        end
        endIndex = filePath.length - AbPathUtilOld::MIN
        pathWithoutExtension = filePath[0...endIndex]
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("FileWithoutExtension: " + pathWithoutExtension, self, "getWithoutExtension()")
        end
        return pathWithoutExtension
    end
    

    def isValid(path)
        if self.isValidStart(path)
            if self.isValidEnd(path)
                return true
            end
        end
        return false
    end
    

    def isValidStart(path)
        if path[0] == @abPathData.SEPARATORCHAR
            return true
        else
            return false
        end
    end
    

    def isValidEnd(path)
        if StringValidationUtil.getInstance().isEmpty(path)
            return false
        end
        if path[path.length - 1] == @abPathData.SEPARATORCHAR
            return true
        else
            return false
        end
    end
    

    def adjustStart(path)
        if !self.isValidStart(path)
            path = (@abPathData.SEPARATOR).to_s + path
        end
        return path
    end
    

    def adjustEnd(path)
        if !self.isValidEnd(path)
            path = path + (@abPathData.SEPARATOR).to_s
        end
        return path
    end
    

    def adjust(path)
        if StringValidationUtil.getInstance().isEmpty(path)
            return @abPathData.SEPARATOR
        end
        if (path.index("\\") || -1) >= 0
            path = path.gsub("\\", @abPathData.SEPARATORCHAR)
        end
        return path
    end
    

    def getNameFromPath(categoryPath)
        java_monitor.synchronize do
        endIndex = (categoryPath.rindex(@abPathData.SEPARATOR) || -1)
        if endIndex < 0
            endIndex = (categoryPath.rindex(@filePathData.SEPARATORCHAR) || -1)
        end
        if endIndex < 0
            return categoryPath
        end
        if categoryPath.length == endIndex + 1
            categoryName = categoryPath[0...endIndex]
            return self.getNameFromPath(categoryName)
        else
            categoryName = categoryPath[endIndex + 1..]
            return categoryName
        end
        end
    end
    

    # throws Exception
    def removeNameFromPath(categoryPath)
        java_monitor.synchronize do
        endIndex = (categoryPath.rindex(@abPathData.SEPARATOR) || -1)
        if endIndex < 0
            endIndex = (categoryPath.rindex(@filePathData.SEPARATORCHAR) || -1)
        end
        if endIndex < 0
            return AbPath.createAbPath()
        end
        if categoryPath.length == endIndex + 1
            return self.removeNameFromPath(categoryPath[0...endIndex - 1])
        else
            categoryName = categoryPath[0...endIndex]
            return AbPath.new(categoryName, StringUtil.getInstance().EMPTY_STRING)
        end
        end
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/io/file/FilePathData"
require "org/allbinary/logic/io/path/AbFilePath"
require "org/allbinary/logic/io/path/AbPath"
require "org/allbinary/logic/io/path/AbPathData"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/logic/string/StringValidationUtil"

class AbPathUtilOld
    @@instance = AbPathUtilOld.new()
    MIN = 4
end

