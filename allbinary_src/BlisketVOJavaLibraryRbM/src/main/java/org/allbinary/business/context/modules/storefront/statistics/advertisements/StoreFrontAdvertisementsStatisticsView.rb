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
# package org.allbinary.business.context.modules.storefront.statistics.advertisements

require "org/allbinary/data/tree/dom/DomNodeInterface"

class StoreFrontAdvertisementsStatisticsView
    include DomNodeInterface
    attr_accessor :storeFrontAdvertisementsStatisticsInterface

    def initialize_fields
        @storeFrontAdvertisementsStatisticsInterface = nil
    end
    

    def initialize(storeFrontAdvertisementsStatisticsInterface)
        initialize_fields
        @storeFrontAdvertisementsStatisticsInterface = storeFrontAdvertisementsStatisticsInterface
    end
    

    # throws Exception
    def toXmlNode(document)
        hashMap = @storeFrontAdvertisementsStatisticsInterface.toHashMap()
        node = ModDomHelper.createNameValueNodes(document, StoreFrontAdvertisementsStatisticsData.getInstance().NAME, hashMap)
        return node
    end
end

autoload :HashMap, "java/util/HashMap"
autoload :ModDomHelper, "org/allbinary/data/tree/dom/ModDomHelper"
autoload :Document, "org/w3c/dom/Document"
autoload :Node, "org/w3c/dom/Node"
autoload :StoreFrontAdvertisementsStatisticsData, "org/allbinary/business/context/modules/storefront/statistics/advertisements/StoreFrontAdvertisementsStatisticsData"
autoload :StoreFrontAdvertisementsStatisticsInterface, "org/allbinary/business/context/modules/storefront/statistics/advertisements/StoreFrontAdvertisementsStatisticsInterface"

