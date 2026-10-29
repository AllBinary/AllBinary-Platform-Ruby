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
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

class FilePathData
    @@instance = FilePathData.new()
end

