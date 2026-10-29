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


module OrderInterface
    

    def setShippingMethod(shippingType)
        raise NotImplementedError
    end
    

    def setPaymentMethod(value)
        raise NotImplementedError
    end
    

    def setSpecial(special)
        raise NotImplementedError
    end
    

    def setStoreName(value)
        raise NotImplementedError
    end
    

    def setUserComments(value)
        raise NotImplementedError
    end
    

    def setUserCancelComments(value)
        raise NotImplementedError
    end
    

    def setStoreComments(value)
        raise NotImplementedError
    end
    

    def setStoreCancelComments(value)
        raise NotImplementedError
    end
    

    def getBasket()
        raise NotImplementedError
    end
    

    def getShippingMethod()
        raise NotImplementedError
    end
    

    def getPaymentMethod()
        raise NotImplementedError
    end
    

    def getSpecial()
        raise NotImplementedError
    end
    

    def getId()
        raise NotImplementedError
    end
    

    def getStoreName()
        raise NotImplementedError
    end
    

    def getUserComments()
        raise NotImplementedError
    end
    

    def getUserCancelComments()
        raise NotImplementedError
    end
    

    def getStoreComments()
        raise NotImplementedError
    end
    

    def getStoreCancelComments()
        raise NotImplementedError
    end
end

require "org/allbinary/business/user/commerce/inventory/basket/BasketInterface"

