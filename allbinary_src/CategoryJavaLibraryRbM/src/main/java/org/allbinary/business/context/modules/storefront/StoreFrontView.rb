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
# package org.allbinary.business.context.modules.storefront

require "org/allbinary/data/tree/dom/DomNodeInterface"

class StoreFrontView
    include DomNodeInterface
    attr_accessor :logUtil, :storeFrontInterface

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @storeFrontInterface = nil
    end
    

    def initialize(storeFrontInterface)
        initialize_fields
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
            commonStrings = CommonStrings.getInstance()
            @logUtil.putF("Constructing: StoreFrontView for: " + storeFrontInterface.getName(), self, commonStrings.GET_INSTANCE)
        end
        @storeFrontInterface = storeFrontInterface
    end
    

    # throws Exception
    def toXmlNode(document)
        hashMap = @storeFrontInterface.toHashMap()
        storeFrontData = StoreFrontData.getInstance()
        hashMap.put(storeFrontData.CURRENTHOMEHOSTNAME, @storeFrontInterface.getCurrentHomeHostName())
        hashMap.put(storeFrontData.CURRENTHOMEHOSTNAMEPATH, @storeFrontInterface.getCurrentHomeHostNamePath())
        hashMap.put(storeFrontData.CURRENTHOSTNAME, @storeFrontInterface.getCurrentHostName())
        hashMap.put(storeFrontData.CURRENTHOSTNAMEPATH, @storeFrontInterface.getCurrentHostNamePath())
        hashMap.put(BasketData::NAME, @storeFrontInterface.getBasketName())
        node = ModDomHelper.createNameValueNodes(document, storeFrontData.NAME, hashMap)
        return node
    end
end

autoload :HashMap, "java/util/HashMap"
autoload :BasketData, "org/allbinary/business/user/commerce/inventory/basket/BasketData"
autoload :ModDomHelper, "org/allbinary/data/tree/dom/ModDomHelper"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :Document, "org/w3c/dom/Document"
autoload :Node, "org/w3c/dom/Node"
autoload :StoreFrontData, "org/allbinary/business/context/modules/storefront/StoreFrontData"
autoload :StoreFrontInterface, "org/allbinary/business/context/modules/storefront/StoreFrontInterface"

