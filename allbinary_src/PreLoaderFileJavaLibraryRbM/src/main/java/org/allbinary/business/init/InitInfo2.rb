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
# package org.allbinary.business.init


class InitInfo2
    attr_accessor :directory

    def initialize_fields
        @directory = Directory.getInstance()
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return InitInfo2.instance
    end
    

    def isTestHtmlPathValid(value)
        return @directory.create(value)
    end
    

    def isMainPathValid(value)
        return @directory.create(value)
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/io/file/directory/Directory"
require "org/allbinary/logic/io/path/AbPath"

class InitInfo2
    @@instance = InitInfo2.new()
end

