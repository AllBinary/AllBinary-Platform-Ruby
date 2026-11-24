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

require "java/lang/JavaOverload"
require "org/allbinary/data/tree/dom/DomNodeInterface"

module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; module Statistics; module Inventory

class StoreFrontInventoryStatisticsView
    include ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeInterface
    attr_accessor :storeFrontInventoryStatisticsInterface

    def jfields_org_allbinary_business_context_modules_storefront_statistics_inventory_StoreFrontInventoryStatisticsView
        @storeFrontInventoryStatisticsInterface = nil unless instance_variable_defined?(:@storeFrontInventoryStatisticsInterface)
    end
    

    def initialize(storeFrontInventoryStatisticsInterface)
        jfields_org_allbinary_business_context_modules_storefront_statistics_inventory_StoreFrontInventoryStatisticsView
        @storeFrontInventoryStatisticsInterface = storeFrontInventoryStatisticsInterface
    end
    

    # throws Exception
    def toXmlNode(document)
        hashMap = @storeFrontInventoryStatisticsInterface.toHashMap()
        node = ::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createNameValueNodes(document, StoreFrontInventoryStatisticsData.getInstance().NAME, hashMap)
        return node
    end
    java_overload :toXmlNode, 1
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :ModDomHelper, "org/allbinary/data/tree/dom/ModDomHelper" unless const_defined?(:ModDomHelper, false); end; end; end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
autoload :StoreFrontInventoryStatisticsData, "org/allbinary/business/context/modules/storefront/statistics/inventory/StoreFrontInventoryStatisticsData" unless const_defined?(:StoreFrontInventoryStatisticsData, false)
autoload :StoreFrontInventoryStatisticsInterface, "org/allbinary/business/context/modules/storefront/statistics/inventory/StoreFrontInventoryStatisticsInterface" unless const_defined?(:StoreFrontInventoryStatisticsInterface, false)

end; end; end; end; end; end; end; end

