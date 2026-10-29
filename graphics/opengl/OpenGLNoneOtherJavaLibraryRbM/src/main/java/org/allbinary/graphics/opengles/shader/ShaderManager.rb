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

# require "javax/microedition/khronos/opengles/GL10"

class ShaderManager
    attr_accessor :LOAD_SHADER, :commonStrings, :GL_VERTEX_SHADER, :GL_FRAGMENT_SHADER

    def initialize_fields
        @LOAD_SHADER = "loadShader"
        @commonStrings = CommonStrings.getInstance()
        @GL_VERTEX_SHADER = nil
        @GL_FRAGMENT_SHADER = nil
    end
    

    def self.getInstance()
        return ShaderManager.instance
    end
    

    def initialize(_GL_VERTEX_SHADER, _GL_FRAGMENT_SHADER)
        initialize_fields
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
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/string/CommonStrings"
require "org/allbinary/util/BasicArrayList"

class ShaderManager
    @@instance = ShaderManager.new(-1, -1)
end

