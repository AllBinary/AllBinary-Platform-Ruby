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
# package org.allbinary.graphics.color


class ColorCacheFactory
    

    def self.static_init
        logUtil = LogUtil.getInstance()
        commonStrings = CommonStrings.getInstance()
        _STATIC_BLOCK = "Static Block"
        begin
            logUtil.putF(commonStrings.START, ColorCacheFactory, _STATIC_BLOCK)
            ColorCacheFactory.cacheInterface = AutomaticCacheInterfaceFactory.getInstance(ColorCacheableFactory.new(), CacheTypeFactory.getInstance().CACHE, CachePolicyFactory.getInstance().THIRTY_MINUTES_TEN_THOUSAND_MAX)
            logUtil.putF(commonStrings.END_, ColorCacheFactory, _STATIC_BLOCK)
        rescue StandardError => e
            logUtil.put(commonStrings.EXCEPTION, ColorCacheFactory, _STATIC_BLOCK, e)
        end
    end
    

    def initialize()
    end
    

    def self.getInstance()
        return ColorCacheFactory.cacheInterface
    end

    def self.cacheInterface()
        return defined?(@@cacheInterface) ? @@cacheInterface : nil
    end

    def self.cacheInterface=(value)
        @@cacheInterface = value
    end
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/util/cache/AutomaticCacheInterface"
require "org/allbinary/logic/util/cache/AutomaticCacheInterfaceFactory"
require "org/allbinary/logic/util/cache/CachePolicyFactory"
require "org/allbinary/logic/util/cache/CacheTypeFactory"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/graphics/color/ColorCacheableFactory"

class ColorCacheFactory
    @@cacheInterface = nil
end

ColorCacheFactory.static_init

