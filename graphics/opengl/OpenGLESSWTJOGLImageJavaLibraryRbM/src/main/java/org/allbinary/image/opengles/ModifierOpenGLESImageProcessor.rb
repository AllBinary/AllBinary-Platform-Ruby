# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.image.opengles

require "java/lang/JavaOverload"
require "org/allbinary/image/opengles/OpenGLESImageProcessor"

module ::Org; module Allbinary; module Image; module Opengles

class ModifierOpenGLESImageProcessor < OpenGLESImageProcessor
    

    def self.getInstance()
        return ModifierOpenGLESImageProcessor.instanceC
    end
    

    def colorMask(gl, red, green, blue, alpha)
        gl.glColor4f(red, green, blue, alpha)
    end
    java_overload :colorMask, 5

    def self.instanceC()
        ModifierOpenGLESImageProcessor.java_static_fields unless @java_static_fields_started
        return defined?(@@instanceC) ? @@instanceC : nil
    end

    def self.instanceC=(value)
        ModifierOpenGLESImageProcessor.java_static_fields unless @java_static_fields_started
        @@instanceC = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instanceC = ModifierOpenGLESImageProcessor.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ModifierOpenGLESImageProcessor"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Javax; module Microedition; module Khronos; module Opengles; autoload :GL10, "javax/microedition/khronos/opengles/GL10" unless const_defined?(:GL10, false); end; end; end; end

begin
    ModifierOpenGLESImageProcessor.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

