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


module AdvertisementInterface
    

    def getArtist()
        raise NotImplementedError
    end
    

    def getArtistLink()
        raise NotImplementedError
    end
    

    def getTitle()
        raise NotImplementedError
    end
    

    def getDateAdded()
        raise NotImplementedError
    end
    

    def getDirectory()
        raise NotImplementedError
    end
    

    def getFramedLink()
        raise NotImplementedError
    end
    

    def getListPrice()
        raise NotImplementedError
    end
    

    def getOurPrice()
        raise NotImplementedError
    end
    

    def getRank()
        raise NotImplementedError
    end
    

    def getImage()
        raise NotImplementedError
    end
    

    def getProduct()
        raise NotImplementedError
    end
    

    def getThumbnail()
        raise NotImplementedError
    end
    

    def getDisplayInBrowserContraintsInterface()
        raise NotImplementedError
    end
    

    def setArtist(artist)
        raise NotImplementedError
    end
    

    def setArtistLink(artistLink)
        raise NotImplementedError
    end
    

    def setTitle(title)
        raise NotImplementedError
    end
    

    def setDateAdded(dateAdded)
        raise NotImplementedError
    end
    

    def setDirectory(directory)
        raise NotImplementedError
    end
    

    def setFramedLink(framedLink)
        raise NotImplementedError
    end
    

    def setRank(rank)
        raise NotImplementedError
    end
    

    def setImage(_AdvertisementImageInterface)
        raise NotImplementedError
    end
    

    def setProduct(_AdvertisementProductInterface)
        raise NotImplementedError
    end
    

    def setThumbnail(_AdvertisementThumbnailInterface)
        raise NotImplementedError
    end
end

require "org/allbinary/business/advertisement/image/AdvertisementImageInterface"
require "org/allbinary/business/advertisement/product/AdvertisementProductInterface"
require "org/allbinary/business/advertisement/thumbnail/AdvertisementThumbnailInterface"
require "org/allbinary/business/user/commerce/money/Money"
require "org/allbinary/logic/control/contraints/display/browser/DisplayInBrowserContraintsInterface"

