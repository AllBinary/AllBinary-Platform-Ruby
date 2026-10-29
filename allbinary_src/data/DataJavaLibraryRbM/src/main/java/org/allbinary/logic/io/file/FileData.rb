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


class FileData
    attr_accessor :NAME, :ISFILE, :ISDIRECTORY, :ISHIDDEN, :ISABSOLUTE, :ROOT_NAME, :PATH, :ABSOLUTE_PATH, :CANONICAL_PATH, :PARENT, :MINLEN, :MAXLEN, :MAXIMAGEFILESIZE, :MINIMAGEFILESIZE, :MAXDOWNLOADABLEFILESIZE, :MINDOWNLOADABLEFILESIZE

    def initialize_fields
        @NAME = "FILE_NAME"
        @ISFILE = "FILE_ISFILE"
        @ISDIRECTORY = "FILE_ISDIRECTORY"
        @ISHIDDEN = "FILE_ISHIDDEN"
        @ISABSOLUTE = "FILE_ISABSOLUTE"
        @ROOT_NAME = "FILE_ROOT_NAME"
        @PATH = "FILE_PATH"
        @ABSOLUTE_PATH = "FILE_ABSOLUTE_PATH"
        @CANONICAL_PATH = "FILE_CANONICAL_PATH"
        @PARENT = "FILE_PARENT"
        @MINLEN = 1
        @MAXLEN = 120
        @MAXIMAGEFILESIZE = 1048576
        @MINIMAGEFILESIZE = 32
        @MAXDOWNLOADABLEFILESIZE = 1048576 * 20
        @MINDOWNLOADABLEFILESIZE = 1
    end
    

    def self.getInstance()
        return FileData.instance
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

class FileData
    @@instance = FileData.new()
end

