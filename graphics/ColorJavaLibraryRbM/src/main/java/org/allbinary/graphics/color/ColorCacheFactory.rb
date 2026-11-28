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


module ::Org; module Allbinary; module Graphics; module Color

class ColorCacheFactory
    

    def self.static_init
        logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        _STATIC_BLOCK = "Static Block"
        begin
            logUtil.putF(commonStrings.START, ColorCacheFactory, _STATIC_BLOCK)
            @@cacheInterface = ::Org::Allbinary::Logic::Util::Cache::AutomaticCacheInterfaceFactory.getInstance(ColorCacheableFactory.new(), ::Org::Allbinary::Logic::Util::Cache::CacheTypeFactory.getInstance().CACHE, ::Org::Allbinary::Logic::Util::Cache::CachePolicyFactory.getInstance().THIRTY_MINUTES_TEN_THOUSAND_MAX)
            logUtil.putF(commonStrings.END_, ColorCacheFactory, _STATIC_BLOCK)
        rescue StandardError => e
            logUtil.put(commonStrings.EXCEPTION, ColorCacheFactory, _STATIC_BLOCK, e)
        end
    end
    

    def initialize()
    end
    

    def self.getInstance()
        return @@cacheInterface
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

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Cache; autoload :AutomaticCacheInterface, "org/allbinary/logic/util/cache/AutomaticCacheInterface" unless const_defined?(:AutomaticCacheInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Cache; autoload :AutomaticCacheInterfaceFactory, "org/allbinary/logic/util/cache/AutomaticCacheInterfaceFactory" unless const_defined?(:AutomaticCacheInterfaceFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Cache; autoload :CachePolicyFactory, "org/allbinary/logic/util/cache/CachePolicyFactory" unless const_defined?(:CachePolicyFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Cache; autoload :CacheTypeFactory, "org/allbinary/logic/util/cache/CacheTypeFactory" unless const_defined?(:CacheTypeFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :ColorCacheableFactory, "org/allbinary/graphics/color/ColorCacheableFactory" unless const_defined?(:ColorCacheableFactory, false)

begin
    ColorCacheFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

