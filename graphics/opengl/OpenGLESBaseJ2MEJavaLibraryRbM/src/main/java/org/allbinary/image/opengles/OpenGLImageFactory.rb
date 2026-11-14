#
# AllBinary Open License Version 1
# Copyright (c) 2011 AllBinary
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


class OpenGLImageFactory
    

    def getInstance(image, bitmapFactory, textureFactory)
        raise RuntimeError.new()
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_OPENGL_IMAGE_FACTORY, OpenGLImageFactory.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "OpenGLImageFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_OPENGL_IMAGE_FACTORY].include?(name)
        end
        super
    end
end

autoload :Image, "javax/microedition/lcdui/Image"
autoload :PlatformBitmapBaseFactory, "org/allbinary/platform/graphics/PlatformBitmapBaseFactory"
autoload :PlatformTextureBaseFactory, "org/allbinary/platform/opengles/PlatformTextureBaseFactory"

begin
    OpenGLImageFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

