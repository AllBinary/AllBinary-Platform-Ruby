# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.logic.util.cache


module ::Org; module Allbinary; module Logic; module Util; module Cache

class CacheTypeFactory
    attr_accessor :NO_CACHE, :CACHE, :SET, :CACHE_VECTOR

    def jfields_org_allbinary_logic_util_cache_CacheTypeFactory
        @NO_CACHE = CacheType.new(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING, ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING)
        @CACHE = CacheType.new(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING, ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING)
        @SET = CacheType.new(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING, "Set")
        @CACHE_VECTOR = CacheType.new(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING, ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING)
    end

    def initialize
        jfields_org_allbinary_logic_util_cache_CacheTypeFactory
    end
    

    def self.getInstance()
        return @@instance
    end

    def self.instance()
        CacheTypeFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        CacheTypeFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = CacheTypeFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "CacheTypeFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
autoload :CacheType, "org/allbinary/logic/util/cache/CacheType" unless const_defined?(:CacheType, false)

begin
    CacheTypeFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

