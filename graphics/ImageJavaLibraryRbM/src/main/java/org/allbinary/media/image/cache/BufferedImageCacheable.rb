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
# package org.allbinary.media.image.cache

# require "java/awt/image/BufferedImage"
require "org/allbinary/logic/util/cache/CacheableInterface"

class BufferedImageCacheable
    include CacheableInterface
    attr_accessor :key, :bufferedImage

    def initialize_fields
        @key = nil
        @bufferedImage = nil
    end
    

    def initialize(key)
        initialize_fields
        @key = key
        self.setBufferedImage(BufferedImage.new(key.getWidth(), key.getHeight(), key.getType()))
    end
    

    def getKey()
        return @key
    end
    

    def getBufferedImage()
        return @bufferedImage
    end
    

    def setBufferedImage(bufferedImage)
        @bufferedImage = bufferedImage
    end
    

    def toString()
        stringBuffer = StringMaker.new()
        stringBuffer.append(self.class.name)
        stringBuffer.append(" ")
        stringBuffer.append(self.getKey().to_s)
        return stringBuffer.to_s
    end
    alias_method :to_s, :toString
end

require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/media/image/cache/BufferedImageInfo"

