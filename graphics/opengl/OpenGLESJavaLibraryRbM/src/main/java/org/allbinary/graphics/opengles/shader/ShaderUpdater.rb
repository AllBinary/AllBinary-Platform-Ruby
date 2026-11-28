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

class ShaderUpdater
    attr_accessor :commonStrings, :rendererStrings

    def jfields_org_allbinary_graphics_opengles_shader_ShaderUpdater
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @rendererStrings = ::Org::Allbinary::Graphics::Opengles::Renderer::RendererStrings.getInstance()
    end

    def initialize
        jfields_org_allbinary_graphics_opengles_shader_ShaderUpdater
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def onSurfaceCreated(gl, eglConfig)
    end

    def self.instance()
        ShaderUpdater.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        ShaderUpdater.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = ShaderUpdater.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ShaderUpdater"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Javax; module Microedition; module Khronos; module Egl; autoload :EGLConfig, "javax/microedition/khronos/egl/EGLConfig" unless const_defined?(:EGLConfig, false); end; end; end; end
module ::Javax; module Microedition; module Khronos; module Opengles; autoload :GL10, "javax/microedition/khronos/opengles/GL10" unless const_defined?(:GL10, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Opengles; module Renderer; autoload :RendererStrings, "org/allbinary/graphics/opengles/renderer/RendererStrings" unless const_defined?(:RendererStrings, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end

begin
    ShaderUpdater.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

