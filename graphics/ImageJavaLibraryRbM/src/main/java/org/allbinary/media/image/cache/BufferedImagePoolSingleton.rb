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
# package org.allbinary.media.image.cache


class BufferedImagePoolSingleton
    

    def self.static_init
        logUtil = LogUtil.getInstance()
        commonStrings = CommonStrings.getInstance()
        _STATIC_BLOCK = "Static Block"
        instance = "BufferedImagePoolSingleton"
        begin
            logUtil.putF(commonStrings.START, instance, _STATIC_BLOCK)
            BufferedImagePoolSingleton.poolInterface = PoolInterfaceFactory.getInstance(BufferedImageCacheableFactory.new(), PoolTypeFactory.getInstance().VECTOR_POOL, CachePolicyFactory.getInstance().MAX_TIME_THOUSAND_MAX)
            logUtil.putF(commonStrings.END_, instance, _STATIC_BLOCK)
        rescue StandardError => e
            logUtil.put(commonStrings.EXCEPTION, instance, _STATIC_BLOCK, e)
        end
    end
    

    def initialize()
    end
    

    def self.getInstance()
        return BufferedImagePoolSingleton.poolInterface
    end

    def self.poolInterface()
        return defined?(@@poolInterface) ? @@poolInterface : nil
    end

    def self.poolInterface=(value)
        @@poolInterface = value
    end
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/util/cache/CachePolicyFactory"
require "org/allbinary/logic/util/cache/PoolInterface"
require "org/allbinary/logic/util/cache/PoolInterfaceFactory"
require "org/allbinary/logic/util/cache/PoolTypeFactory"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/media/image/cache/BufferedImageCacheableFactory"

class BufferedImagePoolSingleton
    @@poolInterface = nil
end

BufferedImagePoolSingleton.static_init

