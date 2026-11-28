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


module ::Org; module Allbinary; module Media; module Image; module Cache

class BufferedImagePoolSingleton
    

    def self.static_init
        logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        _STATIC_BLOCK = "Static Block"
        instance = "BufferedImagePoolSingleton"
        begin
            logUtil.putF(commonStrings.START, instance, _STATIC_BLOCK)
            @@poolInterface = ::Org::Allbinary::Logic::Util::Cache::PoolInterfaceFactory.getInstance(BufferedImageCacheableFactory.new(), ::Org::Allbinary::Logic::Util::Cache::PoolTypeFactory.getInstance().VECTOR_POOL, ::Org::Allbinary::Logic::Util::Cache::CachePolicyFactory.getInstance().MAX_TIME_THOUSAND_MAX)
            logUtil.putF(commonStrings.END_, instance, _STATIC_BLOCK)
        rescue StandardError => e
            logUtil.put(commonStrings.EXCEPTION, instance, _STATIC_BLOCK, e)
        end
    end
    

    def initialize()
    end
    

    def self.getInstance()
        return @@poolInterface
    end

    def self.poolInterface()
        BufferedImagePoolSingleton.java_static_fields unless @java_static_fields_started
        return defined?(@@poolInterface) ? @@poolInterface : nil
    end

    def self.poolInterface=(value)
        BufferedImagePoolSingleton.java_static_fields unless @java_static_fields_started
        @@poolInterface = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        @@poolInterface = nil
        begin
            static_init
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "BufferedImagePoolSingleton"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Cache; autoload :CachePolicyFactory, "org/allbinary/logic/util/cache/CachePolicyFactory" unless const_defined?(:CachePolicyFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Cache; autoload :PoolInterface, "org/allbinary/logic/util/cache/PoolInterface" unless const_defined?(:PoolInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Cache; autoload :PoolInterfaceFactory, "org/allbinary/logic/util/cache/PoolInterfaceFactory" unless const_defined?(:PoolInterfaceFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Cache; autoload :PoolTypeFactory, "org/allbinary/logic/util/cache/PoolTypeFactory" unless const_defined?(:PoolTypeFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :BufferedImageCacheableFactory, "org/allbinary/media/image/cache/BufferedImageCacheableFactory" unless const_defined?(:BufferedImageCacheableFactory, false)

begin
    BufferedImagePoolSingleton.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

