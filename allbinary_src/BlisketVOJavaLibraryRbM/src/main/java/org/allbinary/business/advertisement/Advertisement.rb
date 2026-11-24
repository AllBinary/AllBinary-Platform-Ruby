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

require "java/lang/JavaOverload"
require "org/allbinary/business/advertisement/AdvertisementInterface"

module ::Org; module Allbinary; module Business; module Advertisement

class Advertisement
    include AdvertisementInterface
    attr_accessor :artist, :artistLink, :title, :dateAdded, :directory, :framedLink, :rank, :listPrice, :ourPrice, :image, :product, :thumbnail, :displayInBrowserContraintsInterface

    def jfields_org_allbinary_business_advertisement_Advertisement
        @artist = nil unless instance_variable_defined?(:@artist)
        @artistLink = nil unless instance_variable_defined?(:@artistLink)
        @title = nil unless instance_variable_defined?(:@title)
        @dateAdded = nil unless instance_variable_defined?(:@dateAdded)
        @directory = nil unless instance_variable_defined?(:@directory)
        @framedLink = nil unless instance_variable_defined?(:@framedLink)
        @rank = 0 unless instance_variable_defined?(:@rank)
        @listPrice = nil unless instance_variable_defined?(:@listPrice)
        @ourPrice = nil unless instance_variable_defined?(:@ourPrice)
        @image = nil unless instance_variable_defined?(:@image)
        @product = nil unless instance_variable_defined?(:@product)
        @thumbnail = nil unless instance_variable_defined?(:@thumbnail)
        @displayInBrowserContraintsInterface = nil unless instance_variable_defined?(:@displayInBrowserContraintsInterface)
    end
    

    def initialize()
        jfields_org_allbinary_business_advertisement_Advertisement
        @displayInBrowserContraintsInterface = nil
    end
    

    def getArtist()
        return @artist
    end
    java_overload :getArtist, 0
    

    def setArtist(artist)
        @artist = artist
    end
    java_overload :setArtist, 1
    

    def getArtistLink()
        return @artistLink
    end
    java_overload :getArtistLink, 0
    

    def setArtistLink(artistLink)
        @artistLink = artistLink
    end
    java_overload :setArtistLink, 1
    

    def getTitle()
        return @title
    end
    java_overload :getTitle, 0
    

    def setTitle(title)
        @title = title
    end
    java_overload :setTitle, 1
    

    def getDateAdded()
        return @dateAdded
    end
    java_overload :getDateAdded, 0
    

    def setDateAdded(dateAdded)
        @dateAdded = dateAdded
    end
    java_overload :setDateAdded, 1
    

    def getDirectory()
        return @directory
    end
    java_overload :getDirectory, 0
    

    def setDirectory(directory)
        @directory = directory
    end
    java_overload :setDirectory, 1
    

    def getFramedLink()
        return @framedLink
    end
    java_overload :getFramedLink, 0
    

    def setFramedLink(framedLink)
        @framedLink = framedLink
    end
    java_overload :setFramedLink, 1
    

    def getListPrice()
        return @listPrice
    end
    java_overload :getListPrice, 0
    

    def setListPrice(listPrice)
        @listPrice = listPrice
    end
    java_overload :setListPrice, 1
    

    def getOurPrice()
        return @ourPrice
    end
    java_overload :getOurPrice, 0
    

    def setOurPrice(ourPrice)
        @ourPrice = ourPrice
    end
    java_overload :setOurPrice, 1
    

    def getRank()
        return @rank
    end
    java_overload :getRank, 0
    

    def setRank(rank)
        @rank = rank
    end
    java_overload :setRank, 1
    

    def getImage()
        return @image
    end
    java_overload :getImage, 0
    

    def setImage(image)
        @image = image
    end
    java_overload :setImage, 1
    

    def getProduct()
        return @product
    end
    java_overload :getProduct, 0
    

    def setProduct(product)
        @product = product
    end
    java_overload :setProduct, 1
    

    def getThumbnail()
        return @thumbnail
    end
    java_overload :getThumbnail, 0
    

    def setThumbnail(thumbnail)
        @thumbnail = thumbnail
    end
    java_overload :setThumbnail, 1
    

    def getDisplayInBrowserContraintsInterface()
        return @displayInBrowserContraintsInterface
    end
    java_overload :getDisplayInBrowserContraintsInterface, 0
end

module ::Org; module Allbinary; module Business; module Advertisement; module Image; autoload :AdvertisementImageInterface, "org/allbinary/business/advertisement/image/AdvertisementImageInterface" unless const_defined?(:AdvertisementImageInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module Advertisement; module Product; autoload :AdvertisementProductInterface, "org/allbinary/business/advertisement/product/AdvertisementProductInterface" unless const_defined?(:AdvertisementProductInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module Advertisement; module Thumbnail; autoload :AdvertisementThumbnailInterface, "org/allbinary/business/advertisement/thumbnail/AdvertisementThumbnailInterface" unless const_defined?(:AdvertisementThumbnailInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; autoload :Money, "org/allbinary/business/user/commerce/money/Money" unless const_defined?(:Money, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module ControlPackage; module Contraints; module Display; module Browser; autoload :DisplayInBrowserContraintsInterface, "org/allbinary/logic/control/contraints/display/browser/DisplayInBrowserContraintsInterface" unless const_defined?(:DisplayInBrowserContraintsInterface, false); end; end; end; end; end; end; end

end; end; end; end

