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
# package org.allbinary.logic.visual.transform.template.customizer.bodies


module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Template; module Customizer; module Bodies

class BodyData
    attr_accessor :NAME, :VIEWNAMEKEY, :MIN

    def jfields_org_allbinary_logic_visual_transform_template_customizer_bodies_BodyData
        @NAME = "BODY_NAME"
        @VIEWNAMEKEY = "Body"
        @MIN = 0
    end
    

    def initialize()
        jfields_org_allbinary_logic_visual_transform_template_customizer_bodies_BodyData
    end
    

    def self.getInstance()
        return @@instance
    end

    def self.instance()
        BodyData.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        BodyData.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = BodyData.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "BodyData"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

begin
    BodyData.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end; end; end

