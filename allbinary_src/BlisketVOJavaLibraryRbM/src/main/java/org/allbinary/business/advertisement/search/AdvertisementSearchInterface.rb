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


module AdvertisementSearchInterface
    

    def getWebSite()
        raise NotImplementedError
    end
    

    def getCategory()
        raise NotImplementedError
    end
    

    def getSizeConstraints()
        raise NotImplementedError
    end
    

    def getPricingConstraints()
        raise NotImplementedError
    end
    

    def getPageNumber()
        raise NotImplementedError
    end
    

    def getProductsPerPage()
        raise NotImplementedError
    end
    

    def getSearchParams()
        raise NotImplementedError
    end
    

    def setCategory(advertisementCategoryInterface)
        raise NotImplementedError
    end
    

    def setSizeConstraints(twoDimensionConstraintsInterface)
        raise NotImplementedError
    end
    

    def setPricingConstraints(priceConstraintInterface)
        raise NotImplementedError
    end
    

    def setPageNumber(pageNumber)
        raise NotImplementedError
    end
    

    def setProductsPerPage(productsPerPage)
        raise NotImplementedError
    end
    

    def setSearchParams(columnAndKeywordHashMap)
        raise NotImplementedError
    end
end

require "java/util/HashMap"
require "org/allbinary/business/advertisement/search/category/AdvertisementCategoryInterface"
require "org/allbinary/business/advertisement/search/website/AdvertisementWebsiteInterface"
require "org/allbinary/logic/control/contraints/price/PriceConstraintInterface"
require "org/allbinary/logic/control/contraints/size/TwoDimensionalConstraintInterface"

