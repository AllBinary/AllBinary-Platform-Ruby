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
require "org/allbinary/graphics/opengles/shader/ShaderUpdater"

module ::Org; module Allbinary; module Graphics; module Opengles; module Shader

class CompositeShaderUpdater < ShaderUpdater
    attr_accessor :commonSeps, :shaderStrings, :uniformBlockHandleArray, :uniformBlockArray, :uniformHandleArray, :uniformArray, :attributeHandleArray, :attributeArray

    def jfields_org_allbinary_graphics_opengles_shader_CompositeShaderUpdater
        @commonSeps = ::Org::Allbinary::StringPackage::CommonSeps.getInstance()
        @shaderStrings = ShaderStrings.getInstance()
        @uniformBlockHandleArray = nil unless instance_variable_defined?(:@uniformBlockHandleArray)
        @uniformBlockArray = nil unless instance_variable_defined?(:@uniformBlockArray)
        @uniformHandleArray = nil unless instance_variable_defined?(:@uniformHandleArray)
        @uniformArray = nil unless instance_variable_defined?(:@uniformArray)
        @attributeHandleArray = nil unless instance_variable_defined?(:@attributeHandleArray)
        @attributeArray = nil unless instance_variable_defined?(:@attributeArray)
    end
    

    def self.getInstance()
        return CompositeShaderUpdater.instanceC
    end
    

    def initialize(uniformBlockArray, uniformArray, attributeArray, attributeHandleArray)
        super()
        jfields_org_allbinary_graphics_opengles_shader_CompositeShaderUpdater
        @uniformBlockArray = uniformBlockArray
        @uniformBlockHandleArray = (Array.new(@uniformBlockArray.length, 0)).tap { |java_array| java_array.instance_variable_set(:@java_component, :I) }
        @uniformArray = uniformArray
        @uniformHandleArray = (Array.new(@uniformArray.length, 0)).tap { |java_array| java_array.instance_variable_set(:@java_component, :I) }
        @attributeArray = attributeArray
        @attributeHandleArray = attributeHandleArray
    end
    

    def onSurfaceCreated(gl, eglConfig, programHandle)
    end
    java_overload :onSurfaceCreated, 3
    

    def onSurfaceDestroyed(gl)
    end
    java_overload :onSurfaceDestroyed, 1

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
            @@instanceC = CompositeShaderUpdater.new(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().getArrayInstance(), ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().getArrayInstance(), ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().getArrayInstance(), ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_INT_ARRAY)
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

module ::Javax; module Microedition; module Khronos; module Egl; autoload :EGLConfig, "javax/microedition/khronos/egl/EGLConfig" unless const_defined?(:EGLConfig, false); end; end; end; end
module ::Javax; module Microedition; module Khronos; module Opengles; autoload :GL10, "javax/microedition/khronos/opengles/GL10" unless const_defined?(:GL10, false); end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
autoload :ShaderStrings, "org/allbinary/graphics/opengles/shader/ShaderStrings" unless const_defined?(:ShaderStrings, false)

begin
    CompositeShaderUpdater.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

