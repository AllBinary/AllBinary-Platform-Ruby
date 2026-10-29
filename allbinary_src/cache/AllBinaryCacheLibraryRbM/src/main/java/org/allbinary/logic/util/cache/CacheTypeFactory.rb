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
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/logic/util/cache/CacheType"

class CacheTypeFactory
    @@instance = CacheTypeFactory.new()
end

