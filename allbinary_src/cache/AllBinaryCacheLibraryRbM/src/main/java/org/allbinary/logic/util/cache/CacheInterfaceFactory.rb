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


class CacheInterfaceFactory
    

    def initialize()
    end
    

    # throws Exception
    def self.getInstance(cacheType, cachePolicy)
        raise StandardError.new("No such " + cacheType.to_s)
    end
end

autoload :CacheInterface, "org/allbinary/logic/util/cache/CacheInterface"
autoload :CachePolicy, "org/allbinary/logic/util/cache/CachePolicy"
autoload :CacheType, "org/allbinary/logic/util/cache/CacheType"

