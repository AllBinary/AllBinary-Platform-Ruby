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

# require "javax/microedition/lcdui/Image"
# require "javax/microedition/lcdui/NullImage"

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
end

require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/graphics/color/BasicColorFactory"

class PlatformBitmapBase
    NULL_PLATFORM_BITMAP_BASE = PlatformBitmapBase.new()
end

