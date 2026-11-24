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

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
# require "java/awt/image/BufferedImage"
require "org/allbinary/logic/util/cache/CacheableInterface"

module ::Org; module Allbinary; module Media; module Image; module Cache

class BufferedImageFrameCacheable
    include ::Org::Allbinary::Logic::Util::Cache::CacheableInterface
    attr_accessor :frame, :bufferedImage

    def jfields_org_allbinary_media_image_cache_BufferedImageFrameCacheable
        @frame = nil unless instance_variable_defined?(:@frame)
        @bufferedImage = nil unless instance_variable_defined?(:@bufferedImage)
    end
    

    def initialize(bufferedImage, frame)
        jfields_org_allbinary_media_image_cache_BufferedImageFrameCacheable
        @frame = frame
        self.setBufferedImage(bufferedImage)
    end
    

    def getKey()
        return @frame
    end
    java_overload :getKey, 0
    

    def getBufferedImage()
        return @bufferedImage
    end
    java_overload :getBufferedImage, 0
    

    def setBufferedImage(bufferedImage)
        @bufferedImage = bufferedImage
    end
    java_overload :setBufferedImage, 1
    

    def getFrame()
        return @frame
    end
    java_overload :getFrame, 0
    

    def setFrame(frame)
        @frame = frame
    end
    java_overload :setFrame, 1
    

    def toString()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(self.class.java_name)
        stringBuffer.append(" Frame: ")
        stringBuffer.appendlong(self.getFrame())
        return stringBuffer.to_s
    end
    java_overload :toString, 0
    alias_method :to_s, :toString
end

module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end

end; end; end; end; end

