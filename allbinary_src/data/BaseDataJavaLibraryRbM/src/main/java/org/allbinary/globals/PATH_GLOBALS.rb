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
# package org.allbinary.globals


class PATH_GLOBALS
    attr_accessor :DATA_PATH, :INIT_PATH, :VIEWS_PATH, :LOG_PATH, :BACKUP_PATH

    def initialize_fields
        @DATA_PATH = nil
        @INIT_PATH = nil
        @VIEWS_PATH = nil
        @LOG_PATH = nil
        @BACKUP_PATH = nil
    end
    

    def self.getInstance()
        return PATH_GLOBALS.instance
    end
    

    def initialize()
        initialize_fields
        stringBuffer = StringMaker.new()
        abPathData = AbPathData.getInstance()
        stringBuffer.append("data")
        stringBuffer.append(abPathData.SEPARATOR)
        @DATA_PATH = stringBuffer.to_s
        stringBuffer.delete(0, stringBuffer.length())
        stringBuffer.append(@DATA_PATH)
        stringBuffer.append(CommonStrings.getInstance().INIT)
        stringBuffer.append(abPathData.SEPARATOR)
        @INIT_PATH = stringBuffer.to_s
        stringBuffer.delete(0, stringBuffer.length())
        stringBuffer.append(@DATA_PATH)
        stringBuffer.append("log")
        stringBuffer.append(abPathData.SEPARATOR)
        @LOG_PATH = stringBuffer.to_s
        stringBuffer.delete(0, stringBuffer.length())
        stringBuffer.append(@DATA_PATH)
        stringBuffer.append("backup")
        stringBuffer.append(abPathData.SEPARATOR)
        @BACKUP_PATH = stringBuffer.to_s
        stringBuffer.delete(0, stringBuffer.length())
        stringBuffer.append(@INIT_PATH)
        stringBuffer.append("views")
        stringBuffer.append(abPathData.SEPARATOR)
        @VIEWS_PATH = stringBuffer.to_s
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/io/path/AbPathData"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/string/CommonStrings"

class PATH_GLOBALS
    @@instance = PATH_GLOBALS.new()
end

