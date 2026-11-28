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

module ::Org; module Allbinary; module Logic; module Io; module FilePackage; module Path

#Used to correct user input for paths
class AbPathUtilOld
    attr_accessor :logUtil, :abPathData, :filePathData

    def jfields_org_allbinary_logic_io_file_path_AbPathUtilOld
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @abPathData = ::Org::Allbinary::Logic::Io::Path::AbPathData.getInstance()
        @filePathData = ::Org::Allbinary::Logic::Io::FilePackage::FilePathData.getInstance()
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def initialize()
        jfields_org_allbinary_logic_io_file_path_AbPathUtilOld
    end
    

    # throws Exception
    def getExtension_j1_1(abFilePath)
        return self.getExtension(abFilePath.to_s)
    end
    

    # throws Exception
    def getExtension_j1_2(abPath)
        return self.getExtension(abPath.to_s)
    end
    

    # throws Exception
    def getExtension_j1_3(filePath)
        if filePath.length < MIN
            raise StandardError.new("Could not be a file path since its less that 4 characters")
        end
        beginIndex = filePath.length - MIN
        extension = filePath[beginIndex + 1..]
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("FileExtension: " + extension, self, "getExtension()")
        end
        return extension
    end

    def getExtension(*java_overload_args)
        return getExtension_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method getExtension takes #{java_overload_args.length} arguments"
    end

    def getExtension_j1(*java_overload_args)
        return getExtension_j1_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::Org::Allbinary::Logic::Io::Path::AbFilePath))
        return getExtension_j1_2(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::Org::Allbinary::Logic::Io::Path::AbPath))
        return getExtension_j1_3(*java_overload_args)
    end
    

    # throws Exception
    def getWithoutExtension_j1_1(abFilePath)
        return self.getWithoutExtension(abFilePath.to_s)
    end
    

    # throws Exception
    def getWithoutExtension_j1_2(abPath)
        return self.getWithoutExtension(abPath.to_s)
    end
    

    # throws Exception
    def getWithoutExtension_j1_3(filePath)
        if filePath.length < MIN
            raise StandardError.new("Could not be a file path since its less that 4 characters")
        end
        endIndex = filePath.length - MIN
        pathWithoutExtension = filePath[0...endIndex]
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("FileWithoutExtension: " + pathWithoutExtension, self, "getWithoutExtension()")
        end
        return pathWithoutExtension
    end

    def getWithoutExtension(*java_overload_args)
        return getWithoutExtension_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method getWithoutExtension takes #{java_overload_args.length} arguments"
    end

    def getWithoutExtension_j1(*java_overload_args)
        return getWithoutExtension_j1_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::Org::Allbinary::Logic::Io::Path::AbFilePath))
        return getWithoutExtension_j1_2(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::Org::Allbinary::Logic::Io::Path::AbPath))
        return getWithoutExtension_j1_3(*java_overload_args)
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
        if ::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance().isEmpty(path)
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
        if ::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance().isEmpty(path)
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
            return ::Org::Allbinary::Logic::Io::Path::AbPath.createAbPath()
        end
        if categoryPath.length == endIndex + 1
            return self.removeNameFromPath(categoryPath[0...endIndex - 1])
        else
            categoryName = categoryPath[0...endIndex]
            return ::Org::Allbinary::Logic::Io::Path::AbPath.new(categoryName, ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING)
        end
        end
    end

    def self.instance()
        AbPathUtilOld.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        AbPathUtilOld.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:MIN, 4)
        begin
            @@instance = AbPathUtilOld.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "AbPathUtilOld"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:MIN].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :FilePathData, "org/allbinary/logic/io/file/FilePathData" unless const_defined?(:FilePathData, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbFilePath, "org/allbinary/logic/io/path/AbFilePath" unless const_defined?(:AbFilePath, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPath, "org/allbinary/logic/io/path/AbPath" unless const_defined?(:AbPath, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPathData, "org/allbinary/logic/io/path/AbPathData" unless const_defined?(:AbPathData, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringValidationUtil, "org/allbinary/logic/string/StringValidationUtil" unless const_defined?(:StringValidationUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

begin
    AbPathUtilOld.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

