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

module OrderInterface
    

    def setShippingMethod(shippingType)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def setPaymentMethod(value)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def setSpecial(special)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def setStoreName(value)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def setUserComments(value)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def setUserCancelComments(value)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def setStoreComments(value)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def setStoreCancelComments(value)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getBasket()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getShippingMethod()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getPaymentMethod()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getSpecial()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getId()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getStoreName()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getUserComments()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getUserCancelComments()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getStoreComments()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getStoreCancelComments()
        return super if defined?(super)
        raise NotImplementedError
    end
end

module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Basket; autoload :BasketInterface, "org/allbinary/business/user/commerce/inventory/basket/BasketInterface" unless const_defined?(:BasketInterface, false); end; end; end; end; end; end; end

end; end; end; end; end; end; end

