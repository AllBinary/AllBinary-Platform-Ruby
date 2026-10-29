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

# require "java/io/FileNotFoundException"

class FileFactory
    attr_accessor :context

    def initialize_fields
        @context = nil
    end
    

    def initialize(context)
        initialize_fields
        @context = context
    end
    

    def self.getInstance()
        return FileFactory::SINGLETON
    end
    

    # throws Exception
    def isFile(path)
        begin
            @context.openFileInput(path)
            return true
        rescue FileNotFoundException => e
            return false
        end
    end
    

    def getContext()
        return @context
    end
    

    # throws Exception
    def getFile(filePath)
        return AbFile.createAbFileFromRawPath(filePath)
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def getInstance(file, childFilePath)
        return AbFile.createAbFileWithChild(file, childFilePath)
    end
end

require "android/content/Context"
require "org/allbinary/data/resource/ResourceUtil"
require "org/allbinary/logic/io/file/AbFile"

class FileFactory
    SINGLETON = FileFactory.new(ResourceUtil.getInstance().getContext())
end

