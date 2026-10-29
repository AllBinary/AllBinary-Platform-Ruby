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

require "org/allbinary/business/user/commerce/inventory/item/BasicItem"
require "org/allbinary/business/user/commerce/inventory/item/OrderItemInterface"

class Item < BasicItem
    include OrderItemInterface
    attr_accessor :group, :tax, :shippingType, :shippingCost, :shippedDate, :shippingAddress, :special

    def initialize_fields
        @group = nil
        @tax = nil
        @shippingType = nil
        @shippingCost = nil
        @shippedDate = nil
        @shippingAddress = nil
        @special = nil
    end

    def initialize(*args)
        case args.length
        when 1 then constructor1(*args)
        when 0 then constructor0(*args)
        end
    end
    

    def constructor1(itemHashMap)
        method(:initialize).super_method.call(itemHashMap)
        initialize_fields
        self.setData(itemHashMap)
    end
    

    def constructor0()
        method(:initialize).super_method.call()
        initialize_fields
        _EMPTY = StringUtil.getInstance().EMPTY_STRING
        @group = _EMPTY
        @tax = _EMPTY
        @shippingType = _EMPTY
        @shippingCost = _EMPTY
        @shippingAddress = StreetAddress.new()
    end
    

    def setData(itemHashMap)
        @group = itemHashMap.get(ShippingMethodData::GROUP)
        @tax = itemHashMap.get(OrderHistoryData::TAX)
        @shippingType = itemHashMap.get(ShippingMethodData::NAME)
        @shippingCost = itemHashMap.get(ShippingMethodData::COST)
        @shippedDate = itemHashMap.get(OrderHistoryData::SHIPPEDDATE)
        itemHashMap.put(StreetAddressData::NAME, itemHashMap.get(ShippingAddressData::NAME))
        itemHashMap.put(StreetAddressData::STREET, itemHashMap.get(ShippingAddressData::STREET))
        itemHashMap.put(StreetAddressData::CITY, itemHashMap.get(ShippingAddressData::CITY))
        itemHashMap.put(StreetAddressData::STATE, itemHashMap.get(ShippingAddressData::STATE))
        itemHashMap.put(StreetAddressData::CODE, itemHashMap.get(ShippingAddressData::CODE))
        itemHashMap.put(StreetAddressData::COUNTRY, itemHashMap.get(ShippingAddressData::COUNTRY))
        @shippingAddress = StreetAddress.new(itemHashMap)
    end
    

    def setGroup(value)
        @group = value
    end
    

    def setTax(value)
        @tax = value
    end
    

    def setShippingType(value)
        @shippingType = value
    end
    

    def setShippingCost(value)
        @shippingCost = value
    end
    

    def setShippingAddress(value)
        @shippingAddress = value
    end
    

    def setSpecial(value)
        @special = value
    end
    

    def getGroup()
        return @group
    end
    

    def getTax()
        return @tax
    end
    

    def getShippingType()
        return @shippingType
    end
    

    def getShippingCost()
        return @shippingCost
    end
    

    def getShippingAddress()
        return @shippingAddress
    end
    

    def getSpecial()
        return @special
    end
    

    def toHashMap()
        hashMap = super()
        hashMap.put(ShippingMethodData::GROUP, @group)
        hashMap.put(OrderHistoryData::TAX, @tax)
        hashMap.put(ShippingMethodData::NAME, @shippingType)
        hashMap.put(ShippingMethodData::COST, @shippingCost)
        hashMap.put(OrderHistoryData::SHIPPEDDATE, @shippedDate)
        hashMap.put(EntryData.getInstance().SPECIAL, @special)
        return hashMap
    end
end

require "java/util/HashMap"
require "org/allbinary/business/entry/EntryData"
require "org/allbinary/business/user/address/ShippingAddressData"
require "org/allbinary/business/user/address/StreetAddress"
require "org/allbinary/business/user/address/StreetAddressData"
require "org/allbinary/business/user/commerce/inventory/order/OrderHistoryData"
require "org/allbinary/business/user/commerce/money/MoneyException"
require "org/allbinary/business/user/commerce/shipping/ShippingMethodData"
require "org/allbinary/logic/string/StringUtil"

