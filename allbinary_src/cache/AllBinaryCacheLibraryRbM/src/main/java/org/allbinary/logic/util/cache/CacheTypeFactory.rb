# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.logic.util.cache


class CacheTypeFactory
    attr_accessor :NO_CACHE, :CACHE, :SET, :CACHE_VECTOR

    def initialize_fields
        @NO_CACHE = CacheType.new(StringUtil.getInstance().EMPTY_STRING, StringUtil.getInstance().EMPTY_STRING)
        @CACHE = CacheType.new(StringUtil.getInstance().EMPTY_STRING, StringUtil.getInstance().EMPTY_STRING)
        @SET = CacheType.new(StringUtil.getInstance().EMPTY_STRING, "Set")
        @CACHE_VECTOR = CacheType.new(StringUtil.getInstance().EMPTY_STRING, StringUtil.getInstance().EMPTY_STRING)
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return CacheTypeFactory.instance
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

autoload :StringUtil, "org/allbinary/logic/string/StringUtil"
autoload :CacheType, "org/allbinary/logic/util/cache/CacheType"

begin
    CacheTypeFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

