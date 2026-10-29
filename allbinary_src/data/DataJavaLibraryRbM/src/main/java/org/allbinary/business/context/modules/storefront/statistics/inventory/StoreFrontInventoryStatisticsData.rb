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
# package org.allbinary.business.context.modules.storefront.statistics.inventory


class StoreFrontInventoryStatisticsData
    attr_accessor :NAME, :NUMBEROFITEMS, :TOTALVALUE

    def initialize_fields
        @NAME = "STOREFRONT_INVENTORY_STATISTICS_NAME"
        @NUMBEROFITEMS = "STOREFRONT_INVENTORY_STATISTICS_NUMBER_OF_ITEMS"
        @TOTALVALUE = "STOREFRONT_INVENTORY_STATISTICS_TOTAL_VALUE"
    end
    

    def self.getInstance()
        return StoreFrontInventoryStatisticsData.instance
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

class StoreFrontInventoryStatisticsData
    @@instance = StoreFrontInventoryStatisticsData.new()
end

