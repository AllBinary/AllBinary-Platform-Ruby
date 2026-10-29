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

# require "java/util/Set"

class ItemView
    attr_accessor :itemInterface, :vector

    def initialize_fields
        @itemInterface = nil
        @vector = nil
    end
    

    def initialize(itemInterface, vector)
        initialize_fields
        @itemInterface = itemInterface
        @vector = vector
    end
    

    # throws Exception
    def toXmlNode(document)
        hashMap = @itemInterface.toHashMap()
        keySet = hashMap.keySet()
        node = document.createElement(ItemData::ITEM)
        basicItemView = BasicItemView.new(@itemInterface, @vector)
        node.appendChild(basicItemView.toXmlNode(document))
        stringUtil = StringUtil.getInstance()
        nameArray = keySet.toArray()
        size = nameArray.length
        (0...size).each do |index|
            name = nameArray[index]
            value = hashMap.get(name)
            value = stringUtil.getNonNull(value)
            node.appendChild(ModDomHelper.createNameValueNodes(document, name, value))
        end
        shippingAddressNode = document.createElement(StreetAddressData::NAME)
        shippingAddressNode.appendChild(@itemInterface.getShippingAddress().toXmlNode(document))
        return node
    end
end

require "java/util/HashMap"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/business/user/address/StreetAddressData"
require "org/allbinary/data/tree/dom/ModDomHelper"
require "org/allbinary/logic/string/StringUtil"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"
require "org/allbinary/business/user/commerce/inventory/item/BasicItemView"
require "org/allbinary/business/user/commerce/inventory/item/ItemData"
require "org/allbinary/business/user/commerce/inventory/item/OrderItemInterface"

