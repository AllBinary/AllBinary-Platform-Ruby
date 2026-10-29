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

class PlatformBitmapBaseFactory
    

    def createBitmap(image)
        return PlatformBitmapBase::NULL_PLATFORM_BITMAP_BASE
    end
end

require "org/allbinary/platform/graphics/PlatformBitmapBase"

class PlatformBitmapBaseFactory
    NULL_PLATFORM_BITMAP_BASE_FACTORY = PlatformBitmapBaseFactory.new()
end

