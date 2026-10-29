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

# require "jsinterop/annotations/JsType"
# require "jsinterop/annotations/JsMethod"
# require "jsinterop/annotations/JsConstructor"
# require "jsinterop/annotations/JsProperty"
require "org/allbinary/logic/util/cache/BaseBasicArrayListCache"
require "org/allbinary/logic/util/cache/CacheInterface"

class IndexedBasicArrayListCache < BaseBasicArrayListCache
    include CacheInterface
    attr_accessor :commonStrings, :size, :index

    def initialize_fields
        @commonStrings = CommonStrings.getInstance()
        @size = 0
        @index = 0
    end
    

    # throws Exception
    def self.createCache(size)
        indexedBasicArrayListCache = IndexedBasicArrayListCache.new()
        indexedBasicArrayListCache.init(size)
        return indexedBasicArrayListCache
    end
    

    def initialize()
        super()
        initialize_fields
    end
    

    # throws Exception
    def init(size)
        if @size < size
            @list.ensureCapacity(size)
            (size - 1).step(@size, -(1)) do |index|
                self.addDefault()
            end
            @size = size
        end
    end
    

    def getAt(index)
        return @list.objectArray[index]
    end
    

    # throws Exception
    def addDefault()
    end
    

    # throws Exception
    def addObject(anyType)
        @list.add(anyType)
    end
    

    # throws Exception
    def add(cacheableInterface)
        @list.add(cacheableInterface)
    end
    

    # throws Exception
    def addArray(cacheableInterfaces)
        raise StandardError.new("No Imple")
    end
    

    def clear()
        @index = 0
    end
end

require "org/allbinary/string/CommonStrings"
require "org/allbinary/logic/util/cache/CacheableInterface"

