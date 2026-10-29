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


class TrackedStrings
    attr_accessor :TARGET_PATH_WINDOWS, :TARGET_PATH_UNIX, :HTML_TEMP, :APPLICATION, :APP, :GIT_COMMAND, :CHANGE_DIRECTORY_OPTION, :LIST_FILES_COMMAND, :ERROR_UNMATCH_OPTION, :PATHSPEC_SEPARATOR, :SEP_BY_NULL_CHAR_INSTEAD_OF_NEW_LINE

    def initialize_fields
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
        initialize_fields
    end
    

    def self.getInstance()
        return TrackedStrings.instance
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

class TrackedStrings
    @@instance = TrackedStrings.new()
end

