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

require "java/lang/JavaOverload"
require "org/allbinary/business/context/modules/storefront/statistics/StoreFrontStatisticsInterface"

module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; module Statistics

class RealTimeStoreFrontStatistics
    include StoreFrontStatisticsInterface
    attr_accessor :storeFrontAdvertisementsStatisticsInterface, :storeFrontUsersStatisticsInterface, :storeFrontInventoryStatisticsInterface, :storeFrontOrderHistoryStatisticsInterface

    def jfields_org_allbinary_business_context_modules_storefront_statistics_RealTimeStoreFrontStatistics
        @storeFrontAdvertisementsStatisticsInterface = nil unless instance_variable_defined?(:@storeFrontAdvertisementsStatisticsInterface)
        @storeFrontUsersStatisticsInterface = nil unless instance_variable_defined?(:@storeFrontUsersStatisticsInterface)
        @storeFrontInventoryStatisticsInterface = nil unless instance_variable_defined?(:@storeFrontInventoryStatisticsInterface)
        @storeFrontOrderHistoryStatisticsInterface = nil unless instance_variable_defined?(:@storeFrontOrderHistoryStatisticsInterface)
    end
    

    def initialize(storeFrontInterface)
        jfields_org_allbinary_business_context_modules_storefront_statistics_RealTimeStoreFrontStatistics
        @storeFrontAdvertisementsStatisticsInterface = ::Org::Allbinary::Business::Context::Modules::Storefront::Statistics::Advertisements::StoreFrontAdvertisementsStatistics.new(storeFrontInterface)
        @storeFrontUsersStatisticsInterface = ::Org::Allbinary::Business::Context::Modules::Storefront::Statistics::Users::StoreFrontUsersStatistics.new(storeFrontInterface)
        @storeFrontInventoryStatisticsInterface = ::Org::Allbinary::Business::Context::Modules::Storefront::Statistics::Inventory::StoreFrontInventoryStatistics.new(storeFrontInterface)
        @storeFrontOrderHistoryStatisticsInterface = ::Org::Allbinary::Business::Context::Modules::Storefront::Statistics::Orders::History::StoreFrontOrdersHistoryStatistics.new(storeFrontInterface)
    end
    

    def getAdvertisements()
        return @storeFrontAdvertisementsStatisticsInterface
    end
    java_overload :getAdvertisements, 0
    

    def getUsers()
        return @storeFrontUsersStatisticsInterface
    end
    java_overload :getUsers, 0
    

    def getInventory()
        return @storeFrontInventoryStatisticsInterface
    end
    java_overload :getInventory, 0
    

    def getOrders()
        return @storeFrontOrderHistoryStatisticsInterface
    end
    java_overload :getOrders, 0
end

module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontInterface, "org/allbinary/business/context/modules/storefront/StoreFrontInterface" unless const_defined?(:StoreFrontInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; module Statistics; module Advertisements; autoload :StoreFrontAdvertisementsStatistics, "org/allbinary/business/context/modules/storefront/statistics/advertisements/StoreFrontAdvertisementsStatistics" unless const_defined?(:StoreFrontAdvertisementsStatistics, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; module Statistics; module Advertisements; autoload :StoreFrontAdvertisementsStatisticsInterface, "org/allbinary/business/context/modules/storefront/statistics/advertisements/StoreFrontAdvertisementsStatisticsInterface" unless const_defined?(:StoreFrontAdvertisementsStatisticsInterface, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; module Statistics; module Inventory; autoload :StoreFrontInventoryStatistics, "org/allbinary/business/context/modules/storefront/statistics/inventory/StoreFrontInventoryStatistics" unless const_defined?(:StoreFrontInventoryStatistics, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; module Statistics; module Inventory; autoload :StoreFrontInventoryStatisticsInterface, "org/allbinary/business/context/modules/storefront/statistics/inventory/StoreFrontInventoryStatisticsInterface" unless const_defined?(:StoreFrontInventoryStatisticsInterface, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; module Statistics; module Orders; module History; autoload :StoreFrontOrdersHistoryStatistics, "org/allbinary/business/context/modules/storefront/statistics/orders/history/StoreFrontOrdersHistoryStatistics" unless const_defined?(:StoreFrontOrdersHistoryStatistics, false); end; end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; module Statistics; module Orders; module History; autoload :StoreFrontOrdersHistoryStatisticsInterface, "org/allbinary/business/context/modules/storefront/statistics/orders/history/StoreFrontOrdersHistoryStatisticsInterface" unless const_defined?(:StoreFrontOrdersHistoryStatisticsInterface, false); end; end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; module Statistics; module Users; autoload :StoreFrontUsersStatistics, "org/allbinary/business/context/modules/storefront/statistics/users/StoreFrontUsersStatistics" unless const_defined?(:StoreFrontUsersStatistics, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; module Statistics; module Users; autoload :StoreFrontUsersStatisticsInterface, "org/allbinary/business/context/modules/storefront/statistics/users/StoreFrontUsersStatisticsInterface" unless const_defined?(:StoreFrontUsersStatisticsInterface, false); end; end; end; end; end; end; end; end

end; end; end; end; end; end; end

