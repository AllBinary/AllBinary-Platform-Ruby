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
# package org.allbinary.business.user.commerce.inventory.basket

# require "java/util/Set"

module BasketInterface
    

    def addItem(id, num)
        raise NotImplementedError
    end
    

    def removeItem(id)
        raise NotImplementedError
    end
    

    def adjustItem(id, num)
        raise NotImplementedError
    end
    

    def getTotalWeight()
        raise NotImplementedError
    end
    

    def getNumberOfItems()
        raise NotImplementedError
    end
    

    def getIds()
        raise NotImplementedError
    end
    

    def getItems()
        raise NotImplementedError
    end
    

    def getNumberOf(product)
        raise NotImplementedError
    end
    

    # throws MoneyException
    def getSubTotal()
        raise NotImplementedError
    end
end

require "java/util/HashMap"
require "org/allbinary/business/user/commerce/money/Money"
require "org/allbinary/business/user/commerce/money/MoneyException"

