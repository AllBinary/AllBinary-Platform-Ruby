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


class PoolType
    attr_accessor :cacheType

    def initialize_fields
        @cacheType = nil
    end
    

    def initialize(cacheType)
        initialize_fields
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

require "org/allbinary/logic/util/cache/CacheType"

