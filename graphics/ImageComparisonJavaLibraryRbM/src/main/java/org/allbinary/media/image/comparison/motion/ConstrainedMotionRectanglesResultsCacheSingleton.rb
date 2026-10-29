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
# package org.allbinary.media.image.comparison.motion


class ConstrainedMotionRectanglesResultsCacheSingleton
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end
    

    def self.static_init
        logUtil = LogUtil.getInstance()
        commonStrings = CommonStrings.getInstance()
        _STATIC_BLOCK = "Static Block"
        instance = "MotionRectanglesResultsCacheSingleton"
        begin
            logUtil.putF(commonStrings.START, instance, _STATIC_BLOCK)
            ConstrainedMotionRectanglesResultsCacheSingleton.cacheInterface = CacheInterfaceFactory.getInstance(CacheTypeFactory.getInstance().CACHE, CachePolicyFactory.getInstance().ONE_MINUTE_FIVE_MAX)
            logUtil.putF(commonStrings.END_, instance, _STATIC_BLOCK)
        rescue StandardError => e
            logUtil.put(commonStrings.EXCEPTION, instance, _STATIC_BLOCK, e)
        end
    end
    

    def initialize()
        initialize_fields
    end
    

    def self.getInstance()
        return ConstrainedMotionRectanglesResultsCacheSingleton.cacheInterface
    end

    def self.cacheInterface()
        return defined?(@@cacheInterface) ? @@cacheInterface : nil
    end

    def self.cacheInterface=(value)
        @@cacheInterface = value
    end
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/util/cache/CacheInterface"
require "org/allbinary/logic/util/cache/CacheInterfaceFactory"
require "org/allbinary/logic/util/cache/CachePolicyFactory"
require "org/allbinary/logic/util/cache/CacheTypeFactory"
require "org/allbinary/string/CommonStrings"

class ConstrainedMotionRectanglesResultsCacheSingleton
    @@cacheInterface = nil
end

ConstrainedMotionRectanglesResultsCacheSingleton.static_init

