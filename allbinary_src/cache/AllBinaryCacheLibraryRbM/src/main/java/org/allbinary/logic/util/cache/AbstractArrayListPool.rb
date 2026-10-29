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

require "org/allbinary/logic/util/cache/PoolInterface"

class AbstractArrayListPool
    include PoolInterface
    attr_accessor :commonStrings, :buffers, :cacheableInterfaceFactoryInterface

    def initialize_fields
        @commonStrings = CommonStrings.getInstance()
        @buffers = BasicArrayListD.new()
        @cacheableInterfaceFactoryInterface = nil
    end
    

    def initialize(cacheableInterfaceFactoryInterface)
        initialize_fields
        @cacheableInterfaceFactoryInterface = cacheableInterfaceFactoryInterface
    end
    

    # throws Exception
    def clear()
        raise StandardError.new(@commonStrings.NOT_IMPLEMENTED)
    end
    

    # throws Exception
    def remove(key)
        raise StandardError.new(@commonStrings.NOT_IMPLEMENTED)
    end
    

    # throws Exception
    def add(cacheableInterface)
        @buffers.add(cacheableInterface)
    end
    

    # throws Exception
    def addArray(cacheableInterfaces)
        (0...cacheableInterfaces.length).each do |index|
            @buffers.add(cacheableInterfaces[index])
        end
    end
end

require "org/allbinary/string/CommonStrings"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/logic/util/cache/CacheableInterface"
require "org/allbinary/logic/util/cache/CacheableInterfaceFactoryInterface"

