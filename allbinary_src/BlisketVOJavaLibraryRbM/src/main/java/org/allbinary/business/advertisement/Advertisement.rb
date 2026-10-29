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

require "org/allbinary/business/advertisement/AdvertisementInterface"

class Advertisement
    include AdvertisementInterface
    attr_accessor :artist, :artistLink, :title, :dateAdded, :directory, :framedLink, :rank, :listPrice, :ourPrice, :image, :product, :thumbnail, :displayInBrowserContraintsInterface

    def initialize_fields
        @artist = nil
        @artistLink = nil
        @title = nil
        @dateAdded = nil
        @directory = nil
        @framedLink = nil
        @rank = 0
        @listPrice = nil
        @ourPrice = nil
        @image = nil
        @product = nil
        @thumbnail = nil
        @displayInBrowserContraintsInterface = nil
    end
    

    def initialize()
        initialize_fields
        @displayInBrowserContraintsInterface = nil
    end
    

    def getArtist()
        return @artist
    end
    

    def setArtist(artist)
        @artist = artist
    end
    

    def getArtistLink()
        return @artistLink
    end
    

    def setArtistLink(artistLink)
        @artistLink = artistLink
    end
    

    def getTitle()
        return @title
    end
    

    def setTitle(title)
        @title = title
    end
    

    def getDateAdded()
        return @dateAdded
    end
    

    def setDateAdded(dateAdded)
        @dateAdded = dateAdded
    end
    

    def getDirectory()
        return @directory
    end
    

    def setDirectory(directory)
        @directory = directory
    end
    

    def getFramedLink()
        return @framedLink
    end
    

    def setFramedLink(framedLink)
        @framedLink = framedLink
    end
    

    def getListPrice()
        return @listPrice
    end
    

    def setListPrice(listPrice)
        @listPrice = listPrice
    end
    

    def getOurPrice()
        return @ourPrice
    end
    

    def setOurPrice(ourPrice)
        @ourPrice = ourPrice
    end
    

    def getRank()
        return @rank
    end
    

    def setRank(rank)
        @rank = rank
    end
    

    def getImage()
        return @image
    end
    

    def setImage(image)
        @image = image
    end
    

    def getProduct()
        return @product
    end
    

    def setProduct(product)
        @product = product
    end
    

    def getThumbnail()
        return @thumbnail
    end
    

    def setThumbnail(thumbnail)
        @thumbnail = thumbnail
    end
    

    def getDisplayInBrowserContraintsInterface()
        return @displayInBrowserContraintsInterface
    end
end

require "org/allbinary/business/advertisement/image/AdvertisementImageInterface"
require "org/allbinary/business/advertisement/product/AdvertisementProductInterface"
require "org/allbinary/business/advertisement/thumbnail/AdvertisementThumbnailInterface"
require "org/allbinary/business/user/commerce/money/Money"
require "org/allbinary/logic/control/contraints/display/browser/DisplayInBrowserContraintsInterface"

