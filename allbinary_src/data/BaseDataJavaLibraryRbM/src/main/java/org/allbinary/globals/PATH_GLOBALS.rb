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
        PATH_GLOBALS.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        PATH_GLOBALS.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = PATH_GLOBALS.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "PATH_GLOBALS"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :AbPathData, "org/allbinary/logic/io/path/AbPathData"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"

begin
    PATH_GLOBALS.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

