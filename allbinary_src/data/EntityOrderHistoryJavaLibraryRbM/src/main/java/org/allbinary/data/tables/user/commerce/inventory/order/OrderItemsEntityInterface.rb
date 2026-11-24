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

module OrderItemsEntityInterface
    include ::Org::Allbinary::DataPackage::Tables::BasicDataTableInterface
    

    def setStatus(orderId, groupId, status)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :setStatus, 3
    

    def isEverythingShipped(orderId)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :isEverythingShipped, 1
    

    def getBasketReview(orderId)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getBasketReview, 1
    

    def insert_j2(userName, order)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def insert_j1(values)
        return super if defined?(super)
        raise NotImplementedError
    end

    def insert(*java_overload_args)
        return insert_j2(*java_overload_args) if java_overload_args.length == 2
        return insert_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method insert takes #{java_overload_args.length} arguments"
    end
end

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Basket; autoload :BasketReview, "org/allbinary/business/user/commerce/inventory/basket/BasketReview" unless const_defined?(:BasketReview, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Order; autoload :OrderInterface, "org/allbinary/business/user/commerce/inventory/order/OrderInterface" unless const_defined?(:OrderInterface, false); end; end; end; end; end; end; end

end; end; end; end; end; end; end; end

