# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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


class FileUnamedUtil
    attr_accessor :commonSeps

    def initialize_fields
        @commonSeps = CommonSeps.getInstance()
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return FileUnamedUtil.instance
    end
    

    def process(string)
        simplifiedString = string.downcase
        simplifiedString = simplifiedString.gsub(@commonSeps.SPACE, @commonSeps.UNDERSCORE)
        simplifiedString = simplifiedString.gsub(@commonSeps.DASH, @commonSeps.UNDERSCORE)
        return simplifiedString
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/string/CommonSeps"

class FileUnamedUtil
    @@instance = FileUnamedUtil.new()
end

