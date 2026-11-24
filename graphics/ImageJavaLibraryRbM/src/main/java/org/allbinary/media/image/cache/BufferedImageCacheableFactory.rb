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
require "org/allbinary/logic/util/cache/CacheableInterfaceFactoryInterface"

module ::Org; module Allbinary; module Media; module Image; module Cache

class BufferedImageCacheableFactory
    include ::Org::Allbinary::Logic::Util::Cache::CacheableInterfaceFactoryInterface
    

    def initialize()
    end
    

    def getInstance(key)
        return BufferedImageCacheable.new(key)
    end
    java_overload :getInstance, 1
end

module ::Org; module Allbinary; module Logic; module Util; module Cache; autoload :CacheableInterface, "org/allbinary/logic/util/cache/CacheableInterface" unless const_defined?(:CacheableInterface, false); end; end; end; end; end
autoload :BufferedImageCacheable, "org/allbinary/media/image/cache/BufferedImageCacheable" unless const_defined?(:BufferedImageCacheable, false)
autoload :BufferedImageInfo, "org/allbinary/media/image/cache/BufferedImageInfo" unless const_defined?(:BufferedImageInfo, false)

end; end; end; end; end

