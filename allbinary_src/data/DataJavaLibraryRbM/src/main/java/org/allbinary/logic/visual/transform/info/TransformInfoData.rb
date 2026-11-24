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


module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info

class TransformInfoData
    attr_accessor :PARENT, :MAPPED, :NAME, :DESCRIPTION, :CATEGORY, :OBJECTFILENAME, :OBJECT, :OBJECTCONFIGFILENAME, :OBJECTCONFIG, :TEMPLATEFILENAME, :TEMPLATE, :DATAFILENAME, :DATA, :LABEL, :OWNER, :PARTIAL

    def jfields_org_allbinary_logic_visual_transform_info_TransformInfoData
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
        jfields_org_allbinary_logic_visual_transform_info_TransformInfoData
    end

    def self.instance()
        TransformInfoData.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        TransformInfoData.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = TransformInfoData.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "TransformInfoData"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

begin
    TransformInfoData.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

