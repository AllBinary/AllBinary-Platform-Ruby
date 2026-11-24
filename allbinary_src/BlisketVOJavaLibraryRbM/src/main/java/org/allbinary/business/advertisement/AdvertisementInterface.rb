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


module ::Org; module Allbinary; module Business; module Advertisement

module AdvertisementInterface
    

    def getArtist()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getArtistLink()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getTitle()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getDateAdded()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getDirectory()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getFramedLink()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getListPrice()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getOurPrice()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getRank()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getImage()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getProduct()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getThumbnail()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getDisplayInBrowserContraintsInterface()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def setArtist(artist)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def setArtistLink(artistLink)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def setTitle(title)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def setDateAdded(dateAdded)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def setDirectory(directory)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def setFramedLink(framedLink)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def setRank(rank)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def setImage(_AdvertisementImageInterface)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def setProduct(_AdvertisementProductInterface)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def setThumbnail(_AdvertisementThumbnailInterface)
        return super if defined?(super)
        raise NotImplementedError
    end
end

module ::Org; module Allbinary; module Business; module Advertisement; module Image; autoload :AdvertisementImageInterface, "org/allbinary/business/advertisement/image/AdvertisementImageInterface" unless const_defined?(:AdvertisementImageInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module Advertisement; module Product; autoload :AdvertisementProductInterface, "org/allbinary/business/advertisement/product/AdvertisementProductInterface" unless const_defined?(:AdvertisementProductInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module Advertisement; module Thumbnail; autoload :AdvertisementThumbnailInterface, "org/allbinary/business/advertisement/thumbnail/AdvertisementThumbnailInterface" unless const_defined?(:AdvertisementThumbnailInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; autoload :Money, "org/allbinary/business/user/commerce/money/Money" unless const_defined?(:Money, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module ControlPackage; module Contraints; module Display; module Browser; autoload :DisplayInBrowserContraintsInterface, "org/allbinary/logic/control/contraints/display/browser/DisplayInBrowserContraintsInterface" unless const_defined?(:DisplayInBrowserContraintsInterface, false); end; end; end; end; end; end; end

end; end; end; end

