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

# require "javax/microedition/lcdui/Image"
require "org/allbinary/image/opengles/OpenGLImageFactory"

class OpenGLESGL11ExtImageFactory < OpenGLImageFactory
    

    def getInstance(image, bitmapFactory, textureFactory)
        return OpenGLESGL11ExtImage.new(image, bitmapFactory, textureFactory)
    end
end

require "org/allbinary/platform/graphics/PlatformBitmapBaseFactory"
require "org/allbinary/platform/opengles/PlatformTextureBaseFactory"
require "org/allbinary/image/opengles/OpenGLESGL11ExtImage"

