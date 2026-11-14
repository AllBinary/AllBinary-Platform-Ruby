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
# package org.allbinary.business.context.modules.storefront.statistics.inventory

require "org/allbinary/data/tree/dom/DomNodeInterface"

class StoreFrontInventoryStatisticsView
    include DomNodeInterface
    attr_accessor :storeFrontInventoryStatisticsInterface

    def initialize_fields
        @storeFrontInventoryStatisticsInterface = nil
    end
    

    def initialize(storeFrontInventoryStatisticsInterface)
        initialize_fields
        @storeFrontInventoryStatisticsInterface = storeFrontInventoryStatisticsInterface
    end
    

    # throws Exception
    def toXmlNode(document)
        hashMap = @storeFrontInventoryStatisticsInterface.toHashMap()
        node = ModDomHelper.createNameValueNodes(document, StoreFrontInventoryStatisticsData.getInstance().NAME, hashMap)
        return node
    end
end

autoload :HashMap, "java/util/HashMap"
autoload :ModDomHelper, "org/allbinary/data/tree/dom/ModDomHelper"
autoload :Document, "org/w3c/dom/Document"
autoload :Node, "org/w3c/dom/Node"
autoload :StoreFrontInventoryStatisticsData, "org/allbinary/business/context/modules/storefront/statistics/inventory/StoreFrontInventoryStatisticsData"
autoload :StoreFrontInventoryStatisticsInterface, "org/allbinary/business/context/modules/storefront/statistics/inventory/StoreFrontInventoryStatisticsInterface"

