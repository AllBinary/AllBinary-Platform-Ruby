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
# package org.allbinary.business.context.modules.storefront.statistics.inventory

require "org/allbinary/business/context/modules/storefront/statistics/inventory/StoreFrontInventoryStatisticsInterface"

class StoreFrontInventoryStatistics
    include StoreFrontInventoryStatisticsInterface
    attr_accessor :totalNumberOfItems, :totalInventorySaleValueMoney

    def initialize_fields
        @totalNumberOfItems = 0
        @totalInventorySaleValueMoney = nil
    end
    

    def initialize(storeFrontInterface)
        initialize_fields
        @totalInventorySaleValueMoney = Money.new()
        inventoryEntityInterface = InventoryEntityFactory.getInstance().getInventoryEntityInstance()
        itemVector = inventoryEntityInterface.getItems(storeFrontInterface)
        size = itemVector.size()
        (0...size).each do |index|
            itemInterface = itemVector.get(index)
            numberInStock = (itemInterface.getNumber()).to_s.to_i
            @totalNumberOfItems = @totalNumberOfItems + numberInStock
            itemPriceMoney = itemInterface.getPrice()
            itemPriceMoney.multiply(numberInStock)
            @totalInventorySaleValueMoney.add(itemPriceMoney.to_s)
        end
    end
    

    def getNumber()
        return @totalNumberOfItems
    end
    

    def getTotal()
        return @totalInventorySaleValueMoney
    end
    

    def toHashMap()
        hashMap = StdUtil.getInstance().createHashMap()
        hashMap.put(StoreFrontInventoryStatisticsData.getInstance().NUMBEROFITEMS, self.getNumber().to_s)
        hashMap.put(StoreFrontInventoryStatisticsData.getInstance().TOTALVALUE, self.getTotal().to_s)
        return hashMap
    end
    

    def toVector()
        return nil
    end
    

    def getKey()
        return nil
    end
end

autoload :HashMap, "java/util/HashMap"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"
autoload :StoreFrontInterface, "org/allbinary/business/context/modules/storefront/StoreFrontInterface"
autoload :ItemInterface, "org/allbinary/business/user/commerce/inventory/item/ItemInterface"
autoload :Money, "org/allbinary/business/user/commerce/money/Money"
autoload :InventoryEntityFactory, "org/allbinary/data/tables/user/commerce/inventory/item/InventoryEntityFactory"
autoload :InventoryEntityInterface, "org/allbinary/data/tables/user/commerce/inventory/item/InventoryEntityInterface"
autoload :StdUtil, "org/allbinary/logic/StdUtil"
autoload :StoreFrontInventoryStatisticsData, "org/allbinary/business/context/modules/storefront/statistics/inventory/StoreFrontInventoryStatisticsData"

