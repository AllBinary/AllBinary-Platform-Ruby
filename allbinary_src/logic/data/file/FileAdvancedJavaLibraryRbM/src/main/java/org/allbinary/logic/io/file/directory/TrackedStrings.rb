# 
# AllBinary Open License Version 1 
# Copyright (c) 2026 AllBinary 
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


module ::Org; module Allbinary; module Logic; module Io; module FilePackage; module Directory

class TrackedStrings
    attr_accessor :TARGET_PATH_WINDOWS, :TARGET_PATH_UNIX, :HTML_TEMP, :APPLICATION, :APP, :GIT_COMMAND, :CHANGE_DIRECTORY_OPTION, :LIST_FILES_COMMAND, :ERROR_UNMATCH_OPTION, :PATHSPEC_SEPARATOR, :SEP_BY_NULL_CHAR_INSTEAD_OF_NEW_LINE

    def jfields_org_allbinary_logic_io_file_directory_TrackedStrings
        @TARGET_PATH_WINDOWS = "\\target\\"
        @TARGET_PATH_UNIX = "/target/"
        @HTML_TEMP = "HTMLTemp"
        @APPLICATION = "Application"
        @APP = "\\app"
        @GIT_COMMAND = "git"
        @CHANGE_DIRECTORY_OPTION = "-C"
        @LIST_FILES_COMMAND = "ls-files"
        @ERROR_UNMATCH_OPTION = "--error-unmatch"
        @PATHSPEC_SEPARATOR = "--"
        @SEP_BY_NULL_CHAR_INSTEAD_OF_NEW_LINE = "-z"
    end

    def initialize
        jfields_org_allbinary_logic_io_file_directory_TrackedStrings
    end
    

    def self.getInstance()
        return @@instance
    end

    def self.instance()
        TrackedStrings.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        TrackedStrings.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = TrackedStrings.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "TrackedStrings"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

begin
    TrackedStrings.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

