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

module OrderItemsEntityInterface
    include BasicDataTableInterface
    

    def setStatus(orderId, groupId, status)
        raise NotImplementedError
    end
    

    def isEverythingShipped(orderId)
        raise NotImplementedError
    end
    

    def getBasketReview(orderId)
        raise NotImplementedError
    end
    

    def insert(userName, order)
        raise NotImplementedError
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def insert(values)
        raise NotImplementedError
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/business/user/commerce/inventory/basket/BasketReview"
require "org/allbinary/business/user/commerce/inventory/order/OrderInterface"

