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
        OrderProcessorUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        OrderProcessorUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = OrderProcessorUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "OrderProcessorUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :OrderIdGenerator, "org/allbinary/data/generator/OrderIdGenerator"
autoload :OrderHistoryEntity, "org/allbinary/data/tables/user/commerce/inventory/order/OrderHistoryEntity"
autoload :OrderItemsEntity, "org/allbinary/data/tables/user/commerce/inventory/order/OrderItemsEntity"
autoload :Order, "org/allbinary/business/user/commerce/inventory/order/Order"

begin
    OrderProcessorUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

