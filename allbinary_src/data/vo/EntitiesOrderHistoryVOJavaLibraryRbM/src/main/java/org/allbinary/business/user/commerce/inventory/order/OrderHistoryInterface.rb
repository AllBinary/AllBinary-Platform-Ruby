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


module OrderHistoryInterface
    

    def setUserName(value)
        raise NotImplementedError
    end
    

    def setDefaultShippingAddress(shippingAddress)
        raise NotImplementedError
    end
    

    def setBillingAddress(billingAddress)
        raise NotImplementedError
    end
    

    def setPaymentInfo(payment)
        raise NotImplementedError
    end
    

    def setShipDate(value)
        raise NotImplementedError
    end
    

    def setOrderDate(value)
        raise NotImplementedError
    end
    

    def setTransDate(value)
        raise NotImplementedError
    end
    

    def setCancelDate(value)
        raise NotImplementedError
    end
    

    def setStatus(value)
        raise NotImplementedError
    end
    

    def setSubTotal(value)
        raise NotImplementedError
    end
    

    def setShippingCost(value)
        raise NotImplementedError
    end
    

    def setTaxes(value)
        raise NotImplementedError
    end
    

    def setTotal(value)
        raise NotImplementedError
    end
    

    def getUserName()
        raise NotImplementedError
    end
    

    def getShippingAddress()
        raise NotImplementedError
    end
    

    def getBillingAddress()
        raise NotImplementedError
    end
    

    def getPaymentInfo()
        raise NotImplementedError
    end
    

    def getShipDate()
        raise NotImplementedError
    end
    

    def getOrderDate()
        raise NotImplementedError
    end
    

    def getTransDate()
        raise NotImplementedError
    end
    

    def getCancelDate()
        raise NotImplementedError
    end
    

    def getStatus()
        raise NotImplementedError
    end
    

    def getSubTotal()
        raise NotImplementedError
    end
    

    def getShippingCost()
        raise NotImplementedError
    end
    

    def getTaxes()
        raise NotImplementedError
    end
    

    def getTotal()
        raise NotImplementedError
    end
    

    def getPaymentMethod()
        raise NotImplementedError
    end
end

require "org/allbinary/business/user/address/StreetAddress"
require "org/allbinary/business/user/commerce/money/Money"
require "org/allbinary/business/user/commerce/money/payment/Payment"

