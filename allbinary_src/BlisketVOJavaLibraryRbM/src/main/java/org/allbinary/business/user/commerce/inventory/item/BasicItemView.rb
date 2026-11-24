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
# require "java/util/Set"
require "org/allbinary/data/tree/dom/DomNodeInterface"

module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Item

class BasicItemView
    include ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeInterface
    attr_accessor :logUtil, :commonStrings, :basicItemData, :itemInterface, :vector

    def jfields_org_allbinary_business_user_commerce_inventory_item_BasicItemView
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @basicItemData = BasicItemData.getInstance()
        @itemInterface = nil unless instance_variable_defined?(:@itemInterface)
        @vector = nil unless instance_variable_defined?(:@vector)
    end
    

    def initialize(itemInterface, vector)
        jfields_org_allbinary_business_user_commerce_inventory_item_BasicItemView
        @itemInterface = itemInterface
        @vector = vector
    end
    

    # throws Exception
    def toXmlNode(document)
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().PRODUCTSEARCHLOGGING)
            @logUtil.putF(@commonStrings.START, self, "toXmlNode")
        end
        hashMap = @itemInterface.toHashMap()
        _EMPTY_STRING = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
        hashMap.put(@basicItemData.IMAGE, _EMPTY_STRING)
        stringUtil = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance()
        keySet = hashMap.keySet()
        node = document.createElement(@basicItemData.ITEM)
        nameArray = keySet.toArray()
        size2 = nameArray.length
        (0...size2).each do |index|
            name = nameArray[index]
            value = hashMap.get(name)
            value = stringUtil.getNonNull(value)
            node.appendChild(::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createNameValueNodes(document, name, value))
        end
        totalNode = ::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createNameValueNodes(document, @basicItemData.TOTAL, @itemInterface.getTotal().to_s)
        node.appendChild(totalNode)
        size = @vector.size()
        (0...size).each do |index|
            domNodeInterface = @vector.get(index)
            customNode = domNodeInterface.toXmlNode(document)
            node.appendChild(customNode)
        end
        return node
    end
    java_overload :toXmlNode, 1
    

    def toXmlDoc()
        return nil
    end
    java_overload :toXmlDoc, 0
    

    def view()
        return nil
    end
    java_overload :view, 0
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :ModDomHelper, "org/allbinary/data/tree/dom/ModDomHelper" unless const_defined?(:ModDomHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end
autoload :BasicItemData, "org/allbinary/business/user/commerce/inventory/item/BasicItemData" unless const_defined?(:BasicItemData, false)
autoload :ItemInterface, "org/allbinary/business/user/commerce/inventory/item/ItemInterface" unless const_defined?(:ItemInterface, false)

end; end; end; end; end; end; end

