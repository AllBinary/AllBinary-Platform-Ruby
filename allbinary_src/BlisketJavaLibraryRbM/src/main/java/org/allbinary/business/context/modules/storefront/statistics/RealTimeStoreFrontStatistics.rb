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
# package org.allbinary.business.context.modules.storefront.statistics

require "org/allbinary/business/context/modules/storefront/statistics/StoreFrontStatisticsInterface"

class RealTimeStoreFrontStatistics
    include StoreFrontStatisticsInterface
    attr_accessor :storeFrontAdvertisementsStatisticsInterface, :storeFrontUsersStatisticsInterface, :storeFrontInventoryStatisticsInterface, :storeFrontOrderHistoryStatisticsInterface

    def initialize_fields
        @storeFrontAdvertisementsStatisticsInterface = nil
        @storeFrontUsersStatisticsInterface = nil
        @storeFrontInventoryStatisticsInterface = nil
        @storeFrontOrderHistoryStatisticsInterface = nil
    end
    

    def initialize(storeFrontInterface)
        initialize_fields
        @storeFrontAdvertisementsStatisticsInterface = StoreFrontAdvertisementsStatistics.new(storeFrontInterface)
        @storeFrontUsersStatisticsInterface = StoreFrontUsersStatistics.new(storeFrontInterface)
        @storeFrontInventoryStatisticsInterface = StoreFrontInventoryStatistics.new(storeFrontInterface)
        @storeFrontOrderHistoryStatisticsInterface = StoreFrontOrdersHistoryStatistics.new(storeFrontInterface)
    end
    

    def getAdvertisements()
        return @storeFrontAdvertisementsStatisticsInterface
    end
    

    def getUsers()
        return @storeFrontUsersStatisticsInterface
    end
    

    def getInventory()
        return @storeFrontInventoryStatisticsInterface
    end
    

    def getOrders()
        return @storeFrontOrderHistoryStatisticsInterface
    end
end

autoload :StoreFrontInterface, "org/allbinary/business/context/modules/storefront/StoreFrontInterface"
autoload :StoreFrontAdvertisementsStatistics, "org/allbinary/business/context/modules/storefront/statistics/advertisements/StoreFrontAdvertisementsStatistics"
autoload :StoreFrontAdvertisementsStatisticsInterface, "org/allbinary/business/context/modules/storefront/statistics/advertisements/StoreFrontAdvertisementsStatisticsInterface"
autoload :StoreFrontInventoryStatistics, "org/allbinary/business/context/modules/storefront/statistics/inventory/StoreFrontInventoryStatistics"
autoload :StoreFrontInventoryStatisticsInterface, "org/allbinary/business/context/modules/storefront/statistics/inventory/StoreFrontInventoryStatisticsInterface"
autoload :StoreFrontOrdersHistoryStatistics, "org/allbinary/business/context/modules/storefront/statistics/orders/history/StoreFrontOrdersHistoryStatistics"
autoload :StoreFrontOrdersHistoryStatisticsInterface, "org/allbinary/business/context/modules/storefront/statistics/orders/history/StoreFrontOrdersHistoryStatisticsInterface"
autoload :StoreFrontUsersStatistics, "org/allbinary/business/context/modules/storefront/statistics/users/StoreFrontUsersStatistics"
autoload :StoreFrontUsersStatisticsInterface, "org/allbinary/business/context/modules/storefront/statistics/users/StoreFrontUsersStatisticsInterface"

