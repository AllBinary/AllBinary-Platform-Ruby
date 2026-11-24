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


module ::Org; module Allbinary; module Logic; module Io; module FilePackage

class FileData
    attr_accessor :NAME, :ISFILE, :ISDIRECTORY, :ISHIDDEN, :ISABSOLUTE, :ROOT_NAME, :PATH, :ABSOLUTE_PATH, :CANONICAL_PATH, :PARENT, :MINLEN, :MAXLEN, :MAXIMAGEFILESIZE, :MINIMAGEFILESIZE, :MAXDOWNLOADABLEFILESIZE, :MINDOWNLOADABLEFILESIZE

    def jfields_org_allbinary_logic_io_file_FileData
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
        jfields_org_allbinary_logic_io_file_FileData
    end

    def self.instance()
        FileData.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        FileData.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = FileData.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "FileData"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

begin
    FileData.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

