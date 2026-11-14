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

require "org/allbinary/data/tree/dom/DomNodeInterface"

class RealTimeStoreFrontStatisticsView
    include DomNodeInterface
    attr_accessor :storeFrontStatisticsInterface, :userRole

    def initialize_fields
        @storeFrontStatisticsInterface = nil
        @userRole = nil
    end
    

    def initialize(storeFrontStatisticsInterface, userRole)
        initialize_fields
        @storeFrontStatisticsInterface = storeFrontStatisticsInterface
        @userRole = userRole
    end
    

    # throws Exception
    def toXmlNode(document)
        node = document.createElement(StoreFrontStatisticsData.getInstance().NAME)
        storeFrontAdvertisementsStatisticsInterface = @storeFrontStatisticsInterface.getAdvertisements()
        storeFrontAdvertisementsStatisticsDomNodeInterface = StoreFrontAdvertisementsStatisticsView.new(storeFrontAdvertisementsStatisticsInterface)
        node.appendChild(storeFrontAdvertisementsStatisticsDomNodeInterface.toXmlNode(document))
        storeFrontInventoryStatisticsInterface = @storeFrontStatisticsInterface.getInventory()
        storeFrontInventoryStatisticsDomNodeInterface = StoreFrontInventoryStatisticsView.new(storeFrontInventoryStatisticsInterface)
        node.appendChild(storeFrontInventoryStatisticsDomNodeInterface.toXmlNode(document))
        storeFrontOrdersHistoryStatisticsInterface = @storeFrontStatisticsInterface.getOrders()
        storeFrontOrdersHistoryStatisticsDomNodeInterface = StoreFrontOrdersHistoryStatisticsView.new(storeFrontOrdersHistoryStatisticsInterface)
        node.appendChild(storeFrontOrdersHistoryStatisticsDomNodeInterface.toXmlNode(document))
        if @userRole == UserRoleFactory.getInstance().ADMINISTRATOR
            storeFrontUsersStatisticsInterface = @storeFrontStatisticsInterface.getUsers()
            storeFrontUsersStatisticsDomNodeInterface = StoreFrontUsersStatisticsView.new(storeFrontUsersStatisticsInterface)
            node.appendChild(storeFrontUsersStatisticsDomNodeInterface.toXmlNode(document))
        end
        return node
    end
end

autoload :StoreFrontAdvertisementsStatisticsInterface, "org/allbinary/business/context/modules/storefront/statistics/advertisements/StoreFrontAdvertisementsStatisticsInterface"
autoload :StoreFrontAdvertisementsStatisticsView, "org/allbinary/business/context/modules/storefront/statistics/advertisements/StoreFrontAdvertisementsStatisticsView"
autoload :StoreFrontInventoryStatisticsInterface, "org/allbinary/business/context/modules/storefront/statistics/inventory/StoreFrontInventoryStatisticsInterface"
autoload :StoreFrontInventoryStatisticsView, "org/allbinary/business/context/modules/storefront/statistics/inventory/StoreFrontInventoryStatisticsView"
autoload :StoreFrontOrdersHistoryStatisticsInterface, "org/allbinary/business/context/modules/storefront/statistics/orders/history/StoreFrontOrdersHistoryStatisticsInterface"
autoload :StoreFrontOrdersHistoryStatisticsView, "org/allbinary/business/context/modules/storefront/statistics/orders/history/StoreFrontOrdersHistoryStatisticsView"
autoload :StoreFrontUsersStatisticsInterface, "org/allbinary/business/context/modules/storefront/statistics/users/StoreFrontUsersStatisticsInterface"
autoload :StoreFrontUsersStatisticsView, "org/allbinary/business/context/modules/storefront/statistics/users/StoreFrontUsersStatisticsView"
autoload :UserRole, "org/allbinary/business/user/role/UserRole"
autoload :UserRoleFactory, "org/allbinary/business/user/role/UserRoleFactory"
autoload :Document, "org/w3c/dom/Document"
autoload :Node, "org/w3c/dom/Node"
autoload :StoreFrontStatisticsData, "org/allbinary/business/context/modules/storefront/statistics/StoreFrontStatisticsData"
autoload :StoreFrontStatisticsInterface, "org/allbinary/business/context/modules/storefront/statistics/StoreFrontStatisticsInterface"

