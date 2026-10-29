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
# package org.allbinary.logic.java


class FileExtensionData
    attr_accessor :DOT_JAVA_SOURCE, :JAVA_SOURCE

    def initialize_fields
        @DOT_JAVA_SOURCE = ".java"
        @JAVA_SOURCE = "java"
    end
    

    def self.getInstance()
        return FileExtensionData.instance
    end
    

    def initialize()
        initialize_fields
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

class FileExtensionData
    @@instance = FileExtensionData.new()
end

