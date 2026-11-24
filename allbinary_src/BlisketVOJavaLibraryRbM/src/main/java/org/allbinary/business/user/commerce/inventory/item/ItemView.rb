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

module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Item

class ItemView
    attr_accessor :itemInterface, :vector

    def jfields_org_allbinary_business_user_commerce_inventory_item_ItemView
        @itemInterface = nil unless instance_variable_defined?(:@itemInterface)
        @vector = nil unless instance_variable_defined?(:@vector)
    end
    

    def initialize(itemInterface, vector)
        jfields_org_allbinary_business_user_commerce_inventory_item_ItemView
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
        stringUtil = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance()
        nameArray = keySet.toArray()
        size = nameArray.length
        (0...size).each do |index|
            name = nameArray[index]
            value = hashMap.get(name)
            value = stringUtil.getNonNull(value)
            node.appendChild(::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createNameValueNodes(document, name, value))
        end
        shippingAddressNode = document.createElement(::Org::Allbinary::Business::User::Address::StreetAddressData::NAME)
        shippingAddressNode.appendChild(@itemInterface.getShippingAddress().toXmlNode(document))
        return node
    end
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Business; module User; module Address; autoload :StreetAddressData, "org/allbinary/business/user/address/StreetAddressData" unless const_defined?(:StreetAddressData, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :ModDomHelper, "org/allbinary/data/tree/dom/ModDomHelper" unless const_defined?(:ModDomHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
autoload :BasicItemView, "org/allbinary/business/user/commerce/inventory/item/BasicItemView" unless const_defined?(:BasicItemView, false)
autoload :ItemData, "org/allbinary/business/user/commerce/inventory/item/ItemData" unless const_defined?(:ItemData, false)
autoload :OrderItemInterface, "org/allbinary/business/user/commerce/inventory/item/OrderItemInterface" unless const_defined?(:OrderItemInterface, false)

end; end; end; end; end; end; end

