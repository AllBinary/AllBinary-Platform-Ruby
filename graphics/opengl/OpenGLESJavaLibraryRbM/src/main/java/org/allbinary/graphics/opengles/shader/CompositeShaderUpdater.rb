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
require "org/allbinary/graphics/opengles/shader/ShaderUpdater"

class CompositeShaderUpdater < ShaderUpdater
    attr_accessor :commonSeps, :shaderStrings, :uniformBlockHandleArray, :uniformBlockArray, :uniformHandleArray, :uniformArray, :attributeHandleArray, :attributeArray

    def initialize_fields
        @commonSeps = CommonSeps.getInstance()
        @shaderStrings = ShaderStrings.getInstance()
        @uniformBlockHandleArray = nil
        @uniformBlockArray = nil
        @uniformHandleArray = nil
        @uniformArray = nil
        @attributeHandleArray = nil
        @attributeArray = nil
    end
    

    def self.getInstance()
        return CompositeShaderUpdater.instanceC
    end
    

    def initialize(uniformBlockArray, uniformArray, attributeArray, attributeHandleArray)
        super()
        initialize_fields
        @uniformBlockArray = uniformBlockArray
        @uniformBlockHandleArray = Array.new(@uniformBlockArray.length, 0)
        @uniformArray = uniformArray
        @uniformHandleArray = Array.new(@uniformArray.length, 0)
        @attributeArray = attributeArray
        @attributeHandleArray = attributeHandleArray
    end
    

    def onSurfaceCreated(gl, eglConfig, programHandle)
    end
    

    def onSurfaceDestroyed(gl)
    end

    def self.instanceC()
        return defined?(@@instanceC) ? @@instanceC : nil
    end

    def self.instanceC=(value)
        @@instanceC = value
    end
end

require "org/allbinary/logic/NullUtil"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/graphics/opengles/shader/ShaderStrings"

class CompositeShaderUpdater
    @@instanceC = CompositeShaderUpdater.new(StringUtil.getInstance().getArrayInstance(), StringUtil.getInstance().getArrayInstance(), StringUtil.getInstance().getArrayInstance(), NullUtil.getInstance().NULL_INT_ARRAY)
end

