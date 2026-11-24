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
# package org.allbinary.business.advertisement.search


module ::Org; module Allbinary; module Business; module Advertisement; module Search

module AdvertisementSearchInterface
    

    def getWebSite()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getCategory()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getSizeConstraints()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getPricingConstraints()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getPageNumber()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getProductsPerPage()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getSearchParams()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def setCategory(advertisementCategoryInterface)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def setSizeConstraints(twoDimensionConstraintsInterface)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def setPricingConstraints(priceConstraintInterface)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def setPageNumber(pageNumber)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def setProductsPerPage(productsPerPage)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def setSearchParams(columnAndKeywordHashMap)
        return super if defined?(super)
        raise NotImplementedError
    end
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Business; module Advertisement; module Search; module Category; autoload :AdvertisementCategoryInterface, "org/allbinary/business/advertisement/search/category/AdvertisementCategoryInterface" unless const_defined?(:AdvertisementCategoryInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module Advertisement; module Search; module Website; autoload :AdvertisementWebsiteInterface, "org/allbinary/business/advertisement/search/website/AdvertisementWebsiteInterface" unless const_defined?(:AdvertisementWebsiteInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module ControlPackage; module Contraints; module Price; autoload :PriceConstraintInterface, "org/allbinary/logic/control/contraints/price/PriceConstraintInterface" unless const_defined?(:PriceConstraintInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module ControlPackage; module Contraints; module Size; autoload :TwoDimensionalConstraintInterface, "org/allbinary/logic/control/contraints/size/TwoDimensionalConstraintInterface" unless const_defined?(:TwoDimensionalConstraintInterface, false); end; end; end; end; end; end

end; end; end; end; end

