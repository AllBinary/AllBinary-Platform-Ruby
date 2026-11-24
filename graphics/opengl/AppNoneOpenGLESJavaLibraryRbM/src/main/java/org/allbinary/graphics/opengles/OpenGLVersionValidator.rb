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
# package org.allbinary.graphics.opengles


module ::Org; module Allbinary; module Graphics; module Opengles

class OpenGLVersionValidator
    attr_accessor :EGL_CONTEXT_CLIENT_VERSION_VALUE

    def jfields_org_allbinary_graphics_opengles_OpenGLVersionValidator
        @EGL_CONTEXT_CLIENT_VERSION_VALUE = -1
    end

    def initialize
        jfields_org_allbinary_graphics_opengles_OpenGLVersionValidator
    end
    

    def self.getInstance()
        return OpenGLVersionValidator.instance
    end
    

    def isGL31OrHigher()
        return false
    end
    

    def isAvailable(glVersionRequired)
        return false
    end
    

    def setShaderComposite(shaderComposite, anyType)
    end

    def self.instance()
        OpenGLVersionValidator.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        OpenGLVersionValidator.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = OpenGLVersionValidator.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "OpenGLVersionValidator"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Graphics; module Opengles; module Shader; autoload :ShaderComposite, "org/allbinary/graphics/opengles/shader/ShaderComposite" unless const_defined?(:ShaderComposite, false); end; end; end; end; end

begin
    OpenGLVersionValidator.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

