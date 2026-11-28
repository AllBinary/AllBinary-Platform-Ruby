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

require "java/lang/JavaOverload"
require "org/allbinary/graphics/opengles/shader/ShaderComposite"

module ::Org; module Allbinary; module Graphics; module Opengles; module Shader

class NullShaderComposite < ShaderComposite
    

    def self.getInstance()
        return @@instance
    end
    

    def initialize(requiresOpenGLVersion, shaderArray, compositeShaderUpdater, shaderInitializer, modelViewProjection, colorOpenGLProcessor, vertexOpenGLProcessor, disableProgramShaderOpenGLProcessor)
        super(requiresOpenGLVersion, shaderArray, compositeShaderUpdater, shaderInitializer, modelViewProjection, colorOpenGLProcessor, vertexOpenGLProcessor, disableProgramShaderOpenGLProcessor)
        @useProgramShaderOpenGLProcessor = ::Org::Allbinary::Graphics::Opengles::NullOpenGLProcessorFactory.getInstance()
    end

    def self.instance()
        NullShaderComposite.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        NullShaderComposite.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = Class.new(NullShaderComposite.is_a?(Class) ? NullShaderComposite : Object) do
        include(NullShaderComposite) unless NullShaderComposite.is_a?(Class)
        

        def init(gl)
        end
        java_overload :init, 1
    end.new(::Org::Allbinary::Graphics::Opengles::OpenGLCapabilities.getInstance().VERSION_2_0, [Shader.new(), Shader.new()], CompositeShaderUpdater.getInstance(), ShaderInitializer.getInstance(), ModelViewProjection.getInstance(), ::Org::Allbinary::Graphics::Opengles::NullOpenGLProcessorFactory.getInstance(), ::Org::Allbinary::Graphics::Opengles::NullOpenGLProcessorFactory.getInstance(), ::Org::Allbinary::Graphics::Opengles::NullOpenGLProcessorFactory.getInstance())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "NullShaderComposite"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Javax; module Microedition; module Khronos; module Opengles; autoload :GL10, "javax/microedition/khronos/opengles/GL10" unless const_defined?(:GL10, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Opengles; autoload :NullOpenGLProcessorFactory, "org/allbinary/graphics/opengles/NullOpenGLProcessorFactory" unless const_defined?(:NullOpenGLProcessorFactory, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Opengles; autoload :OpenGLCapabilities, "org/allbinary/graphics/opengles/OpenGLCapabilities" unless const_defined?(:OpenGLCapabilities, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Opengles; autoload :OpenGLProcessor, "org/allbinary/graphics/opengles/OpenGLProcessor" unless const_defined?(:OpenGLProcessor, false); end; end; end; end
autoload :CompositeShaderUpdater, "org/allbinary/graphics/opengles/shader/CompositeShaderUpdater" unless const_defined?(:CompositeShaderUpdater, false)
autoload :ModelViewProjection, "org/allbinary/graphics/opengles/shader/ModelViewProjection" unless const_defined?(:ModelViewProjection, false)
autoload :Shader, "org/allbinary/graphics/opengles/shader/Shader" unless const_defined?(:Shader, false)
autoload :ShaderInitializer, "org/allbinary/graphics/opengles/shader/ShaderInitializer" unless const_defined?(:ShaderInitializer, false)

begin
    NullShaderComposite.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

