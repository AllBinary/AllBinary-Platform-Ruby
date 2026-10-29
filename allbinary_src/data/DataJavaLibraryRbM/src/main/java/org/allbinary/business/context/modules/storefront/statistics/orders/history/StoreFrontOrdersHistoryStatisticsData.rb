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


class StoreFrontOrdersHistoryStatisticsData
    attr_accessor :NAME, :NUMBEROFORDERS, :SUBTOTAL, :SHIPPINGCOST, :TAXES, :TOTAL

    def initialize_fields
        @NAME = "STOREFRONT_ORDERS_HISTORY_STATISTICS_NAME"
        @NUMBEROFORDERS = "STOREFRONT_ORDERS_HISTORY_STATISTICS_NUMBER_OF_ORDERS"
        @SUBTOTAL = "STOREFRONT_ORDERS_HISTORY_STATISTICS_SUBTOTAL"
        @SHIPPINGCOST = "STOREFRONT_ORDERS_HISTORY_STATISTICS_SHIPPINGCOST"
        @TAXES = "STOREFRONT_ORDERS_HISTORY_STATISTICS_TAXES"
        @TOTAL = "STOREFRONT_ORDERS_HISTORY_STATISTICS_TOTAL"
    end
    

    def self.getInstance()
        return StoreFrontOrdersHistoryStatisticsData.instance
    end
    

    def initialize()
        initialize_fields
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

class StoreFrontOrdersHistoryStatisticsData
    @@instance = StoreFrontOrdersHistoryStatisticsData.new()
end

