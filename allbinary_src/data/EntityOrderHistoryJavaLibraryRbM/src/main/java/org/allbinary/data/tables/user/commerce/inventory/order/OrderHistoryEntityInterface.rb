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
# package org.allbinary.data.tables.user.commerce.inventory.order

require "org/allbinary/data/tables/BasicDataTableInterface"

module OrderHistoryEntityInterface
    include BasicDataTableInterface
    

    def insert(userName, order)
        raise NotImplementedError
    end
    

    def setStatus(orderId, status)
        raise NotImplementedError
    end
    

    def setPaymentMethod(orderId, status)
        raise NotImplementedError
    end
    

    # throws Exception
    def getStoreOrders(storeFrontInterface)
        raise NotImplementedError
    end
    

    # throws Exception
    def getOrders(userName)
        raise NotImplementedError
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def getOrders(status, fromDate, toDate)
        raise NotImplementedError
    end
    

    # throws Exception
    def getOrder(id)
        raise NotImplementedError
    end
    

    # throws Exception
    def update(whereHashMap, orderHashMap)
        raise NotImplementedError
    end
end

require "java/util/HashMap"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/business/context/modules/storefront/StoreFrontInterface"
require "org/allbinary/business/user/commerce/inventory/order/Order"
require "org/allbinary/business/user/commerce/inventory/order/OrderHistory"

