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

# require "java/io/File"

class FilePathData
    attr_accessor :SEPARATORCHAR, :PATH_START

    def initialize_fields
        @SEPARATORCHAR = File::SEPARATOR
        @PATH_START = File::SEPARATOR
    end
    

    def self.getInstance()
        return FilePathData.instance
    end
    

    def initialize()
        initialize_fields
        if File::SEPARATOR == "\\"
            @PATH_START = File::SEPARATOR + File::SEPARATOR
        end
    end

    def self.instance()
        FilePathData.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        FilePathData.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = FilePathData.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "FilePathData"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

begin
    FilePathData.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

