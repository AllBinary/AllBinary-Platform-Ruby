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

# require "java/util/HashSet"
# require "java/util/Set"

class BasketReview
    attr_accessor :items

    def initialize_fields
        @items = BasicArrayListD.new()
    end
    

    def initialize()
        initialize_fields
    end
    

    def isValid()
        return true
    end
    

    def addItem(item)
        @items.add(item)
    end
    

    def getItems()
        return @items
    end
    

    def removeItem(id)
        itemArray = @items.toArray()
        size = itemArray.length
        (0...size).each do |index|
            item = itemArray[index]
            if item.getId().compareTo(id) == 0
                @items.remove(item)
            end
        end
    end
    

    def adjustItem(id, num)
        itemArray = @items.toArray()
        size = itemArray.length
        (0...size).each do |index|
            item = itemArray[index]
            if item.getId().compareTo(id) == 0
                item.setNumber(num)
            end
        end
    end
    

    def getTotalWeight()
        weightFloat = 0.0
        itemArray = @items.toArray()
        size = itemArray.length
        (0...size).each do |index|
            item = itemArray[index]
            weightFloat += item.getWeight().to_f
        end
        return weightFloat.to_s
    end
    

    def getNumberOfItems()
        return @items.size()
    end
    

    def getIds()
        idSet = HashSet.new()
        itemArray = @items.toArray()
        size = itemArray.length
        (0...size).each do |index|
            item = itemArray[index]
            idSet.add(item.getId())
        end
        return idSet
    end
    

    def getNumberOf(id)
        itemArray = @items.toArray()
        size = itemArray.length
        (0...size).each do |index|
            item = itemArray[index]
            if item.getId().compareTo(id) == 0
                return item.getNumber()
            end
        end
        return 0
    end
    

    # throws Exception
    def toXmlNode(document)
        node = document.createElement(BasketData::BASKET)
        itemArray = @items.toArray()
        size = itemArray.length
        (0...size).each do |index|
            item = itemArray[index]
            node.appendChild(ItemView.new(item, BasicArrayListD.new()).toXmlNode(document))
        end
        return node
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/business/user/commerce/inventory/item/Item"
require "org/allbinary/business/user/commerce/inventory/item/ItemView"
require "org/allbinary/logic/StdUtil"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"
require "org/allbinary/business/user/commerce/inventory/basket/BasketData"

