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
require "org/allbinary/data/tree/dom/DomNodeInterface"

class BasicItemView
    include DomNodeInterface
    attr_accessor :logUtil, :commonStrings, :basicItemData, :itemInterface, :vector

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @basicItemData = BasicItemData.getInstance()
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
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().PRODUCTSEARCHLOGGING)
            @logUtil.putF(@commonStrings.START, self, "toXmlNode")
        end
        hashMap = @itemInterface.toHashMap()
        _EMPTY_STRING = StringUtil.getInstance().EMPTY_STRING
        hashMap.put(@basicItemData.IMAGE, _EMPTY_STRING)
        stringUtil = StringUtil.getInstance()
        keySet = hashMap.keySet()
        node = document.createElement(@basicItemData.ITEM)
        nameArray = keySet.toArray()
        size2 = nameArray.length
        (0...size2).each do |index|
            name = nameArray[index]
            value = hashMap.get(name)
            value = stringUtil.getNonNull(value)
            node.appendChild(ModDomHelper.createNameValueNodes(document, name, value))
        end
        totalNode = ModDomHelper.createNameValueNodes(document, @basicItemData.TOTAL, @itemInterface.getTotal().to_s)
        node.appendChild(totalNode)
        size = @vector.size()
        (0...size).each do |index|
            domNodeInterface = @vector.get(index)
            customNode = domNodeInterface.toXmlNode(document)
            node.appendChild(customNode)
        end
        return node
    end
    

    def toXmlDoc()
        return nil
    end
    

    def view()
        return nil
    end
end

autoload :HashMap, "java/util/HashMap"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"
autoload :ModDomHelper, "org/allbinary/data/tree/dom/ModDomHelper"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :StringUtil, "org/allbinary/logic/string/StringUtil"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :Document, "org/w3c/dom/Document"
autoload :Node, "org/w3c/dom/Node"
autoload :BasicItemData, "org/allbinary/business/user/commerce/inventory/item/BasicItemData"
autoload :ItemInterface, "org/allbinary/business/user/commerce/inventory/item/ItemInterface"

