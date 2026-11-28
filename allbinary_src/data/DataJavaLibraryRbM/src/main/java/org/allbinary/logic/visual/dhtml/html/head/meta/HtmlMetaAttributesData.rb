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
# package org.allbinary.logic.visual.dhtml.html.head.meta


module ::Org; module Allbinary; module Logic; module Visual; module Dhtml; module Html; module Head; module Meta

class HtmlMetaAttributesData
    attr_accessor :NAME_VALUE, :HTTP_EQUIV_VALUE

    def jfields_org_allbinary_logic_visual_dhtml_html_head_meta_HtmlMetaAttributesData
        @NAME_VALUE = "name"
        @HTTP_EQUIV_VALUE = "http-equiv"
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def initialize()
        jfields_org_allbinary_logic_visual_dhtml_html_head_meta_HtmlMetaAttributesData
    end

    def self.instance()
        HtmlMetaAttributesData.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        HtmlMetaAttributesData.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = HtmlMetaAttributesData.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "HtmlMetaAttributesData"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

begin
    HtmlMetaAttributesData.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end; end; end

