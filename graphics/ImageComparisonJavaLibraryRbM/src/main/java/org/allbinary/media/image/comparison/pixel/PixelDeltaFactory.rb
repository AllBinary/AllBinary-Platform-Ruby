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
# package org.allbinary.media.image.comparison.pixel


class PixelDeltaFactory
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end
    

    def self.static_init
        logUtil = LogUtil.getInstance()
        commonStrings = CommonStrings.getInstance()
        _STATIC_BLOCK = "Static Block"
        instance = "PixelDeltaFactory"
        begin
            logUtil.putF(commonStrings.START, instance, _STATIC_BLOCK)
            PixelDeltaFactory.cacheInterface = CacheInterfaceFactory.getInstance(CacheTypeFactory.getInstance().CACHE, CachePolicyFactory.getInstance().THIRTY_MINUTES_TEN_THOUSAND_MAX)
            logUtil.putF(commonStrings.END_, instance, _STATIC_BLOCK)
        rescue StandardError => e
            logUtil.put(commonStrings.EXCEPTION, instance, _STATIC_BLOCK, e)
        end
    end
    

    def initialize()
        initialize_fields
    end
    

    # throws Exception
    def self.getInstance(x, y, rgb1, rgb2)
        point = PointFactory.getInstance().createXY(x, y)
        colorDelta = ColorDeltaFactory.getInstance(rgb1, rgb2)
        pixelDelta = PixelDeltaFactory.cacheInterface.get(PixelDelta.getKey(point, colorDelta))
        if pixelDelta == nil
            pixelDelta = PixelDelta.new(point, colorDelta)
        end
        return pixelDelta
    end

    def self.cacheInterface()
        PixelDeltaFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@cacheInterface) ? @@cacheInterface : nil
    end

    def self.cacheInterface=(value)
        PixelDeltaFactory.java_static_fields unless @java_static_fields_started
        @@cacheInterface = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        @@cacheInterface = nil
        begin
            static_init
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "PixelDeltaFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :GPoint, "org/allbinary/graphics/GPoint"
autoload :PointFactory, "org/allbinary/graphics/PointFactory"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :AutomaticCacheInterface, "org/allbinary/logic/util/cache/AutomaticCacheInterface"
autoload :CacheInterfaceFactory, "org/allbinary/logic/util/cache/CacheInterfaceFactory"
autoload :CachePolicyFactory, "org/allbinary/logic/util/cache/CachePolicyFactory"
autoload :CacheTypeFactory, "org/allbinary/logic/util/cache/CacheTypeFactory"
autoload :ColorDelta, "org/allbinary/media/image/comparison/color/ColorDelta"
autoload :ColorDeltaFactory, "org/allbinary/media/image/comparison/color/ColorDeltaFactory"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :PixelDelta, "org/allbinary/media/image/comparison/pixel/PixelDelta"

begin
    PixelDeltaFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

