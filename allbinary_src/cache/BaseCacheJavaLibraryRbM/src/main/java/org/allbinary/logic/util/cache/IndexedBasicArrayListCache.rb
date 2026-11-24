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
# require "jsinterop/annotations/JsType"
# require "jsinterop/annotations/JsMethod"
# require "jsinterop/annotations/JsConstructor"
# require "jsinterop/annotations/JsProperty"
require "org/allbinary/logic/util/cache/BaseBasicArrayListCache"
require "org/allbinary/logic/util/cache/CacheInterface"

module ::Org; module Allbinary; module Logic; module Util; module Cache

class IndexedBasicArrayListCache < BaseBasicArrayListCache
    include CacheInterface
    attr_accessor :commonStrings, :size, :index

    def jfields_org_allbinary_logic_util_cache_IndexedBasicArrayListCache
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
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
        jfields_org_allbinary_logic_util_cache_IndexedBasicArrayListCache
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
    java_overload :init, 1
    

    def getAt(index)
        return @list.objectArray[index]
    end
    java_overload :getAt, 1
    

    # throws Exception
    def addDefault()
    end
    java_overload :addDefault, 0
    

    # throws Exception
    def addObject(anyType)
        @list.add(anyType)
    end
    java_overload :addObject, 1
    

    # throws Exception
    def add(cacheableInterface)
        @list.add(cacheableInterface)
    end
    java_overload :add, 1
    

    # throws Exception
    def addArray(cacheableInterfaces)
        raise StandardError.new("No Imple")
    end
    java_overload :addArray, 1
    

    def clear()
        @index = 0
    end
    java_overload :clear, 0
end

module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :CacheableInterface, "org/allbinary/logic/util/cache/CacheableInterface" unless const_defined?(:CacheableInterface, false)

end; end; end; end; end

