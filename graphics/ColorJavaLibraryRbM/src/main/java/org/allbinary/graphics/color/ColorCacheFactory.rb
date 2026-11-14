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
        ColorCacheFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@cacheInterface) ? @@cacheInterface : nil
    end

    def self.cacheInterface=(value)
        ColorCacheFactory.java_static_fields unless @java_static_fields_started
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
        if name == "ColorCacheFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :AutomaticCacheInterface, "org/allbinary/logic/util/cache/AutomaticCacheInterface"
autoload :AutomaticCacheInterfaceFactory, "org/allbinary/logic/util/cache/AutomaticCacheInterfaceFactory"
autoload :CachePolicyFactory, "org/allbinary/logic/util/cache/CachePolicyFactory"
autoload :CacheTypeFactory, "org/allbinary/logic/util/cache/CacheTypeFactory"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :ColorCacheableFactory, "org/allbinary/graphics/color/ColorCacheableFactory"

begin
    ColorCacheFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

