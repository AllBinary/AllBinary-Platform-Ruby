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
# package org.allbinary.data.tables.user.commerce.inventory.item

require "java/lang/JavaOverload"
require "org/allbinary/data/tables/BasicDataTableInterface"

module ::Org; module Allbinary; module DataPackage; module Tables; module User; module Commerce; module Inventory; module Item

module InventoryEntityInterface
    include ::Org::Allbinary::DataPackage::Tables::BasicDataTableInterface
    

    # throws MoneyException
    def getItem(id)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getItem, 1
    

    # throws Exception
    def getItems(storeFrontInterface)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getItems, 1
    

    def getWeight(id)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getWeight, 1
    

    def deleteWhere(key, value)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :deleteWhere, 2
    

    def insert(values)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :insert, 1
    

    def update(updatedValues)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :update, 1
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontInterface, "org/allbinary/business/context/modules/storefront/StoreFrontInterface" unless const_defined?(:StoreFrontInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Item; autoload :ItemInterface, "org/allbinary/business/user/commerce/inventory/item/ItemInterface" unless const_defined?(:ItemInterface, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; autoload :MoneyException, "org/allbinary/business/user/commerce/money/MoneyException" unless const_defined?(:MoneyException, false); end; end; end; end; end; end

end; end; end; end; end; end; end; end

