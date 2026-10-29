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
# package org.allbinary.business.advertisement


module AdvertisementsInterface
    

    def add(advertisementInterface)
        raise NotImplementedError
    end
    

    def get(index)
        raise NotImplementedError
    end
    

    def getCurrentPageNum()
        raise NotImplementedError
    end
    

    def getErrorDescription()
        raise NotImplementedError
    end
    

    def getErrorNum()
        raise NotImplementedError
    end
    

    def getNumberOfPosters()
        raise NotImplementedError
    end
    

    def getNumberOfProductsInPage()
        raise NotImplementedError
    end
    

    def getStatusCode()
        raise NotImplementedError
    end
    

    def getTotalNumberOfProducts()
        raise NotImplementedError
    end
    

    def isSearchValid()
        raise NotImplementedError
    end
    

    def setCurrentPageNum(currentPageNum)
        raise NotImplementedError
    end
    

    def setErrorDescription(errorDescription)
        raise NotImplementedError
    end
    

    def setErrorNum(errorNum)
        raise NotImplementedError
    end
    

    def setNumberOfProductsInPage(numberOfProductsInPage)
        raise NotImplementedError
    end
    

    def setStatusCode(statusCode)
        raise NotImplementedError
    end
    

    def setTotalNumberOfProducts(totalNumberOfProducts)
        raise NotImplementedError
    end
    

    def toString()
        raise NotImplementedError
    end
    alias_method :to_s, :toString
end

require "org/allbinary/business/advertisement/AdvertisementInterface"

