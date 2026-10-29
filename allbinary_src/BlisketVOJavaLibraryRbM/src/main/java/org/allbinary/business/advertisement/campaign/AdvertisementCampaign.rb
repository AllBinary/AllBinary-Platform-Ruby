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
# package org.allbinary.business.advertisement.campaign

require "org/allbinary/business/advertisement/campaign/AdvertisementCampaignInterface"

class AdvertisementCampaign
    include AdvertisementCampaignInterface
    attr_accessor :hashMap

    def initialize_fields
        @hashMap = nil
    end
    

    def initialize(hashMap)
        initialize_fields
        @hashMap = hashMap
    end
    

    def getComponent()
        return nil
    end
    

    def getName()
        return @hashMap.get(AdvertisementCampaignData.getInstance().NAME)
    end
    

    def setComponentName(name)
        @hashMap.put(DynamicObjectData::NAME, name)
    end
    

    def setName(name)
        @hashMap.put(AdvertisementCampaignData.getInstance().NAME, name)
    end
    

    def search(advertisementSearchInterface)
        return nil
    end
end

require "java/util/HashMap"
require "org/allbinary/business/DynamicObjectData"
require "org/allbinary/business/advertisement/AdvertisementsInterface"
require "org/allbinary/business/advertisement/search/AdvertisementSearchInterface"
require "org/allbinary/business/advertisement/campaign/AdvertisementCampaignData"

