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
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/io/file/FilePathData"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/string/CommonSeps"

class AbPathData
    @@instance = AbPathData.new()
end

