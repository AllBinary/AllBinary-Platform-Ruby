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

class BufferedImageFrameCacheable
    include CacheableInterface
    attr_accessor :frame, :bufferedImage

    def initialize_fields
        @frame = nil
        @bufferedImage = nil
    end
    

    def initialize(bufferedImage, frame)
        initialize_fields
        @frame = frame
        self.setBufferedImage(bufferedImage)
    end
    

    def getKey()
        return @frame
    end
    

    def getBufferedImage()
        return @bufferedImage
    end
    

    def setBufferedImage(bufferedImage)
        @bufferedImage = bufferedImage
    end
    

    def getFrame()
        return @frame
    end
    

    def setFrame(frame)
        @frame = frame
    end
    

    def toString()
        stringBuffer = StringMaker.new()
        stringBuffer.append(self.class.name)
        stringBuffer.append(" Frame: ")
        stringBuffer.appendlong(self.getFrame())
        return stringBuffer.to_s
    end
    alias_method :to_s, :toString
end

require "org/allbinary/logic/string/StringMaker"

