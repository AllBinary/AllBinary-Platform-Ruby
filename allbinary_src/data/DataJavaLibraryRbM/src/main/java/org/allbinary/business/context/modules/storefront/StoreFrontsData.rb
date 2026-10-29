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
# package org.allbinary.business.context.modules.storefront


class StoreFrontsData
    attr_accessor :TYPE, :RETAIL, :SUBSCRIPTION, :AUCTION, :NEWS, :BLOG, :FORUM

    def initialize_fields
        @TYPE = "STOREFRONTS_TYPE"
        @RETAIL = "STOREFRONTS_RETAIL"
        @SUBSCRIPTION = "STOREFRONTS_SUBSCRIPTION"
        @AUCTION = "STOREFRONTS_AUCTION"
        @NEWS = "STOREFRONTS_NEWS"
        @BLOG = "STOREFRONTS_BLOG"
        @FORUM = "STOREFRONTS_FORUM"
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return StoreFrontsData.instance
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

class StoreFrontsData
    @@instance = StoreFrontsData.new()
end

