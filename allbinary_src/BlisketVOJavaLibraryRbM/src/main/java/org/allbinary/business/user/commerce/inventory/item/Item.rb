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
# package org.allbinary.business.user.commerce.inventory.item

require "java/lang/JavaOverload"
require "org/allbinary/business/user/commerce/inventory/item/BasicItem"
require "org/allbinary/business/user/commerce/inventory/item/OrderItemInterface"

module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Item

class Item < BasicItem
    include OrderItemInterface
    attr_accessor :group, :tax, :shippingType, :shippingCost, :shippedDate, :shippingAddress, :special

    def jfields_org_allbinary_business_user_commerce_inventory_item_Item
        @group = nil unless instance_variable_defined?(:@group)
        @tax = nil unless instance_variable_defined?(:@tax)
        @shippingType = nil unless instance_variable_defined?(:@shippingType)
        @shippingCost = nil unless instance_variable_defined?(:@shippingCost)
        @shippedDate = nil unless instance_variable_defined?(:@shippedDate)
        @shippingAddress = nil unless instance_variable_defined?(:@shippingAddress)
        @special = nil unless instance_variable_defined?(:@special)
    end

    def initialize(*args)
        case args.length
        when 1 then jnew_org_allbinary_business_user_commerce_inventory_item_Item_1(*args)
        when 0 then jnew_org_allbinary_business_user_commerce_inventory_item_Item_0(*args)
        else raise ArgumentError, "No constructor of Item takes #{args.length} arguments"
        end
    end
    

    def jnew_org_allbinary_business_user_commerce_inventory_item_Item_1(itemHashMap)
        Item.superclass.instance_method(:initialize).bind(self).call(itemHashMap)
        jfields_org_allbinary_business_user_commerce_inventory_item_Item
        self.setData(itemHashMap)
    end
    

    def jnew_org_allbinary_business_user_commerce_inventory_item_Item_0()
        Item.superclass.instance_method(:initialize).bind(self).call()
        jfields_org_allbinary_business_user_commerce_inventory_item_Item
        _EMPTY = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
        @group = _EMPTY
        @tax = _EMPTY
        @shippingType = _EMPTY
        @shippingCost = _EMPTY
        @shippingAddress = ::Org::Allbinary::Business::User::Address::StreetAddress.new()
    end
    

    def setData(itemHashMap)
        @group = itemHashMap.get(::Org::Allbinary::Business::User::Commerce::Shipping::ShippingMethodData::GROUP)
        @tax = itemHashMap.get(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::TAX)
        @shippingType = itemHashMap.get(::Org::Allbinary::Business::User::Commerce::Shipping::ShippingMethodData::NAME)
        @shippingCost = itemHashMap.get(::Org::Allbinary::Business::User::Commerce::Shipping::ShippingMethodData::COST)
        @shippedDate = itemHashMap.get(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::SHIPPEDDATE)
        itemHashMap.put(::Org::Allbinary::Business::User::Address::StreetAddressData::NAME, itemHashMap.get(::Org::Allbinary::Business::User::Address::ShippingAddressData::NAME))
        itemHashMap.put(::Org::Allbinary::Business::User::Address::StreetAddressData::STREET, itemHashMap.get(::Org::Allbinary::Business::User::Address::ShippingAddressData::STREET))
        itemHashMap.put(::Org::Allbinary::Business::User::Address::StreetAddressData::CITY, itemHashMap.get(::Org::Allbinary::Business::User::Address::ShippingAddressData::CITY))
        itemHashMap.put(::Org::Allbinary::Business::User::Address::StreetAddressData::STATE, itemHashMap.get(::Org::Allbinary::Business::User::Address::ShippingAddressData::STATE))
        itemHashMap.put(::Org::Allbinary::Business::User::Address::StreetAddressData::CODE, itemHashMap.get(::Org::Allbinary::Business::User::Address::ShippingAddressData::CODE))
        itemHashMap.put(::Org::Allbinary::Business::User::Address::StreetAddressData::COUNTRY, itemHashMap.get(::Org::Allbinary::Business::User::Address::ShippingAddressData::COUNTRY))
        @shippingAddress = ::Org::Allbinary::Business::User::Address::StreetAddress.new(itemHashMap)
    end
    java_overload :setData, 1
    

    def setGroup(value)
        @group = value
    end
    java_overload :setGroup, 1
    

    def setTax(value)
        @tax = value
    end
    java_overload :setTax, 1
    

    def setShippingType(value)
        @shippingType = value
    end
    java_overload :setShippingType, 1
    

    def setShippingCost(value)
        @shippingCost = value
    end
    java_overload :setShippingCost, 1
    

    def setShippingAddress(value)
        @shippingAddress = value
    end
    java_overload :setShippingAddress, 1
    

    def setSpecial(value)
        @special = value
    end
    java_overload :setSpecial, 1
    

    def getGroup()
        return @group
    end
    java_overload :getGroup, 0
    

    def getTax()
        return @tax
    end
    java_overload :getTax, 0
    

    def getShippingType()
        return @shippingType
    end
    java_overload :getShippingType, 0
    

    def getShippingCost()
        return @shippingCost
    end
    java_overload :getShippingCost, 0
    

    def getShippingAddress()
        return @shippingAddress
    end
    java_overload :getShippingAddress, 0
    

    def getSpecial()
        return @special
    end
    java_overload :getSpecial, 0
    

    def toHashMap()
        hashMap = Item.superclass.java_super_method(:toHashMap, 0).bind(self).call()
        hashMap.put(::Org::Allbinary::Business::User::Commerce::Shipping::ShippingMethodData::GROUP, @group)
        hashMap.put(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::TAX, @tax)
        hashMap.put(::Org::Allbinary::Business::User::Commerce::Shipping::ShippingMethodData::NAME, @shippingType)
        hashMap.put(::Org::Allbinary::Business::User::Commerce::Shipping::ShippingMethodData::COST, @shippingCost)
        hashMap.put(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderHistoryData::SHIPPEDDATE, @shippedDate)
        hashMap.put(::Org::Allbinary::Business::Entry::EntryData.getInstance().SPECIAL, @special)
        return hashMap
    end
    java_overload :toHashMap, 0
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Business; module Entry; autoload :EntryData, "org/allbinary/business/entry/EntryData" unless const_defined?(:EntryData, false); end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Address; autoload :ShippingAddressData, "org/allbinary/business/user/address/ShippingAddressData" unless const_defined?(:ShippingAddressData, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Address; autoload :StreetAddress, "org/allbinary/business/user/address/StreetAddress" unless const_defined?(:StreetAddress, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Address; autoload :StreetAddressData, "org/allbinary/business/user/address/StreetAddressData" unless const_defined?(:StreetAddressData, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Order; autoload :OrderHistoryData, "org/allbinary/business/user/commerce/inventory/order/OrderHistoryData" unless const_defined?(:OrderHistoryData, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; autoload :MoneyException, "org/allbinary/business/user/commerce/money/MoneyException" unless const_defined?(:MoneyException, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Shipping; autoload :ShippingMethodData, "org/allbinary/business/user/commerce/shipping/ShippingMethodData" unless const_defined?(:ShippingMethodData, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end

end; end; end; end; end; end; end

