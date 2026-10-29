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


#OpenGLNoneOtherJavaLibrary
class OpenGLImageCacheFactory
    

    def self.getInstance()
        return OpenGLImageCacheFactory::IMAGE_CACHE
    end
    

    def self.init()
        if OpenGLImageCacheFactory::IMAGE_CACHE == nil
        end
    end
end

require "org/allbinary/image/ImageCache"

class OpenGLImageCacheFactory
    IMAGE_CACHE = ImageCache::NULL_IMAGE_CACHE
end

