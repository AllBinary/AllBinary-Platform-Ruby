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
# package org.allbinary.logic.visual.transform.template.customizer.widgets.title


module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Template; module Customizer; module Widgets; module Title

class TitleData
    attr_accessor :NAME, :TEXT, :VIEWNAMEKEY, :MAXLEN

    def jfields_org_allbinary_logic_visual_transform_template_customizer_widgets_title_TitleData
        @NAME = "TITLE_NAME"
        @TEXT = "TITLE_TEXT"
        @VIEWNAMEKEY = "Title"
        @MAXLEN = 255
    end
    

    def self.getInstance()
        return TitleData.instance
    end
    

    def initialize()
        jfields_org_allbinary_logic_visual_transform_template_customizer_widgets_title_TitleData
    end

    def self.instance()
        TitleData.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        TitleData.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = TitleData.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "TitleData"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

begin
    TitleData.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end; end; end; end

