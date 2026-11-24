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


module ::Org; module Allbinary; module Platform; module Graphics

class PlatformBitmapBase
    attr_accessor :alpha, :basicColor

    def jfields_org_allbinary_platform_graphics_PlatformBitmapBase
        @alpha = 255
        @basicColor = ::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance().NULL_COLOR
    end

    def initialize
        jfields_org_allbinary_platform_graphics_PlatformBitmapBase
    end
    

    def getWidth()
        return 0
    end
    

    def getHeight()
        return 0
    end
    

    def getImage()
        return ::Javax::Microedition::Lcdui::NullImage::NULL_IMAGE
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

module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :NullImage, "javax/microedition/lcdui/NullImage" unless const_defined?(:NullImage, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory" unless const_defined?(:BasicColorFactory, false); end; end; end; end

begin
    PlatformBitmapBase.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

