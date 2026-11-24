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
# package org.allbinary.data.tables.user.commerce.inventory.order

require "java/lang/JavaOverload"
require "org/allbinary/data/tables/BasicDataTableInterface"

module ::Org; module Allbinary; module DataPackage; module Tables; module User; module Commerce; module Inventory; module Order

module OrderHistoryEntityInterface
    include ::Org::Allbinary::DataPackage::Tables::BasicDataTableInterface
    

    def insert(userName, order)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :insert, 2
    

    def setStatus(orderId, status)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :setStatus, 2
    

    def setPaymentMethod(orderId, status)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :setPaymentMethod, 2
    

    # throws Exception
    def getStoreOrders(storeFrontInterface)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getStoreOrders, 1
    

    # throws Exception
    def getOrders_j1(userName)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # throws Exception
    def getOrders_j3(status, fromDate, toDate)
        return super if defined?(super)
        raise NotImplementedError
    end

    def getOrders(*java_overload_args)
        return getOrders_j1(*java_overload_args) if java_overload_args.length == 1
        return getOrders_j3(*java_overload_args) if java_overload_args.length == 3
        raise ArgumentError, "No method getOrders takes #{java_overload_args.length} arguments"
    end
    

    # throws Exception
    def getOrder(id)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getOrder, 1
    

    # throws Exception
    def update(whereHashMap, orderHashMap)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :update, 2
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontInterface, "org/allbinary/business/context/modules/storefront/StoreFrontInterface" unless const_defined?(:StoreFrontInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Order; autoload :Order, "org/allbinary/business/user/commerce/inventory/order/Order" unless const_defined?(:Order, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Order; autoload :OrderHistory, "org/allbinary/business/user/commerce/inventory/order/OrderHistory" unless const_defined?(:OrderHistory, false); end; end; end; end; end; end; end

end; end; end; end; end; end; end; end

