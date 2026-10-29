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

require "org/allbinary/business/context/modules/storefront/statistics/orders/history/StoreFrontOrdersHistoryStatisticsInterface"

class StoreFrontOrdersHistoryStatistics
    include StoreFrontOrdersHistoryStatisticsInterface
    attr_accessor :numberOfOrdersLong, :subTotalMoney, :shippingCostMoney, :taxesMoney, :totalMoney

    def initialize_fields
        @numberOfOrdersLong = nil
        @subTotalMoney = nil
        @shippingCostMoney = nil
        @taxesMoney = nil
        @totalMoney = nil
    end
    

    def initialize(storeFrontInterface)
        initialize_fields
        @subTotalMoney = Money.new()
        @shippingCostMoney = Money.new()
        @taxesMoney = Money.new()
        @totalMoney = Money.new()
        orderHistoryEntityInterface = OrderHistoryEntityFactory.getInstance()
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
    

    def getSubTotal()
        return @subTotalMoney
    end
    

    def getShippingCost()
        return @shippingCostMoney
    end
    

    def getTaxes()
        return @taxesMoney
    end
    

    def getTotal()
        return @totalMoney
    end
    

    def toHashMap()
        hashMap = StdUtil.getInstance().createHashMap()
        storeFrontOrdersHistoryStatisticsData = StoreFrontOrdersHistoryStatisticsData.getInstance()
        hashMap.put(storeFrontOrdersHistoryStatisticsData.NUMBEROFORDERS, self.getNumberOfOrders().to_s)
        hashMap.put(storeFrontOrdersHistoryStatisticsData.SUBTOTAL, self.getSubTotal().to_s)
        hashMap.put(storeFrontOrdersHistoryStatisticsData.SHIPPINGCOST, self.getShippingCost().to_s)
        hashMap.put(storeFrontOrdersHistoryStatisticsData.TAXES, self.getTaxes().to_s)
        hashMap.put(storeFrontOrdersHistoryStatisticsData.TOTAL, self.getTotal().to_s)
        return hashMap
    end
    

    def toVector()
        return nil
    end
    

    def getKey()
        return nil
    end
end

require "java/util/HashMap"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/business/context/modules/storefront/StoreFrontInterface"
require "org/allbinary/business/user/commerce/inventory/order/OrderHistoryInterface"
require "org/allbinary/business/user/commerce/money/Money"
require "org/allbinary/data/tables/user/commerce/inventory/order/OrderHistoryEntityFactory"
require "org/allbinary/data/tables/user/commerce/inventory/order/OrderHistoryEntityInterface"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/business/context/modules/storefront/statistics/orders/history/StoreFrontOrdersHistoryStatisticsData"

