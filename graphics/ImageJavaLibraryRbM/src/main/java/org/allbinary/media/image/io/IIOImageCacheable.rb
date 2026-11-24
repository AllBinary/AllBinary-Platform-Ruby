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

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
# require "java/awt/image/BufferedImage"
# require "javax/imageio/IIOImage"
require "org/allbinary/logic/util/cache/CacheableInterface"

module ::Org; module Allbinary; module Media; module Image; module Io

class IIOImageCacheable
    include ::Org::Allbinary::Logic::Util::Cache::CacheableInterface
    attr_accessor :key, :iioImage

    def jfields_org_allbinary_media_image_io_IIOImageCacheable
        @key = nil unless instance_variable_defined?(:@key)
        @iioImage = nil unless instance_variable_defined?(:@iioImage)
    end
    

    def initialize(key)
        jfields_org_allbinary_media_image_io_IIOImageCacheable
        @key = key
    end
    

    def getKey()
        return @key
    end
    java_overload :getKey, 0
    

    def setBufferedImage(bufferedImage)
        self.setIioImage(IIOImage.new(bufferedImage, nil, nil))
    end
    java_overload :setBufferedImage, 1
    

    def getIioImage()
        return @iioImage
    end
    java_overload :getIioImage, 0
    

    def setIioImage(iioImage)
        @iioImage = iioImage
    end
    java_overload :setIioImage, 1
    

    def toString()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(self.class.java_name)
        stringBuffer.append(" Reusable IIOImage")
        return stringBuffer.to_s
    end
    java_overload :toString, 0
    alias_method :to_s, :toString
end

module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end

end; end; end; end; end

