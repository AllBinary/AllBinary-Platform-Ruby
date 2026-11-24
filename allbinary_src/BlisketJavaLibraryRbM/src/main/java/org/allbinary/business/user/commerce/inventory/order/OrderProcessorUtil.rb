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


module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Order

class OrderProcessorUtil
    attr_accessor :ORDER_PROCESSED

    def jfields_org_allbinary_business_user_commerce_inventory_order_OrderProcessorUtil
        @ORDER_PROCESSED = "Order Processed"
    end

    def initialize
        jfields_org_allbinary_business_user_commerce_inventory_order_OrderProcessorUtil
    end
    

    def self.getInstance()
        return OrderProcessorUtil.instance
    end
    

    # throws Exception
    def process(userName, order)
        orderItems = ::Org::Allbinary::DataPackage::Tables::User::Commerce::Inventory::Order::OrderItemsEntity.new()
        orderHistory = ::Org::Allbinary::DataPackage::Tables::User::Commerce::Inventory::Order::OrderHistoryEntity.new()
        order.setId(::Org::Allbinary::DataPackage::Generator::OrderIdGenerator.new().getNext())
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

module ::Org; module Allbinary; module DataPackage; module Generator; autoload :OrderIdGenerator, "org/allbinary/data/generator/OrderIdGenerator" unless const_defined?(:OrderIdGenerator, false); end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module User; module Commerce; module Inventory; module Order; autoload :OrderHistoryEntity, "org/allbinary/data/tables/user/commerce/inventory/order/OrderHistoryEntity" unless const_defined?(:OrderHistoryEntity, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module User; module Commerce; module Inventory; module Order; autoload :OrderItemsEntity, "org/allbinary/data/tables/user/commerce/inventory/order/OrderItemsEntity" unless const_defined?(:OrderItemsEntity, false); end; end; end; end; end; end; end; end
autoload :Order, "org/allbinary/business/user/commerce/inventory/order/Order" unless const_defined?(:Order, false)

begin
    OrderProcessorUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end; end

