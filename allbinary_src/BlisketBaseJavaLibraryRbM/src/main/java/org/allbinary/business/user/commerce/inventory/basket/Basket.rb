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
# package org.allbinary.business.user.commerce.inventory.basket

require "java/lang/JavaOverload"
require "java/io/Serializable"
# require "java/util/Set"
require "org/allbinary/business/user/commerce/inventory/basket/BasketInterface"

module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Basket

class Basket
    include BasketInterface
    include ::Java::Io::Serializable
    attr_accessor :items

    def jfields_org_allbinary_business_user_commerce_inventory_basket_Basket
        @items = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
    end
    

    def initialize()
        jfields_org_allbinary_business_user_commerce_inventory_basket_Basket
    end
    

    def addItem(id, num)
        if @items.containsKey(id)
            oldNumStr = String.new(@items.get(id))
            oldNumInt = (oldNumStr).to_s
            numInt = (num).to_s
            newNumInt = oldNumInt.to_i + numInt.to_i
            @items.put(id, newNumInt.to_s)
        else
            @items.put(id, num)
        end
    end
    java_overload :addItem, 2
    

    def removeItem(id)
        @items.remove(id)
    end
    java_overload :removeItem, 1
    

    def adjustItem(id, num)
        if (num).to_s.to_i > 0
            @items.put(id, num)
        else
            @items.remove(id)
        end
    end
    java_overload :adjustItem, 2
    

    def getTotalWeight()
        itemsAndNumberInBasket = self.getItems()
        totalWeight = ::Org::Allbinary::Business::User::Commerce::Money::Money.new()
        if itemsAndNumberInBasket.size() > 0
            items = itemsAndNumberInBasket.keySet()
            product = nil
            weightFloat = nil
            itemArray = items.toArray()
            size = itemArray.length
            (0...size).each do |index|
                product = String.new(itemArray[index])
                weightFloat = ::Org::Allbinary::DataPackage::Tables::User::Commerce::Inventory::Item::InventoryEntity.new().getWeight(product)
                weightFloat = getNumberOf(product).to_f * weightFloat.to_f
                totalWeight.add(weightFloat.to_s)
            end
        end
        return totalWeight.to_s
    end
    java_overload :getTotalWeight, 0
    

    def getNumberOfItems()
        return @items.size()
    end
    java_overload :getNumberOfItems, 0
    

    def getIds()
        set = @items.keySet()
        return set
    end
    java_overload :getIds, 0
    

    def getItems()
        return @items
    end
    java_overload :getItems, 0
    

    def getNumberOf(product)
        numStr = @items.get(product)
        return (numStr).to_s
    end
    java_overload :getNumberOf, 1
    

    # throws MoneyException
    def getSubTotal()
        itemsAndNumberInBasket = self.getItems()
        subTotal = ::Org::Allbinary::Business::User::Commerce::Money::Money.new()
        if itemsAndNumberInBasket.size() > 0
            items = itemsAndNumberInBasket.keySet()
            inventoryEntityFactory = ::Org::Allbinary::DataPackage::Tables::User::Commerce::Inventory::Item::InventoryEntityFactory.getInstance()
            inventoryEntity = inventoryEntityFactory.getInventoryEntityInstance()
            itemArray = items.toArray()
            size = itemArray.length
            (0...size).each do |index|
                product = String.new(itemArray[index])
                itemInterface = inventoryEntity.getItem(product)
                productTotal = itemInterface.getPrice()
                productTotal.multiply(getNumberOf(product).to_i)
                subTotal.add(productTotal.to_s)
            end
        end
        return subTotal
    end
    java_overload :getSubTotal, 0
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Item; autoload :ItemInterface, "org/allbinary/business/user/commerce/inventory/item/ItemInterface" unless const_defined?(:ItemInterface, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; autoload :Money, "org/allbinary/business/user/commerce/money/Money" unless const_defined?(:Money, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; autoload :MoneyException, "org/allbinary/business/user/commerce/money/MoneyException" unless const_defined?(:MoneyException, false); end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module User; module Commerce; module Inventory; module Item; autoload :InventoryEntity, "org/allbinary/data/tables/user/commerce/inventory/item/InventoryEntity" unless const_defined?(:InventoryEntity, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module User; module Commerce; module Inventory; module Item; autoload :InventoryEntityFactory, "org/allbinary/data/tables/user/commerce/inventory/item/InventoryEntityFactory" unless const_defined?(:InventoryEntityFactory, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end

end; end; end; end; end; end; end

