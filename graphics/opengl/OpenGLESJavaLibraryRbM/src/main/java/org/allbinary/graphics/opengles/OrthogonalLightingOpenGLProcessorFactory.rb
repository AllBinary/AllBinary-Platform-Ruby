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

class OrthogonalLightingOpenGLProcessorFactory
    attr_accessor :sceneLightingOrthogonalModeOpenGLProcessor, :sceneLightsOrthogonalModeOpenGLProcessor

    def jfields_org_allbinary_graphics_opengles_OrthogonalLightingOpenGLProcessorFactory
        @sceneLightingOrthogonalModeOpenGLProcessor = NullOpenGLProcessorFactory.getInstance()
        @sceneLightsOrthogonalModeOpenGLProcessor = NullOpenGLProcessorFactory.getInstance()
    end

    def initialize
        jfields_org_allbinary_graphics_opengles_OrthogonalLightingOpenGLProcessorFactory
    end
    

    def self.getInstance()
        return @@instance
    end

    def self.instance()
        OrthogonalLightingOpenGLProcessorFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        OrthogonalLightingOpenGLProcessorFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = OrthogonalLightingOpenGLProcessorFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "OrthogonalLightingOpenGLProcessorFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :NullOpenGLProcessorFactory, "org/allbinary/graphics/opengles/NullOpenGLProcessorFactory" unless const_defined?(:NullOpenGLProcessorFactory, false)
autoload :OpenGLProcessor, "org/allbinary/graphics/opengles/OpenGLProcessor" unless const_defined?(:OpenGLProcessor, false)

begin
    OrthogonalLightingOpenGLProcessorFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

