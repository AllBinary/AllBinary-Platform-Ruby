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
# package org.allbinary.graphics.color

require "java/lang/JavaOverload"
require "org/allbinary/logic/util/cache/CacheableInterfaceFactoryInterface"

module ::Org; module Allbinary; module Graphics; module Color

class ColorCacheableFactory
    include ::Org::Allbinary::Logic::Util::Cache::CacheableInterfaceFactoryInterface
    

    def initialize()
    end
    

    def getInstance(key)
        return ColorCacheable.new(key)
    end
    java_overload :getInstance, 1
end

module ::Org; module Allbinary; module Logic; module Util; module Cache; autoload :CacheableInterface, "org/allbinary/logic/util/cache/CacheableInterface" unless const_defined?(:CacheableInterface, false); end; end; end; end; end
autoload :ColorCacheable, "org/allbinary/graphics/color/ColorCacheable" unless const_defined?(:ColorCacheable, false)

end; end; end; end

