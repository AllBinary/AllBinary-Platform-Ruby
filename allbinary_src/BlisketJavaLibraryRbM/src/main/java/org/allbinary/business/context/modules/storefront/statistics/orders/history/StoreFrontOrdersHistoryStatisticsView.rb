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
# package org.allbinary.business.context.modules.storefront.statistics.orders.history

require "org/allbinary/data/tree/dom/DomNodeInterface"

class StoreFrontOrdersHistoryStatisticsView
    include DomNodeInterface
    attr_accessor :storeFrontOrdersHistoryStatisticsInterface

    def initialize_fields
        @storeFrontOrdersHistoryStatisticsInterface = nil
    end
    

    def initialize(storeFrontOrdersHistoryStatisticsInterface)
        initialize_fields
        @storeFrontOrdersHistoryStatisticsInterface = storeFrontOrdersHistoryStatisticsInterface
    end
    

    # throws Exception
    def toXmlNode(document)
        hashMap = @storeFrontOrdersHistoryStatisticsInterface.toHashMap()
        node = ModDomHelper.createNameValueNodes(document, StoreFrontOrdersHistoryStatisticsData.getInstance().NAME, hashMap)
        return node
    end
end

require "java/util/HashMap"
require "org/allbinary/data/tree/dom/ModDomHelper"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"
require "org/allbinary/business/context/modules/storefront/statistics/orders/history/StoreFrontOrdersHistoryStatisticsData"
require "org/allbinary/business/context/modules/storefront/statistics/orders/history/StoreFrontOrdersHistoryStatisticsInterface"

