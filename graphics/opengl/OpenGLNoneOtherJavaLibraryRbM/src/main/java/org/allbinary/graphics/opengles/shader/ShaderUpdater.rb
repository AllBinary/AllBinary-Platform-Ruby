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

# require "javax/microedition/khronos/egl/EGLConfig"
# require "javax/microedition/khronos/opengles/GL10"

class ShaderUpdater
    attr_accessor :commonStrings, :rendererStrings

    def initialize_fields
        @commonStrings = CommonStrings.getInstance()
        @rendererStrings = RendererStrings.getInstance()
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return ShaderUpdater.instance
    end
    

    def onSurfaceCreated(gl, eglConfig)
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/graphics/opengles/renderer/RendererStrings"
require "org/allbinary/string/CommonStrings"

class ShaderUpdater
    @@instance = ShaderUpdater.new()
end

