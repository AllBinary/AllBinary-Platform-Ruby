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

module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Basket

module BasketInterface
    

    def addItem(id, num)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def removeItem(id)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def adjustItem(id, num)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getTotalWeight()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getNumberOfItems()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getIds()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getItems()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getNumberOf(product)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # throws MoneyException
    def getSubTotal()
        return super if defined?(super)
        raise NotImplementedError
    end
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; autoload :Money, "org/allbinary/business/user/commerce/money/Money" unless const_defined?(:Money, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; autoload :MoneyException, "org/allbinary/business/user/commerce/money/MoneyException" unless const_defined?(:MoneyException, false); end; end; end; end; end; end

end; end; end; end; end; end; end

