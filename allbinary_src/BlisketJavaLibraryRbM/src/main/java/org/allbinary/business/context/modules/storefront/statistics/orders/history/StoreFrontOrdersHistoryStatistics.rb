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

require "java/lang/JavaOverload"
require "org/allbinary/business/context/modules/storefront/statistics/orders/history/StoreFrontOrdersHistoryStatisticsInterface"

module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; module Statistics; module Orders; module History

class StoreFrontOrdersHistoryStatistics
    include StoreFrontOrdersHistoryStatisticsInterface
    attr_accessor :numberOfOrdersLong, :subTotalMoney, :shippingCostMoney, :taxesMoney, :totalMoney

    def jfields_org_allbinary_business_context_modules_storefront_statistics_orders_history_StoreFrontOrdersHistoryStatistics
        @numberOfOrdersLong = nil unless instance_variable_defined?(:@numberOfOrdersLong)
        @subTotalMoney = nil unless instance_variable_defined?(:@subTotalMoney)
        @shippingCostMoney = nil unless instance_variable_defined?(:@shippingCostMoney)
        @taxesMoney = nil unless instance_variable_defined?(:@taxesMoney)
        @totalMoney = nil unless instance_variable_defined?(:@totalMoney)
    end
    

    def initialize(storeFrontInterface)
        jfields_org_allbinary_business_context_modules_storefront_statistics_orders_history_StoreFrontOrdersHistoryStatistics
        @subTotalMoney = ::Org::Allbinary::Business::User::Commerce::Money::Money.new()
        @shippingCostMoney = ::Org::Allbinary::Business::User::Commerce::Money::Money.new()
        @taxesMoney = ::Org::Allbinary::Business::User::Commerce::Money::Money.new()
        @totalMoney = ::Org::Allbinary::Business::User::Commerce::Money::Money.new()
        orderHistoryEntityInterface = ::Org::Allbinary::DataPackage::Tables::User::Commerce::Inventory::Order::OrderHistoryEntityFactory.getInstance()
        orderHistoryInterfaceVector = orderHistoryEntityInterface.getStoreOrders(storeFrontInterface)
        numberOfOrders = 0
        orderHistoryInterface = nil
        size = orderHistoryInterfaceVector.size()
        (0...size).each do |index|
            orderHistoryInterface = orderHistoryInterfaceVector.get(index)
            numberOfOrders = numberOfOrders + 1
            @subTotalMoney.add(orderHistoryInterface.getSubTotal())
            @shippingCostMoney.add(orderHistoryInterface.getShippingCost())
            @taxesMoney.add(orderHistoryInterface.getTaxes())
            @totalMoney.add(orderHistoryInterface.getTotal())
        end
        @numberOfOrdersLong = numberOfOrders
    end
    

    def getNumberOfOrders()
        return @numberOfOrdersLong
    end
    java_overload :getNumberOfOrders, 0
    

    def getSubTotal()
        return @subTotalMoney
    end
    java_overload :getSubTotal, 0
    

    def getShippingCost()
        return @shippingCostMoney
    end
    java_overload :getShippingCost, 0
    

    def getTaxes()
        return @taxesMoney
    end
    java_overload :getTaxes, 0
    

    def getTotal()
        return @totalMoney
    end
    java_overload :getTotal, 0
    

    def toHashMap()
        hashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
        storeFrontOrdersHistoryStatisticsData = StoreFrontOrdersHistoryStatisticsData.getInstance()
        hashMap.put(storeFrontOrdersHistoryStatisticsData.NUMBEROFORDERS, self.getNumberOfOrders().to_s)
        hashMap.put(storeFrontOrdersHistoryStatisticsData.SUBTOTAL, self.getSubTotal().to_s)
        hashMap.put(storeFrontOrdersHistoryStatisticsData.SHIPPINGCOST, self.getShippingCost().to_s)
        hashMap.put(storeFrontOrdersHistoryStatisticsData.TAXES, self.getTaxes().to_s)
        hashMap.put(storeFrontOrdersHistoryStatisticsData.TOTAL, self.getTotal().to_s)
        return hashMap
    end
    java_overload :toHashMap, 0
    

    def toVector()
        return nil
    end
    java_overload :toVector, 0
    

    def getKey()
        return nil
    end
    java_overload :getKey, 0
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontInterface, "org/allbinary/business/context/modules/storefront/StoreFrontInterface" unless const_defined?(:StoreFrontInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Order; autoload :OrderHistoryInterface, "org/allbinary/business/user/commerce/inventory/order/OrderHistoryInterface" unless const_defined?(:OrderHistoryInterface, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; autoload :Money, "org/allbinary/business/user/commerce/money/Money" unless const_defined?(:Money, false); end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module User; module Commerce; module Inventory; module Order; autoload :OrderHistoryEntityFactory, "org/allbinary/data/tables/user/commerce/inventory/order/OrderHistoryEntityFactory" unless const_defined?(:OrderHistoryEntityFactory, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module User; module Commerce; module Inventory; module Order; autoload :OrderHistoryEntityInterface, "org/allbinary/data/tables/user/commerce/inventory/order/OrderHistoryEntityInterface" unless const_defined?(:OrderHistoryEntityInterface, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
autoload :StoreFrontOrdersHistoryStatisticsData, "org/allbinary/business/context/modules/storefront/statistics/orders/history/StoreFrontOrdersHistoryStatisticsData" unless const_defined?(:StoreFrontOrdersHistoryStatisticsData, false)

end; end; end; end; end; end; end; end; end

