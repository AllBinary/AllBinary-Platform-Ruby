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

require "org/allbinary/data/tables/TableMappingInterface"

module StoreFrontOrdersHistoryStatisticsInterface
    include TableMappingInterface
    

    def getNumberOfOrders()
        raise NotImplementedError
    end
    

    def getSubTotal()
        raise NotImplementedError
    end
    

    def getShippingCost()
        raise NotImplementedError
    end
    

    def getTaxes()
        raise NotImplementedError
    end
    

    def getTotal()
        raise NotImplementedError
    end
end

require "org/allbinary/business/user/commerce/money/Money"

