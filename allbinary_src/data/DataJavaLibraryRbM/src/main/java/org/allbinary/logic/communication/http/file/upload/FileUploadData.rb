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


class FileUploadData
    attr_accessor :FILE, :UPLOAD_TO_FILE_PATH, :FILE_DATA

    def initialize_fields
        @FILE = "download_file_permissions.xml"
        @UPLOAD_TO_FILE_PATH = "FILE_UPLOAD_UPLOAD_TO_FILE_PATH"
        @FILE_DATA = "FILE_UPLOAD_FILE_DATA"
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return FileUploadData.instance
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

class FileUploadData
    @@instance = FileUploadData.new()
end

