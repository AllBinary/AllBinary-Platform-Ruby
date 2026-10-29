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
# package org.allbinary.logic.io.file.directory

# require "java/io/FileFilter"

class SubDirectory
    attr_accessor :directory

    def initialize_fields
        @directory = Directory.getInstance()
    end
    

    def self.getInstance()
        return SubDirectory.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    def search(fileFilter, file)
        return @directory.search(fileFilter, file, true)
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def search(file)
        return @directory.search(file, true)
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def search(searchValue, file)
        return @directory.search(searchValue, file, true)
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def search(level, file)
        return @directory.search(level, file, true)
    end
    

    def self.toString(files)
        stringBuffer = StringMaker.new()
        _NEW_LINE = CommonSeps.getInstance().NEW_LINE
        size = files.size()
        (0...size).each do |index|
            file = files.get(index)
            stringBuffer.append(file.getPath())
            stringBuffer.append(_NEW_LINE)
        end
        return stringBuffer.to_s
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/io/file/AbFile"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/logic/io/file/directory/Directory"

class SubDirectory
    @@instance = SubDirectory.new()
end

