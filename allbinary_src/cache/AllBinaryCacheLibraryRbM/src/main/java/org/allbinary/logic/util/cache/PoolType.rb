# 
# AllBinary Open License Version 1 
# Copyright (c) 2007 AllBinary 
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


module ::Org; module Allbinary; module Logic; module Util; module Cache

class PoolType
    attr_accessor :cacheType

    def jfields_org_allbinary_logic_util_cache_PoolType
        @cacheType = nil unless instance_variable_defined?(:@cacheType)
    end
    

    def initialize(cacheType)
        jfields_org_allbinary_logic_util_cache_PoolType
        @cacheType = cacheType
    end
    

    def getCacheType()
        return @cacheType
    end
    

    def toString()
        _POOL_TYPE = "PoolType: "
        return _POOL_TYPE + self.getCacheType().to_s
    end
    alias_method :to_s, :toString
end

autoload :CacheType, "org/allbinary/logic/util/cache/CacheType" unless const_defined?(:CacheType, false)

end; end; end; end; end

