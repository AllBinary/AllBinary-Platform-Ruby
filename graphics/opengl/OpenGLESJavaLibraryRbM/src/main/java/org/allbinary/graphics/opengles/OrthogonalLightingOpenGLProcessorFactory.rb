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


class OrthogonalLightingOpenGLProcessorFactory
    attr_accessor :sceneLightingOrthogonalModeOpenGLProcessor, :sceneLightsOrthogonalModeOpenGLProcessor

    def initialize_fields
        @sceneLightingOrthogonalModeOpenGLProcessor = NullOpenGLProcessorFactory.getInstance()
        @sceneLightsOrthogonalModeOpenGLProcessor = NullOpenGLProcessorFactory.getInstance()
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return OrthogonalLightingOpenGLProcessorFactory.instance
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/graphics/opengles/NullOpenGLProcessorFactory"
require "org/allbinary/graphics/opengles/OpenGLProcessor"

class OrthogonalLightingOpenGLProcessorFactory
    @@instance = OrthogonalLightingOpenGLProcessorFactory.new()
end

