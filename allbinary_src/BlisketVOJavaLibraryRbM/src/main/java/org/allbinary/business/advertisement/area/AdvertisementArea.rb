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
# package org.allbinary.business.advertisement.area

require "org/allbinary/business/advertisement/area/AdvertisementAreaInterface"

class AdvertisementArea
    include AdvertisementAreaInterface
    attr_accessor :name, :storeName, :description, :advertisementAreaConstraintsInterface, :campaign

    def initialize_fields
        @name = nil
        @storeName = nil
        @description = nil
        @advertisementAreaConstraintsInterface = nil
        @campaign = nil
    end
    

    def initialize(hashMap)
        initialize_fields
        @name = hashMap.get(AdvertisementAreaData.getInstance().NAME)
        @storeName = hashMap.get(StoreFrontData.getInstance().NAME)
        @description = hashMap.get(AdvertisementAreaData.getInstance().DESCRIPTION)
        constraintsDomString = hashMap.get(AdvertisementAreaData.getInstance().CONSTRAINTS)
        document = DomDocumentHelper.create(constraintsDomString)
        @advertisementAreaConstraintsInterface = AdvertisementAreaConstraints.new(document)
        @campaign = hashMap.get(AdvertisementCampaignData.getInstance().NAME)
    end
    

    def getName()
        return @name
    end
    

    def getStoreName()
        return @storeName
    end
    

    def getDescription()
        return @description
    end
    

    def getConstraints()
        return @advertisementAreaConstraintsInterface
    end
    

    def getCampaign()
        return @campaign
    end
    

    def setName(name)
        @name = name
    end
    

    def setStoreName(storeName)
        @storeName = storeName
    end
    

    def setDescription(description)
        @description = description
    end
    

    def setConstraints(advertisementConstraintsInterface)
        @advertisementAreaConstraintsInterface = @advertisementAreaConstraintsInterface
    end
    

    def setCampaign(campaign)
        @campaign = campaign
    end
end

require "java/util/HashMap"
require "org/allbinary/business/advertisement/campaign/AdvertisementCampaignData"
require "org/allbinary/business/context/modules/storefront/StoreFrontData"
require "org/allbinary/data/tree/dom/document/DomDocumentHelper"
require "org/w3c/dom/Document"
require "org/allbinary/business/advertisement/area/AdvertisementAreaConstraints"
require "org/allbinary/business/advertisement/area/AdvertisementAreaConstraintsInterface"
require "org/allbinary/business/advertisement/area/AdvertisementAreaData"

