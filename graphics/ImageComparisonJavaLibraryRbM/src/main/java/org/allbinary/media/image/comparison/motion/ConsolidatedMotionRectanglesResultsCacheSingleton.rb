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


module ::Org; module Allbinary; module Media; module Image; module Comparison; module Motion

class ConsolidatedMotionRectanglesResultsCacheSingleton
    attr_accessor :logUtil

    def jfields_org_allbinary_media_image_comparison_motion_ConsolidatedMotionRectanglesResultsCacheSingleton
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end
    

    def self.static_init
        logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        _STATIC_BLOCK = "Static Block"
        instance = "MotionRectanglesResultsCacheSingleton"
        begin
            logUtil.putF(commonStrings.START, instance, _STATIC_BLOCK)
            ConsolidatedMotionRectanglesResultsCacheSingleton.cacheInterface = ::Org::Allbinary::Logic::Util::Cache::CacheInterfaceFactory.getInstance(::Org::Allbinary::Logic::Util::Cache::CacheTypeFactory.getInstance().CACHE, ::Org::Allbinary::Logic::Util::Cache::CachePolicyFactory.getInstance().ONE_MINUTE_FIVE_MAX)
            logUtil.putF(commonStrings.END_, instance, _STATIC_BLOCK)
        rescue StandardError => e
            logUtil.put(commonStrings.EXCEPTION, instance, _STATIC_BLOCK, e)
        end
    end
    

    def initialize()
        jfields_org_allbinary_media_image_comparison_motion_ConsolidatedMotionRectanglesResultsCacheSingleton
    end
    

    def self.getInstance()
        return ConsolidatedMotionRectanglesResultsCacheSingleton.cacheInterface
    end

    def self.cacheInterface()
        ConsolidatedMotionRectanglesResultsCacheSingleton.java_static_fields unless @java_static_fields_started
        return defined?(@@cacheInterface) ? @@cacheInterface : nil
    end

    def self.cacheInterface=(value)
        ConsolidatedMotionRectanglesResultsCacheSingleton.java_static_fields unless @java_static_fields_started
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
        if name == "ConsolidatedMotionRectanglesResultsCacheSingleton"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Cache; autoload :CacheInterface, "org/allbinary/logic/util/cache/CacheInterface" unless const_defined?(:CacheInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Cache; autoload :CacheInterfaceFactory, "org/allbinary/logic/util/cache/CacheInterfaceFactory" unless const_defined?(:CacheInterfaceFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Cache; autoload :CachePolicyFactory, "org/allbinary/logic/util/cache/CachePolicyFactory" unless const_defined?(:CachePolicyFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Cache; autoload :CacheTypeFactory, "org/allbinary/logic/util/cache/CacheTypeFactory" unless const_defined?(:CacheTypeFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end

begin
    ConsolidatedMotionRectanglesResultsCacheSingleton.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

