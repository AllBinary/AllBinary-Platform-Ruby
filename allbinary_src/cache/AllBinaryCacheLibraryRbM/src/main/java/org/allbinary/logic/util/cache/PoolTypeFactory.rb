# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.logic.util.cache


class PoolTypeFactory
    attr_accessor :VECTOR_POOL

    def initialize_fields
        @VECTOR_POOL = PoolType.new(CacheTypeFactory.getInstance().NO_CACHE)
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return PoolTypeFactory.instance
    end

    def self.instance()
        PoolTypeFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        PoolTypeFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = PoolTypeFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "PoolTypeFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :CacheTypeFactory, "org/allbinary/logic/util/cache/CacheTypeFactory"
autoload :PoolType, "org/allbinary/logic/util/cache/PoolType"

begin
    PoolTypeFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

