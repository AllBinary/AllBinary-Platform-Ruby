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


#ImageCacheOpenGLESJavaLibrary
class OpenGLImageCacheFactory
    

    def self.getInstance()
        return OpenGLImageCacheFactory::IMAGE_CACHE
    end
    

    def self.init()
    end
end

require "org/allbinary/image/ImageCache"
require "org/allbinary/image/opengles/OpenGLImageCache"

class OpenGLImageCacheFactory
    IMAGE_CACHE = OpenGLImageCache.new()
end

