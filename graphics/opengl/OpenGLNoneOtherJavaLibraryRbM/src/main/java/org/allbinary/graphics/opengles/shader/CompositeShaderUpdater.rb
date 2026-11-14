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

require "org/allbinary/graphics/opengles/shader/ShaderUpdater"

class CompositeShaderUpdater < ShaderUpdater
    attr_accessor :commonSeps

    def initialize_fields
        @commonSeps = CommonSeps.getInstance()
    end
    

    def self.getInstance()
        return CompositeShaderUpdater.instanceC
    end
    

    def initialize(uniformBlockArray, uniformArray, attributeArray, attributeHandleArray)
        super()
        initialize_fields
    end
    

    def onSurfaceCreated(gl, eglConfig, programHandle)
    end
    

    def onSurfaceDestroyed(gl)
    end

    def self.instanceC()
        CompositeShaderUpdater.java_static_fields unless @java_static_fields_started
        return defined?(@@instanceC) ? @@instanceC : nil
    end

    def self.instanceC=(value)
        CompositeShaderUpdater.java_static_fields unless @java_static_fields_started
        @@instanceC = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instanceC = CompositeShaderUpdater.new(StringUtil.getInstance().getArrayInstance(), StringUtil.getInstance().getArrayInstance(), StringUtil.getInstance().getArrayInstance(), NullUtil.getInstance().NULL_INT_ARRAY)
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "CompositeShaderUpdater"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :EGLConfig, "javax/microedition/khronos/egl/EGLConfig"
autoload :GL10, "javax/microedition/khronos/opengles/GL10"
autoload :NullUtil, "org/allbinary/logic/NullUtil"
autoload :StringUtil, "org/allbinary/logic/string/StringUtil"
autoload :CommonSeps, "org/allbinary/string/CommonSeps"

begin
    CompositeShaderUpdater.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

