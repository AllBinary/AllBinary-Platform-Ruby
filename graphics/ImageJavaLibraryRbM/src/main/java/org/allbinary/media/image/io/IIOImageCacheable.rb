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
# package org.allbinary.media.image.io

# require "java/awt/image/BufferedImage"
# require "javax/imageio/IIOImage"
require "org/allbinary/logic/util/cache/CacheableInterface"

class IIOImageCacheable
    include CacheableInterface
    attr_accessor :key, :iioImage

    def initialize_fields
        @key = nil
        @iioImage = nil
    end
    

    def initialize(key)
        initialize_fields
        @key = key
    end
    

    def getKey()
        return @key
    end
    

    def setBufferedImage(bufferedImage)
        self.setIioImage(IIOImage.new(bufferedImage, nil, nil))
    end
    

    def getIioImage()
        return @iioImage
    end
    

    def setIioImage(iioImage)
        @iioImage = iioImage
    end
    

    def toString()
        stringBuffer = StringMaker.new()
        stringBuffer.append(self.class.name)
        stringBuffer.append(" Reusable IIOImage")
        return stringBuffer.to_s
    end
    alias_method :to_s, :toString
end

require "org/allbinary/logic/string/StringMaker"

