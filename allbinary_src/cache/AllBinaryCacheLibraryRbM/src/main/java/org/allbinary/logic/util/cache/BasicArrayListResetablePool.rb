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

require "org/allbinary/logic/util/cache/AbstractArrayListPool"

class BasicArrayListResetablePool < AbstractArrayListPool
    

    def initialize(cacheableInterfaceFactoryInterface)
        super(cacheableInterfaceFactoryInterface)
    end
    

    def clear()
    end
    

    # throws Exception
    def remove(key)
        size = @buffers.size()
        if size > 0
            return @buffers.removeAt(size - 1)
        else
            return @cacheableInterfaceFactoryInterface.getInstance(key)
        end
    end
end

require "org/allbinary/logic/util/cache/CacheableInterface"
require "org/allbinary/logic/util/cache/CacheableInterfaceFactoryInterface"

