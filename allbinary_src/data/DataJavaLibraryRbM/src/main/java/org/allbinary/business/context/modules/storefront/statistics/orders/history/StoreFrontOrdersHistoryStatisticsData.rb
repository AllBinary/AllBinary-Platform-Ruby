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
# package org.allbinary.business.context.modules.storefront.statistics.orders.history


module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; module Statistics; module Orders; module History

class StoreFrontOrdersHistoryStatisticsData
    attr_accessor :NAME, :NUMBEROFORDERS, :SUBTOTAL, :SHIPPINGCOST, :TAXES, :TOTAL

    def jfields_org_allbinary_business_context_modules_storefront_statistics_orders_history_StoreFrontOrdersHistoryStatisticsData
        @NAME = "STOREFRONT_ORDERS_HISTORY_STATISTICS_NAME"
        @NUMBEROFORDERS = "STOREFRONT_ORDERS_HISTORY_STATISTICS_NUMBER_OF_ORDERS"
        @SUBTOTAL = "STOREFRONT_ORDERS_HISTORY_STATISTICS_SUBTOTAL"
        @SHIPPINGCOST = "STOREFRONT_ORDERS_HISTORY_STATISTICS_SHIPPINGCOST"
        @TAXES = "STOREFRONT_ORDERS_HISTORY_STATISTICS_TAXES"
        @TOTAL = "STOREFRONT_ORDERS_HISTORY_STATISTICS_TOTAL"
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def initialize()
        jfields_org_allbinary_business_context_modules_storefront_statistics_orders_history_StoreFrontOrdersHistoryStatisticsData
    end

    def self.instance()
        StoreFrontOrdersHistoryStatisticsData.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        StoreFrontOrdersHistoryStatisticsData.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = StoreFrontOrdersHistoryStatisticsData.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "StoreFrontOrdersHistoryStatisticsData"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

begin
    StoreFrontOrdersHistoryStatisticsData.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end; end; end; end

