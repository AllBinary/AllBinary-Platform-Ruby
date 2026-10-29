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
# package org.allbinary.logic.visual.transform.info


class TransformInfoData
    attr_accessor :PARENT, :MAPPED, :NAME, :DESCRIPTION, :CATEGORY, :OBJECTFILENAME, :OBJECT, :OBJECTCONFIGFILENAME, :OBJECTCONFIG, :TEMPLATEFILENAME, :TEMPLATE, :DATAFILENAME, :DATA, :LABEL, :OWNER, :PARTIAL

    def initialize_fields
        @PARENT = "TRANSFORM_INFO_PARENT"
        @MAPPED = "TRANSFORM_INFO_MAPPED"
        @NAME = "TRANSFORM_INFO_NAME"
        @DESCRIPTION = "TRANSFORM_INFO_DESCRIPTION"
        @CATEGORY = "TRANSFORM_INFO_CATEGORY"
        @OBJECTFILENAME = "TRANSFORM_INFO_OBJECTFILENAME"
        @OBJECT = "TRANSFORM_INFO_OBJECT"
        @OBJECTCONFIGFILENAME = "TRANSFORM_INFO_OBJECTCONFIGFILENAME"
        @OBJECTCONFIG = "TRANSFORM_INFO_OBJECTCONFIG"
        @TEMPLATEFILENAME = "TRANSFORM_INFO_TEMPLATEFILENAME"
        @TEMPLATE = "TRANSFORM_INFO_TEMPLATE"
        @DATAFILENAME = "TRANSFORM_INFO_DATAFILENAME"
        @DATA = "TRANSFORM_INFO_DATA"
        @LABEL = "TRANSFORM_INFO_LABEL"
        @OWNER = "OWNER_" + @NAME
        @PARTIAL = "PARTIAL_" + @NAME
    end
    

    def self.getInstance()
        return TransformInfoData.instance
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

class TransformInfoData
    @@instance = TransformInfoData.new()
end

