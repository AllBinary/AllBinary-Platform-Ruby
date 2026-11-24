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
# package org.allbinary.business.context.modules.storefront.statistics

require "java/lang/JavaOverload"
require "org/allbinary/data/tree/dom/DomNodeInterface"

module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; module Statistics

class RealTimeStoreFrontStatisticsView
    include ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeInterface
    attr_accessor :storeFrontStatisticsInterface, :userRole

    def jfields_org_allbinary_business_context_modules_storefront_statistics_RealTimeStoreFrontStatisticsView
        @storeFrontStatisticsInterface = nil unless instance_variable_defined?(:@storeFrontStatisticsInterface)
        @userRole = nil unless instance_variable_defined?(:@userRole)
    end
    

    def initialize(storeFrontStatisticsInterface, userRole)
        jfields_org_allbinary_business_context_modules_storefront_statistics_RealTimeStoreFrontStatisticsView
        @storeFrontStatisticsInterface = storeFrontStatisticsInterface
        @userRole = userRole
    end
    

    # throws Exception
    def toXmlNode(document)
        node = document.createElement(StoreFrontStatisticsData.getInstance().NAME)
        storeFrontAdvertisementsStatisticsInterface = @storeFrontStatisticsInterface.getAdvertisements()
        storeFrontAdvertisementsStatisticsDomNodeInterface = ::Org::Allbinary::Business::Context::Modules::Storefront::Statistics::Advertisements::StoreFrontAdvertisementsStatisticsView.new(storeFrontAdvertisementsStatisticsInterface)
        node.appendChild(storeFrontAdvertisementsStatisticsDomNodeInterface.toXmlNode(document))
        storeFrontInventoryStatisticsInterface = @storeFrontStatisticsInterface.getInventory()
        storeFrontInventoryStatisticsDomNodeInterface = ::Org::Allbinary::Business::Context::Modules::Storefront::Statistics::Inventory::StoreFrontInventoryStatisticsView.new(storeFrontInventoryStatisticsInterface)
        node.appendChild(storeFrontInventoryStatisticsDomNodeInterface.toXmlNode(document))
        storeFrontOrdersHistoryStatisticsInterface = @storeFrontStatisticsInterface.getOrders()
        storeFrontOrdersHistoryStatisticsDomNodeInterface = ::Org::Allbinary::Business::Context::Modules::Storefront::Statistics::Orders::History::StoreFrontOrdersHistoryStatisticsView.new(storeFrontOrdersHistoryStatisticsInterface)
        node.appendChild(storeFrontOrdersHistoryStatisticsDomNodeInterface.toXmlNode(document))
        if @userRole == ::Org::Allbinary::Business::User::Role::UserRoleFactory.getInstance().ADMINISTRATOR
            storeFrontUsersStatisticsInterface = @storeFrontStatisticsInterface.getUsers()
            storeFrontUsersStatisticsDomNodeInterface = ::Org::Allbinary::Business::Context::Modules::Storefront::Statistics::Users::StoreFrontUsersStatisticsView.new(storeFrontUsersStatisticsInterface)
            node.appendChild(storeFrontUsersStatisticsDomNodeInterface.toXmlNode(document))
        end
        return node
    end
    java_overload :toXmlNode, 1
end

module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; module Statistics; module Advertisements; autoload :StoreFrontAdvertisementsStatisticsInterface, "org/allbinary/business/context/modules/storefront/statistics/advertisements/StoreFrontAdvertisementsStatisticsInterface" unless const_defined?(:StoreFrontAdvertisementsStatisticsInterface, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; module Statistics; module Advertisements; autoload :StoreFrontAdvertisementsStatisticsView, "org/allbinary/business/context/modules/storefront/statistics/advertisements/StoreFrontAdvertisementsStatisticsView" unless const_defined?(:StoreFrontAdvertisementsStatisticsView, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; module Statistics; module Inventory; autoload :StoreFrontInventoryStatisticsInterface, "org/allbinary/business/context/modules/storefront/statistics/inventory/StoreFrontInventoryStatisticsInterface" unless const_defined?(:StoreFrontInventoryStatisticsInterface, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; module Statistics; module Inventory; autoload :StoreFrontInventoryStatisticsView, "org/allbinary/business/context/modules/storefront/statistics/inventory/StoreFrontInventoryStatisticsView" unless const_defined?(:StoreFrontInventoryStatisticsView, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; module Statistics; module Orders; module History; autoload :StoreFrontOrdersHistoryStatisticsInterface, "org/allbinary/business/context/modules/storefront/statistics/orders/history/StoreFrontOrdersHistoryStatisticsInterface" unless const_defined?(:StoreFrontOrdersHistoryStatisticsInterface, false); end; end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; module Statistics; module Orders; module History; autoload :StoreFrontOrdersHistoryStatisticsView, "org/allbinary/business/context/modules/storefront/statistics/orders/history/StoreFrontOrdersHistoryStatisticsView" unless const_defined?(:StoreFrontOrdersHistoryStatisticsView, false); end; end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; module Statistics; module Users; autoload :StoreFrontUsersStatisticsInterface, "org/allbinary/business/context/modules/storefront/statistics/users/StoreFrontUsersStatisticsInterface" unless const_defined?(:StoreFrontUsersStatisticsInterface, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; module Statistics; module Users; autoload :StoreFrontUsersStatisticsView, "org/allbinary/business/context/modules/storefront/statistics/users/StoreFrontUsersStatisticsView" unless const_defined?(:StoreFrontUsersStatisticsView, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Role; autoload :UserRole, "org/allbinary/business/user/role/UserRole" unless const_defined?(:UserRole, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Role; autoload :UserRoleFactory, "org/allbinary/business/user/role/UserRoleFactory" unless const_defined?(:UserRoleFactory, false); end; end; end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
autoload :StoreFrontStatisticsData, "org/allbinary/business/context/modules/storefront/statistics/StoreFrontStatisticsData" unless const_defined?(:StoreFrontStatisticsData, false)
autoload :StoreFrontStatisticsInterface, "org/allbinary/business/context/modules/storefront/statistics/StoreFrontStatisticsInterface" unless const_defined?(:StoreFrontStatisticsInterface, false)

end; end; end; end; end; end; end

