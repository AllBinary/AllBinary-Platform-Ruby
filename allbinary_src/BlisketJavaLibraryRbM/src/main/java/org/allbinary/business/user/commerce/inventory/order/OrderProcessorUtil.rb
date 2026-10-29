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
# package org.allbinary.business.user.commerce.inventory.order


class OrderProcessorUtil
    attr_accessor :ORDER_PROCESSED

    def initialize_fields
        @ORDER_PROCESSED = "Order Processed"
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return OrderProcessorUtil.instance
    end
    

    # throws Exception
    def process(userName, order)
        orderItems = OrderItemsEntity.new()
        orderHistory = OrderHistoryEntity.new()
        order.setId(OrderIdGenerator.new().getNext())
        orderItems.insert(userName, order)
        orderHistory.insert(userName, order)
        return @ORDER_PROCESSED
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/data/generator/OrderIdGenerator"
require "org/allbinary/data/tables/user/commerce/inventory/order/OrderHistoryEntity"
require "org/allbinary/data/tables/user/commerce/inventory/order/OrderItemsEntity"
require "org/allbinary/business/user/commerce/inventory/order/Order"

class OrderProcessorUtil
    @@instance = OrderProcessorUtil.new()
end

