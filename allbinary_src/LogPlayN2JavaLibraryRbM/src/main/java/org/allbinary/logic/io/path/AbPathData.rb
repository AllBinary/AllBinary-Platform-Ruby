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

# require "jsinterop/annotations/JsType"

module ::Org; module Allbinary; module Logic; module Io; module Path

#Used to correct user input for paths
class AbPathData
    attr_accessor :EXTENSION_SEP, :SEPARATORCHAR, :SEPARATOR

    def jfields_org_allbinary_logic_io_path_AbPathData
        @EXTENSION_SEP = ::Org::Allbinary::StringPackage::CommonSeps.getInstance().PERIOD
        @SEPARATORCHAR = "/"
        @SEPARATOR = ::Org::Allbinary::StringPackage::CommonSeps.getInstance().FORWARD_SLASH
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def initialize()
        jfields_org_allbinary_logic_io_path_AbPathData
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
        extension = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
        if indexOfFileExtensionDelmiter >= 0
            extension = filePath[indexOfFileExtensionDelmiter..]
        end
        return extension
    end
    

    def getExtension(filePath)
        indexOfFileExtensionDelmiter = self.getExtensionIndex(filePath)
        extension = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
        if indexOfFileExtensionDelmiter >= 0
            extension = filePath[indexOfFileExtensionDelmiter + 1..]
        end
        return extension
    end
    

    def getNameFromPath(path)
        endIndex = (path.rindex(@SEPARATORCHAR) || -1)
        if endIndex < 0
            endIndex = (path.rindex(::Org::Allbinary::Logic::Io::FilePackage::FilePathData.getInstance().SEPARATORCHAR) || -1)
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
            endIndex = (path.rindex(::Org::Allbinary::Logic::Io::FilePackage::FilePathData.getInstance().SEPARATORCHAR) || -1)
        end
        if endIndex < 0
            return ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
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

module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :FilePathData, "org/allbinary/logic/io/file/FilePathData" unless const_defined?(:FilePathData, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end

begin
    AbPathData.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

