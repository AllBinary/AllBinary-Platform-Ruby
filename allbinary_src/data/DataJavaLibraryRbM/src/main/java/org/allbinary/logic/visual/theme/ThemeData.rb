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
# package org.allbinary.logic.visual.theme


module ::Org; module Allbinary; module Logic; module Visual; module Theme

class ThemeData
    attr_accessor :NAME, :PATH, :PREVIEW_IMAGE_NAME, :PREVIEW_IMAGE_PATH

    def jfields_org_allbinary_logic_visual_theme_ThemeData
        @NAME = "THEME_NAME"
        @PATH = "THEME_PATH"
        @PREVIEW_IMAGE_NAME = "THEME_PREVIEW_IMAGE_NAME"
        @PREVIEW_IMAGE_PATH = "THEME_PREVIEW_IMAGE_PATH"
    end
    

    def self.getInstance()
        return ThemeData.instance
    end
    

    def initialize()
        jfields_org_allbinary_logic_visual_theme_ThemeData
    end

    def self.instance()
        ThemeData.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        ThemeData.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = ThemeData.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ThemeData"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

begin
    ThemeData.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

