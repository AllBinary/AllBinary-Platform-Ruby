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


module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; module Statistics

module StoreFrontStatisticsInterface
    

    def getAdvertisements()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getUsers()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getInventory()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getOrders()
        return super if defined?(super)
        raise NotImplementedError
    end
end

module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; module Statistics; module Advertisements; autoload :StoreFrontAdvertisementsStatisticsInterface, "org/allbinary/business/context/modules/storefront/statistics/advertisements/StoreFrontAdvertisementsStatisticsInterface" unless const_defined?(:StoreFrontAdvertisementsStatisticsInterface, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; module Statistics; module Inventory; autoload :StoreFrontInventoryStatisticsInterface, "org/allbinary/business/context/modules/storefront/statistics/inventory/StoreFrontInventoryStatisticsInterface" unless const_defined?(:StoreFrontInventoryStatisticsInterface, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; module Statistics; module Orders; module History; autoload :StoreFrontOrdersHistoryStatisticsInterface, "org/allbinary/business/context/modules/storefront/statistics/orders/history/StoreFrontOrdersHistoryStatisticsInterface" unless const_defined?(:StoreFrontOrdersHistoryStatisticsInterface, false); end; end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; module Statistics; module Users; autoload :StoreFrontUsersStatisticsInterface, "org/allbinary/business/context/modules/storefront/statistics/users/StoreFrontUsersStatisticsInterface" unless const_defined?(:StoreFrontUsersStatisticsInterface, false); end; end; end; end; end; end; end; end

end; end; end; end; end; end; end

