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


module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront

class StoreFrontsData
    attr_accessor :TYPE, :RETAIL, :SUBSCRIPTION, :AUCTION, :NEWS, :BLOG, :FORUM

    def jfields_org_allbinary_business_context_modules_storefront_StoreFrontsData
        @TYPE = "STOREFRONTS_TYPE"
        @RETAIL = "STOREFRONTS_RETAIL"
        @SUBSCRIPTION = "STOREFRONTS_SUBSCRIPTION"
        @AUCTION = "STOREFRONTS_AUCTION"
        @NEWS = "STOREFRONTS_NEWS"
        @BLOG = "STOREFRONTS_BLOG"
        @FORUM = "STOREFRONTS_FORUM"
    end

    def initialize
        jfields_org_allbinary_business_context_modules_storefront_StoreFrontsData
    end
    

    def self.getInstance()
        return StoreFrontsData.instance
    end

    def self.instance()
        StoreFrontsData.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        StoreFrontsData.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = StoreFrontsData.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "StoreFrontsData"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

begin
    StoreFrontsData.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

