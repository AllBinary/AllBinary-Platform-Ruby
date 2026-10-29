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


class OpenGLVersionValidator
    attr_accessor :EGL_CONTEXT_CLIENT_VERSION_VALUE

    def initialize_fields
        @EGL_CONTEXT_CLIENT_VERSION_VALUE = -1
    end

    def initialize
        initialize_fields
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
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/graphics/opengles/shader/ShaderComposite"

class OpenGLVersionValidator
    @@instance = OpenGLVersionValidator.new()
end

