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
require "org/allbinary/logic/util/cache/PoolInterface"

module ::Org; module Allbinary; module Logic; module Util; module Cache

class AbstractArrayListPool
    include PoolInterface
    attr_accessor :commonStrings, :buffers, :cacheableInterfaceFactoryInterface

    def jfields_org_allbinary_logic_util_cache_AbstractArrayListPool
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @buffers = ::Org::Allbinary::Util::BasicArrayListD.new()
        @cacheableInterfaceFactoryInterface = nil unless instance_variable_defined?(:@cacheableInterfaceFactoryInterface)
    end
    

    def initialize(cacheableInterfaceFactoryInterface)
        jfields_org_allbinary_logic_util_cache_AbstractArrayListPool
        @cacheableInterfaceFactoryInterface = cacheableInterfaceFactoryInterface
    end
    

    # throws Exception
    def clear()
        raise StandardError.new(@commonStrings.NOT_IMPLEMENTED)
    end
    java_overload :clear, 0
    

    # throws Exception
    def remove(key)
        raise StandardError.new(@commonStrings.NOT_IMPLEMENTED)
    end
    java_overload :remove, 1
    

    # throws Exception
    def add(cacheableInterface)
        @buffers.add(cacheableInterface)
    end
    java_overload :add, 1
    

    # throws Exception
    def addArray(cacheableInterfaces)
        (0...cacheableInterfaces.length).each do |index|
            @buffers.add(cacheableInterfaces[index])
        end
    end
    java_overload :addArray, 1
end

module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
autoload :CacheableInterface, "org/allbinary/logic/util/cache/CacheableInterface" unless const_defined?(:CacheableInterface, false)
autoload :CacheableInterfaceFactoryInterface, "org/allbinary/logic/util/cache/CacheableInterfaceFactoryInterface" unless const_defined?(:CacheableInterfaceFactoryInterface, false)

end; end; end; end; end

