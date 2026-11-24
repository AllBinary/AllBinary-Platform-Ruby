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
# package org.allbinary.business.user.commerce.inventory.order


module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Order

module OrderHistoryInterface
    

    def setUserName(value)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def setDefaultShippingAddress(shippingAddress)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def setBillingAddress(billingAddress)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def setPaymentInfo(payment)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def setShipDate(value)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def setOrderDate(value)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def setTransDate(value)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def setCancelDate(value)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def setStatus(value)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def setSubTotal(value)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def setShippingCost(value)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def setTaxes(value)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def setTotal(value)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getUserName()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getShippingAddress()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getBillingAddress()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getPaymentInfo()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getShipDate()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getOrderDate()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getTransDate()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getCancelDate()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getStatus()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getSubTotal()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getShippingCost()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getTaxes()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getTotal()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getPaymentMethod()
        return super if defined?(super)
        raise NotImplementedError
    end
end

module ::Org; module Allbinary; module Business; module User; module Address; autoload :StreetAddress, "org/allbinary/business/user/address/StreetAddress" unless const_defined?(:StreetAddress, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; autoload :Money, "org/allbinary/business/user/commerce/money/Money" unless const_defined?(:Money, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Payment; autoload :Payment, "org/allbinary/business/user/commerce/money/payment/Payment" unless const_defined?(:Payment, false); end; end; end; end; end; end; end

end; end; end; end; end; end; end

