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

require "org/allbinary/business/user/commerce/inventory/item/ItemInterface"

module OrderItemInterface
    include ItemInterface
    

    def setGroup(value)
        raise NotImplementedError
    end
    

    def setTax(value)
        raise NotImplementedError
    end
    

    def setShippingType(value)
        raise NotImplementedError
    end
    

    def setShippingCost(value)
        raise NotImplementedError
    end
    

    def setShippingAddress(value)
        raise NotImplementedError
    end
    

    def setSpecial(value)
        raise NotImplementedError
    end
    

    def getGroup()
        raise NotImplementedError
    end
    

    def getTax()
        raise NotImplementedError
    end
    

    def getShippingType()
        raise NotImplementedError
    end
    

    def getShippingCost()
        raise NotImplementedError
    end
    

    def getShippingAddress()
        raise NotImplementedError
    end
    

    def getSpecial()
        raise NotImplementedError
    end
end

require "org/allbinary/business/user/address/StreetAddress"

