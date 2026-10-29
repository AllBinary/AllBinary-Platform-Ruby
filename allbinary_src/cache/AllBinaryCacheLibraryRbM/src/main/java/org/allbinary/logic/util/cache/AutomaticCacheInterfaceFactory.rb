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


class AutomaticCacheInterfaceFactory
    

    def initialize()
    end
    

    # throws Exception
    def self.getInstance(cacheableInterfaceFactoryInterface, cacheType, cachePolicy)
        raise StandardError.new("No such " + cacheType.to_s)
    end
end

require "org/allbinary/logic/util/cache/AutomaticCacheInterface"
require "org/allbinary/logic/util/cache/CachePolicy"
require "org/allbinary/logic/util/cache/CacheType"
require "org/allbinary/logic/util/cache/CacheableInterfaceFactoryInterface"

