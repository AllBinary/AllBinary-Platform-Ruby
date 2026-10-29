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

require "java/io/Serializable"
# require "java/util/Set"
require "org/allbinary/business/user/commerce/inventory/basket/BasketInterface"

class Basket
    include BasketInterface
    include Serializable
    attr_accessor :items

    def initialize_fields
        @items = StdUtil.getInstance().createHashMap()
    end
    

    def initialize()
        initialize_fields
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
    

    def removeItem(id)
        @items.remove(id)
    end
    

    def adjustItem(id, num)
        if (num).to_s.to_i > 0
            @items.put(id, num)
        else
            @items.remove(id)
        end
    end
    

    def getTotalWeight()
        itemsAndNumberInBasket = self.getItems()
        totalWeight = Money.new()
        if itemsAndNumberInBasket.size() > 0
            items = itemsAndNumberInBasket.keySet()
            product = nil
            weightFloat = nil
            itemArray = items.toArray()
            size = itemArray.length
            (0...size).each do |index|
                product = String.new(itemArray[index])
                weightFloat = InventoryEntity.new().getWeight(product)
                weightFloat = getNumberOf(product).to_f * weightFloat.to_f
                totalWeight.add(weightFloat.to_s)
            end
        end
        return totalWeight.to_s
    end
    

    def getNumberOfItems()
        return @items.size()
    end
    

    def getIds()
        set = @items.keySet()
        return set
    end
    

    def getItems()
        return @items
    end
    

    def getNumberOf(product)
        numStr = @items.get(product)
        return (numStr).to_s
    end
    

    # throws MoneyException
    def getSubTotal()
        itemsAndNumberInBasket = self.getItems()
        subTotal = Money.new()
        if itemsAndNumberInBasket.size() > 0
            items = itemsAndNumberInBasket.keySet()
            inventoryEntityFactory = InventoryEntityFactory.getInstance()
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
end

require "java/util/HashMap"
require "org/allbinary/business/user/commerce/inventory/item/ItemInterface"
require "org/allbinary/business/user/commerce/money/Money"
require "org/allbinary/business/user/commerce/money/MoneyException"
require "org/allbinary/data/tables/user/commerce/inventory/item/InventoryEntity"
require "org/allbinary/data/tables/user/commerce/inventory/item/InventoryEntityFactory"
require "org/allbinary/logic/StdUtil"

