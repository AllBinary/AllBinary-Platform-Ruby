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
# package org.allbinary.logic.util.cache


class CachePolicyFactory
    attr_accessor :NAME, :MAX_TIME_THOUSAND_MAX, :THIRTY_MINUTES_TEN_THOUSAND_MAX, :THIRTY_MINUTES_FIFTY_THOUSAND_MAX, :ONE_MINUTE_FIVE_MAX, :ONE_MINUTE_TEN_MAX, :ONE_MINUTE_ONE_HUNDRED_MAX

    def initialize_fields
        @NAME = "lru"
        @MAX_TIME_THOUSAND_MAX = CachePolicy.new(@NAME, 9223372036854775807, 1000)
        @THIRTY_MINUTES_TEN_THOUSAND_MAX = CachePolicy.new(@NAME, 1000 * 60 * 30, 10000)
        @THIRTY_MINUTES_FIFTY_THOUSAND_MAX = CachePolicy.new(@NAME, 1000 * 60 * 30, 100000)
        @ONE_MINUTE_FIVE_MAX = CachePolicy.new(@NAME, 1000 * 60 * 1, 5)
        @ONE_MINUTE_TEN_MAX = CachePolicy.new(@NAME, 1000 * 60 * 1, 10)
        @ONE_MINUTE_ONE_HUNDRED_MAX = CachePolicy.new(@NAME, 1000 * 60 * 1, 100)
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return CachePolicyFactory.instance
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/util/cache/CachePolicy"

class CachePolicyFactory
    @@instance = CachePolicyFactory.new()
end

