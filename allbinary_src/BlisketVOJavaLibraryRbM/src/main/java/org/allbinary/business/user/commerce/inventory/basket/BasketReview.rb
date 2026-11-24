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

# require "java/util/Set"

module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Basket

class BasketReview
    attr_accessor :items

    def jfields_org_allbinary_business_user_commerce_inventory_basket_BasketReview
        @items = ::Org::Allbinary::Util::BasicArrayListD.new()
    end
    

    def initialize()
        jfields_org_allbinary_business_user_commerce_inventory_basket_BasketReview
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
        idSet = ::Java::Util::HashSet.new()
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
            node.appendChild(::Org::Allbinary::Business::User::Commerce::Inventory::Item::ItemView.new(item, ::Org::Allbinary::Util::BasicArrayListD.new()).toXmlNode(document))
        end
        return node
    end
end

module ::Java; module Util; autoload :HashSet, "java/util/HashSet" unless const_defined?(:HashSet, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Item; autoload :Item, "org/allbinary/business/user/commerce/inventory/item/Item" unless const_defined?(:Item, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Item; autoload :ItemView, "org/allbinary/business/user/commerce/inventory/item/ItemView" unless const_defined?(:ItemView, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
autoload :BasketData, "org/allbinary/business/user/commerce/inventory/basket/BasketData" unless const_defined?(:BasketData, false)

end; end; end; end; end; end; end

