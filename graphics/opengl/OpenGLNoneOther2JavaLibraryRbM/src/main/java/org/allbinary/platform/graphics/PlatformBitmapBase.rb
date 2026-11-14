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
# package org.allbinary.platform.graphics


class PlatformBitmapBase
    attr_accessor :alpha, :basicColor

    def initialize_fields
        @alpha = 255
        @basicColor = BasicColorFactory.getInstance().NULL_COLOR
    end

    def initialize
        initialize_fields
    end
    

    def getWidth()
        return 0
    end
    

    def getHeight()
        return 0
    end
    

    def getImage()
        return NullImage::NULL_IMAGE
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_PLATFORM_BITMAP_BASE, PlatformBitmapBase.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "PlatformBitmapBase"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_PLATFORM_BITMAP_BASE].include?(name)
        end
        super
    end
end

autoload :Image, "javax/microedition/lcdui/Image"
autoload :NullImage, "javax/microedition/lcdui/NullImage"
autoload :BasicColor, "org/allbinary/graphics/color/BasicColor"
autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory"

begin
    PlatformBitmapBase.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

