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
# package org.allbinary.business.user.commerce.inventory.item

require "java/lang/JavaOverload"
require "org/allbinary/business/user/commerce/inventory/item/ItemInterface"

module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Item

module OrderItemInterface
    include ItemInterface
    

    def setGroup(value)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :setGroup, 1
    

    def setTax(value)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :setTax, 1
    

    def setShippingType(value)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :setShippingType, 1
    

    def setShippingCost(value)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :setShippingCost, 1
    

    def setShippingAddress(value)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :setShippingAddress, 1
    

    def setSpecial(value)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :setSpecial, 1
    

    def getGroup()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getGroup, 0
    

    def getTax()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getTax, 0
    

    def getShippingType()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getShippingType, 0
    

    def getShippingCost()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getShippingCost, 0
    

    def getShippingAddress()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getShippingAddress, 0
    

    def getSpecial()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getSpecial, 0
end

module ::Org; module Allbinary; module Business; module User; module Address; autoload :StreetAddress, "org/allbinary/business/user/address/StreetAddress" unless const_defined?(:StreetAddress, false); end; end; end; end; end

end; end; end; end; end; end; end

