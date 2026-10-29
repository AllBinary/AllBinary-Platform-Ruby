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


module StoreFrontStatisticsInterface
    

    def getAdvertisements()
        raise NotImplementedError
    end
    

    def getUsers()
        raise NotImplementedError
    end
    

    def getInventory()
        raise NotImplementedError
    end
    

    def getOrders()
        raise NotImplementedError
    end
end

require "org/allbinary/business/context/modules/storefront/statistics/advertisements/StoreFrontAdvertisementsStatisticsInterface"
require "org/allbinary/business/context/modules/storefront/statistics/inventory/StoreFrontInventoryStatisticsInterface"
require "org/allbinary/business/context/modules/storefront/statistics/orders/history/StoreFrontOrdersHistoryStatisticsInterface"
require "org/allbinary/business/context/modules/storefront/statistics/users/StoreFrontUsersStatisticsInterface"

