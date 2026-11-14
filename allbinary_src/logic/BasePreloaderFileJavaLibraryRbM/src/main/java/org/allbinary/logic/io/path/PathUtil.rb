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
        PathUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        PathUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = PathUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "PathUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :FilePathData, "org/allbinary/logic/io/file/FilePathData"
autoload :StringUtil, "org/allbinary/logic/string/StringUtil"
autoload :StringValidationUtil, "org/allbinary/logic/string/StringValidationUtil"
autoload :AbFilePath, "org/allbinary/logic/io/path/AbFilePath"
autoload :AbPath, "org/allbinary/logic/io/path/AbPath"
autoload :AbPathData, "org/allbinary/logic/io/path/AbPathData"

begin
    PathUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

