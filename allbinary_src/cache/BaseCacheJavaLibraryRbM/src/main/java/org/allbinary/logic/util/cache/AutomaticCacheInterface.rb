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
require "org/allbinary/logic/util/cache/CacheInterface"

module ::Org; module Allbinary; module Logic; module Util; module Cache

module AutomaticCacheInterface
    include CacheInterface
    

    # throws Exception
    def get(key)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :get, 1
end

autoload :CacheableInterface, "org/allbinary/logic/util/cache/CacheableInterface" unless const_defined?(:CacheableInterface, false)

end; end; end; end; end

