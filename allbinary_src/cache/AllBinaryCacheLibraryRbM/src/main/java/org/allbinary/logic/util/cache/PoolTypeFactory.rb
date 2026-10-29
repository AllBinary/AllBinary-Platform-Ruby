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
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/util/cache/CacheTypeFactory"
require "org/allbinary/logic/util/cache/PoolType"

class PoolTypeFactory
    @@instance = PoolTypeFactory.new()
end

