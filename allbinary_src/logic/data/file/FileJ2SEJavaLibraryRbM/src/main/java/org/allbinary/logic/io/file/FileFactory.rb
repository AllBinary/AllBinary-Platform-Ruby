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
        FileFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        FileFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = FileFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "FileFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :AbFile, "org/allbinary/logic/io/file/AbFile"

begin
    FileFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

