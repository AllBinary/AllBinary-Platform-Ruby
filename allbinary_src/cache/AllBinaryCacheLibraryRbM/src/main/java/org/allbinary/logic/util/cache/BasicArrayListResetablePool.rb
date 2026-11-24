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
# package org.allbinary.logic.util.cache

require "java/lang/JavaOverload"
require "org/allbinary/logic/util/cache/AbstractArrayListPool"

module ::Org; module Allbinary; module Logic; module Util; module Cache

class BasicArrayListResetablePool < AbstractArrayListPool
    

    def initialize(cacheableInterfaceFactoryInterface)
        super(cacheableInterfaceFactoryInterface)
    end
    

    def clear()
    end
    java_overload :clear, 0
    

    # throws Exception
    def remove(key)
        size = @buffers.size()
        if size > 0
            return @buffers.removeAt(size - 1)
        else
            return @cacheableInterfaceFactoryInterface.getInstance(key)
        end
    end
    java_overload :remove, 1
end

autoload :CacheableInterface, "org/allbinary/logic/util/cache/CacheableInterface" unless const_defined?(:CacheableInterface, false)
autoload :CacheableInterfaceFactoryInterface, "org/allbinary/logic/util/cache/CacheableInterfaceFactoryInterface" unless const_defined?(:CacheableInterfaceFactoryInterface, false)

end; end; end; end; end

