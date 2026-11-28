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

module ::Org; module Allbinary; module Logic; module Io; module FilePackage

#FileJ2SE should be the same as J2SEForJ2ME
class AbFileSystem
    attr_accessor :logUtil, :commonStrings

    def jfields_org_allbinary_logic_io_file_AbFileSystem
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
    end

    def initialize
        jfields_org_allbinary_logic_io_file_AbFileSystem
    end
    

    def self.getInstance()
        return @@instance
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
            return ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().getArrayInstance()
        end
    end
    

    def readAsString_j1(fileName)
        bytes = (Array.new(1000000, 0)).tap { |java_array| java_array.instance_variable_set(:@java_component, :B) }
        return self.readAsString(fileName, bytes)
    end
    

    def readAsString_j2(fileName, bytes)
        closeable = ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT
        begin
            idFile = ::Java::Io::FileInputStream.new(fileName)
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
        return ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
    end

    def readAsString(*java_overload_args)
        return readAsString_j1(*java_overload_args) if java_overload_args.length == 1
        return readAsString_j2(*java_overload_args) if java_overload_args.length == 2
        raise ArgumentError, "No method readAsString takes #{java_overload_args.length} arguments"
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
        AbFileSystem.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        AbFileSystem.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = AbFileSystem.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "AbFileSystem"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Java; module Io; autoload :FileInputStream, "java/io/FileInputStream" unless const_defined?(:FileInputStream, false); end; end
module ::Java; module Io; autoload :InputStream, "java/io/InputStream" unless const_defined?(:InputStream, false); end; end
module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end

begin
    AbFileSystem.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

