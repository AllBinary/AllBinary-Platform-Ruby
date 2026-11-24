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

class BasicArrayListPool < AbstractArrayListPool
    

    def initialize(cacheableInterfaceFactoryInterface)
        super(cacheableInterfaceFactoryInterface)
    end
    

    def clear()
        @buffers.clear()
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
    

    # throws Exception
    def addAll(usedList)
        index = usedList.size()
        while (index -= 1) >= 0
            anyType = usedList.objectArray[index]
            self.add(anyType)
        end
        usedList.clear()
    end
    java_overload :addAll, 1
    

    # throws Exception
    def releaseUsedBackToPool(usedList)
        index = usedList.size()
        while (index -= 1) >= 0
            list = usedList.objectArray[index]
            if list.size() == 0
                usedList.removeAt(index)
                self.add(list)
            end
        end
    end
    java_overload :releaseUsedBackToPool, 1
end

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
autoload :BasicArrayListCacheable, "org/allbinary/logic/util/cache/BasicArrayListCacheable" unless const_defined?(:BasicArrayListCacheable, false)
autoload :CacheableInterface, "org/allbinary/logic/util/cache/CacheableInterface" unless const_defined?(:CacheableInterface, false)
autoload :CacheableInterfaceFactoryInterface, "org/allbinary/logic/util/cache/CacheableInterfaceFactoryInterface" unless const_defined?(:CacheableInterfaceFactoryInterface, false)

end; end; end; end; end

