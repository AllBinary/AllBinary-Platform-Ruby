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


class AbPathData
    attr_accessor :EXTENSION_SEP, :SEPARATORCHAR, :SEPARATOR

    def initialize_fields
        @EXTENSION_SEP = CommonSeps.getInstance().PERIOD
        @SEPARATORCHAR = "/"
        @SEPARATOR = CommonSeps.getInstance().FORWARD_SLASH
    end
    

    def self.getInstance()
        return AbPathData.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    def getExtensionIndex(filePath)
        indexOfFileExtensionDelmiter = (filePath.rindex(@EXTENSION_SEP) || -1)
        indexOfLatDelimiter = (filePath.rindex(@SEPARATORCHAR) || -1)
        if indexOfFileExtensionDelmiter < 0
            return -1
        end
        if indexOfFileExtensionDelmiter < indexOfLatDelimiter
            return -1
        end
        return indexOfFileExtensionDelmiter
    end
    

    def getExtensionWithDot(filePath)
        indexOfFileExtensionDelmiter = self.getExtensionIndex(filePath)
        extension = StringUtil.getInstance().EMPTY_STRING
        if indexOfFileExtensionDelmiter >= 0
            extension = filePath[indexOfFileExtensionDelmiter..]
        end
        return extension
    end
    

    def getExtension(filePath)
        indexOfFileExtensionDelmiter = self.getExtensionIndex(filePath)
        extension = StringUtil.getInstance().EMPTY_STRING
        if indexOfFileExtensionDelmiter >= 0
            extension = filePath[indexOfFileExtensionDelmiter + 1..]
        end
        return extension
    end
    

    def getNameFromPath(path)
        endIndex = (path.rindex(@SEPARATORCHAR) || -1)
        if endIndex < 0
            endIndex = (path.rindex(FilePathData.getInstance().SEPARATORCHAR) || -1)
        end
        if endIndex < 0
            return path
        end
        if path.length == endIndex + 1
            categoryName = path[0...endIndex]
            return self.getNameFromPath(categoryName)
        else
            categoryName = path[endIndex + 1..]
            return categoryName
        end
    end
    

    def removeNameFromPath(path)
        endIndex = (path.rindex(@SEPARATORCHAR) || -1)
        if endIndex < 0
            endIndex = (path.rindex(FilePathData.getInstance().SEPARATORCHAR) || -1)
        end
        if endIndex < 0
            return StringUtil.getInstance().EMPTY_STRING
        end
        if path.length == endIndex + 1
            return self.removeNameFromPath(path[0...endIndex - 1])
        else
            pathWithoutName = path[0...endIndex]
            return pathWithoutName
        end
    end

    def self.instance()
        AbPathData.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        AbPathData.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = AbPathData.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "AbPathData"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :FilePathData, "org/allbinary/logic/io/file/FilePathData"
autoload :StringUtil, "org/allbinary/logic/string/StringUtil"
autoload :CommonSeps, "org/allbinary/string/CommonSeps"

begin
    AbPathData.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

