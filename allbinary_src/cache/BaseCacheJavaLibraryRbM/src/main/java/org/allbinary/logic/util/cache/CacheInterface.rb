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

module CacheInterface
    

    # throws Exception
    def add(cacheableInterface)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # throws Exception
    def addArray(cacheableInterfaces)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # throws Exception
    def clear()
        return super if defined?(super)
        raise NotImplementedError
    end
end

autoload :CacheableInterface, "org/allbinary/logic/util/cache/CacheableInterface"

