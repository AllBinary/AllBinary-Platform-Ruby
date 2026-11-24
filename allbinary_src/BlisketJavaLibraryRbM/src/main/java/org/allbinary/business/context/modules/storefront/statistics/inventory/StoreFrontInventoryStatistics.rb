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

require "java/lang/JavaOverload"
require "org/allbinary/business/context/modules/storefront/statistics/inventory/StoreFrontInventoryStatisticsInterface"

module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; module Statistics; module Inventory

class StoreFrontInventoryStatistics
    include StoreFrontInventoryStatisticsInterface
    attr_accessor :totalNumberOfItems, :totalInventorySaleValueMoney

    def jfields_org_allbinary_business_context_modules_storefront_statistics_inventory_StoreFrontInventoryStatistics
        @totalNumberOfItems = 0 unless instance_variable_defined?(:@totalNumberOfItems)
        @totalInventorySaleValueMoney = nil unless instance_variable_defined?(:@totalInventorySaleValueMoney)
    end
    

    def initialize(storeFrontInterface)
        jfields_org_allbinary_business_context_modules_storefront_statistics_inventory_StoreFrontInventoryStatistics
        @totalInventorySaleValueMoney = ::Org::Allbinary::Business::User::Commerce::Money::Money.new()
        inventoryEntityInterface = ::Org::Allbinary::DataPackage::Tables::User::Commerce::Inventory::Item::InventoryEntityFactory.getInstance().getInventoryEntityInstance()
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
    java_overload :getNumber, 0
    

    def getTotal()
        return @totalInventorySaleValueMoney
    end
    java_overload :getTotal, 0
    

    def toHashMap()
        hashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
        hashMap.put(StoreFrontInventoryStatisticsData.getInstance().NUMBEROFITEMS, self.getNumber().to_s)
        hashMap.put(StoreFrontInventoryStatisticsData.getInstance().TOTALVALUE, self.getTotal().to_s)
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
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Item; autoload :ItemInterface, "org/allbinary/business/user/commerce/inventory/item/ItemInterface" unless const_defined?(:ItemInterface, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; autoload :Money, "org/allbinary/business/user/commerce/money/Money" unless const_defined?(:Money, false); end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module User; module Commerce; module Inventory; module Item; autoload :InventoryEntityFactory, "org/allbinary/data/tables/user/commerce/inventory/item/InventoryEntityFactory" unless const_defined?(:InventoryEntityFactory, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module User; module Commerce; module Inventory; module Item; autoload :InventoryEntityInterface, "org/allbinary/data/tables/user/commerce/inventory/item/InventoryEntityInterface" unless const_defined?(:InventoryEntityInterface, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
autoload :StoreFrontInventoryStatisticsData, "org/allbinary/business/context/modules/storefront/statistics/inventory/StoreFrontInventoryStatisticsData" unless const_defined?(:StoreFrontInventoryStatisticsData, false)

end; end; end; end; end; end; end; end

