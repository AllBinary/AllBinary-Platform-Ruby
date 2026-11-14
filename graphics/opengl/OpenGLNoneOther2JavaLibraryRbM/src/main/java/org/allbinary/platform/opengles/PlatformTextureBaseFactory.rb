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
# package org.allbinary.platform.opengles


class PlatformTextureBaseFactory
    attr_accessor :commonStrings

    def initialize_fields
        @commonStrings = CommonStrings.getInstance()
    end

    def initialize
        initialize_fields
    end
    

    def load(gl, target, level, image, border, flip)
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_PLATFORM_TEXTURE_BASE_FACTORY, PlatformTextureBaseFactory.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "PlatformTextureBaseFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_PLATFORM_TEXTURE_BASE_FACTORY].include?(name)
        end
        super
    end
end

autoload :GL10, "javax/microedition/khronos/opengles/GL10"
autoload :Image, "javax/microedition/lcdui/Image"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"

begin
    PlatformTextureBaseFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

