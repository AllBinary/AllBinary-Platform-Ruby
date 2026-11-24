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
# package org.allbinary.logic.communication.http.file.upload


module ::Org; module Allbinary; module Logic; module Communication; module Http; module FilePackage; module Upload

class FileUploadData
    attr_accessor :FILE, :UPLOAD_TO_FILE_PATH, :FILE_DATA

    def jfields_org_allbinary_logic_communication_http_file_upload_FileUploadData
        @FILE = "download_file_permissions.xml"
        @UPLOAD_TO_FILE_PATH = "FILE_UPLOAD_UPLOAD_TO_FILE_PATH"
        @FILE_DATA = "FILE_UPLOAD_FILE_DATA"
    end

    def initialize
        jfields_org_allbinary_logic_communication_http_file_upload_FileUploadData
    end
    

    def self.getInstance()
        return FileUploadData.instance
    end

    def self.instance()
        FileUploadData.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        FileUploadData.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = FileUploadData.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "FileUploadData"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

begin
    FileUploadData.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end; end

