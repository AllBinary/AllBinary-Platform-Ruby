# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.allbinary.graphics.opengles.shader


module ::Org; module Allbinary; module Graphics; module Opengles; module Shader

class ShaderStrings
    attr_accessor :NO_PROGRAM_HANDLE, :UNIFORM_BLOCK_HANDLE, :UNIFORM_HANDLE, :UNIFORM_ATTRIBUTE_HANDLE

    def jfields_org_allbinary_graphics_opengles_shader_ShaderStrings
        @NO_PROGRAM_HANDLE = "No program handle"
        @UNIFORM_BLOCK_HANDLE = "Uniform Block Handle: "
        @UNIFORM_HANDLE = "Uniform Handle: "
        @UNIFORM_ATTRIBUTE_HANDLE = "Uniform Attribute Handle: "
    end

    def initialize
        jfields_org_allbinary_graphics_opengles_shader_ShaderStrings
    end
    

    def self.getInstance()
        return ShaderStrings.instance
    end

    def self.instance()
        ShaderStrings.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        ShaderStrings.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = ShaderStrings.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ShaderStrings"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

begin
    ShaderStrings.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

