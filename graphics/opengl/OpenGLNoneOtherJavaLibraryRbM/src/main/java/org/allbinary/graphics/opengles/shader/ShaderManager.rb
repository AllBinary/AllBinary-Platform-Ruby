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

class ShaderManager
    attr_accessor :LOAD_SHADER, :commonStrings, :GL_VERTEX_SHADER, :GL_FRAGMENT_SHADER

    def jfields_org_allbinary_graphics_opengles_shader_ShaderManager
        @LOAD_SHADER = "loadShader"
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @GL_VERTEX_SHADER = nil unless instance_variable_defined?(:@GL_VERTEX_SHADER)
        @GL_FRAGMENT_SHADER = nil unless instance_variable_defined?(:@GL_FRAGMENT_SHADER)
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def initialize(_GL_VERTEX_SHADER, _GL_FRAGMENT_SHADER)
        jfields_org_allbinary_graphics_opengles_shader_ShaderManager
        @GL_VERTEX_SHADER = _GL_VERTEX_SHADER
        @GL_FRAGMENT_SHADER = _GL_FRAGMENT_SHADER
    end
    

    def load(gl, resource, shaderAsStringArray, shaderType)
        return -1
    end
    

    def loadShader(gl, resource, stringList, shaderType)
        return -1
    end

    def self.instance()
        ShaderManager.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        ShaderManager.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = ShaderManager.new(-1, -1)
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ShaderManager"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Javax; module Microedition; module Khronos; module Opengles; autoload :GL10, "javax/microedition/khronos/opengles/GL10" unless const_defined?(:GL10, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end

begin
    ShaderManager.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

