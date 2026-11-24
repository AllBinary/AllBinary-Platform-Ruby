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
# package org.allbinary.business.user.commerce.money.tax.modules


module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Tax; module Modules

module TaxModuleInterface
    

    # throws Exception
    def getTaxRate(streetAddress, storeFrontInterface)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # throws Exception
    def isValid(streetAddress, storeFrontInterface)
        return super if defined?(super)
        raise NotImplementedError
    end
end

module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontInterface, "org/allbinary/business/context/modules/storefront/StoreFrontInterface" unless const_defined?(:StoreFrontInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Address; autoload :StreetAddress, "org/allbinary/business/user/address/StreetAddress" unless const_defined?(:StreetAddress, false); end; end; end; end; end

end; end; end; end; end; end; end; end

