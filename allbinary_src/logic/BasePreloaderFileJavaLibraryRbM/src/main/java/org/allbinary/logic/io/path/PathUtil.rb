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
# package org.allbinary.logic.io.path


#Used to correct user input for paths
class PathUtil
    attr_accessor :abPathData, :filePathData

    def initialize_fields
        @abPathData = AbPathData.getInstance()
        @filePathData = FilePathData.getInstance()
    end
    

    def self.getInstance()
        return PathUtil.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    def getExtensionWithAbFilePath(abFilePath)
        return @abPathData.getExtension(abFilePath.to_s)
    end
    

    def getExtensionWithAbPath(abPath)
        return @abPathData.getExtension(abPath.to_s)
    end
    

    # throws Exception
    def getWithoutExtensionWithAbFilePath(abFilePath)
        return self.getWithoutExtension(abFilePath.to_s)
    end
    

    # throws Exception
    def getWithoutExtensionWithAbPath(abPath)
        return self.getWithoutExtension(abPath.to_s)
    end
    

    # throws Exception
    def getWithoutExtension(filePath)
        indexOfFileExtensionDelmiter = @abPathData.getExtensionIndex(filePath)
        pathWithoutExtension = filePath
        if indexOfFileExtensionDelmiter >= 0
            pathWithoutExtension = filePath[0...indexOfFileExtensionDelmiter]
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
        if path[0] == @abPathData.SEPARATORCHAR || path[0] == "."
            return true
        else
            return false
        end
    end
    

    def isValidEnd(path)
        stringValidationUtil = StringValidationUtil.getInstance()
        if stringValidationUtil.isEmpty(path)
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
        stringValidationUtil = StringValidationUtil.getInstance()
        if stringValidationUtil.isEmpty(path)
            return @abPathData.SEPARATOR
        end
        if (path.index("\\") || -1) >= 0
            path = path.gsub("\\", @abPathData.SEPARATORCHAR)
        end
        return path
    end
    

    # throws Exception
    def removeNameFromPath(path)
        endIndex = (path.rindex(@abPathData.SEPARATOR) || -1)
        if endIndex < 0
            endIndex = (path.rindex(@filePathData.SEPARATORCHAR) || -1)
        end
        if endIndex < 0
            return AbPath.createAbPath()
        end
        if path.length == endIndex + 1
            return self.removeNameFromPath(path[0...endIndex - 1])
        else
            pathWithoutName = path[0...endIndex]
            return AbPath.new(pathWithoutName, StringUtil.getInstance().EMPTY_STRING)
        end
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/io/file/FilePathData"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/logic/string/StringValidationUtil"
require "org/allbinary/logic/io/path/AbFilePath"
require "org/allbinary/logic/io/path/AbPath"
require "org/allbinary/logic/io/path/AbPathData"

class PathUtil
    @@instance = PathUtil.new()
end

