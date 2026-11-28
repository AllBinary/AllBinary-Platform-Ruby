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

class TransformInfosData
    attr_accessor :NAME, :GROUP, :ALL, :PREVIEW, :SMALL_PREVIEW

    def jfields_org_allbinary_logic_visual_transform_info_TransformInfosData
        @NAME = "TRANSFORM_INFOS_NAME"
        @GROUP = "TRANSFORM_INFOS_GROUP"
        @ALL = "TRANSFORM_INFOS_ALL"
        @PREVIEW = "TRANSFORM_INFOS_PREVIEW"
        @SMALL_PREVIEW = "TRANSFORM_INFOS_SMALL_PREVIEW"
    end
    

    def initialize()
        jfields_org_allbinary_logic_visual_transform_info_TransformInfosData
    end
    

    def self.getInstance()
        return @@instance
    end

    def self.instance()
        TransformInfosData.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        TransformInfosData.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = TransformInfosData.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "TransformInfosData"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

begin
    TransformInfosData.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

