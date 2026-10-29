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
# package org.allbinary.logic.visual.transform.info.objectConfig


class TransformInfoObjectConfigData
    attr_accessor :NAME, :VARKEY, :UNCRYPTED_EXTENSION, :ENCRYPTED_EXTENSION

    def initialize_fields
        @NAME = "OBJECTCONFIG_NAME"
        @VARKEY = "$"
        @UNCRYPTED_EXTENSION = CommonDataFileStrings.getInstance().UNCRYPTED_EXTENSION
        @ENCRYPTED_EXTENSION = CommonDataFileStrings.getInstance().ENCRYPTED_EXTENSION
    end
    

    def self.getInstance()
        return TransformInfoObjectConfigData.instance
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

require "org/allbinary/logic/io/file/CommonDataFileStrings"

class TransformInfoObjectConfigData
    @@instance = TransformInfoObjectConfigData.new()
end

