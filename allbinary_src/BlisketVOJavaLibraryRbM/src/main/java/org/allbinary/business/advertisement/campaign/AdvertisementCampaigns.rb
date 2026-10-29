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

require "org/allbinary/business/advertisement/campaign/AdvertisementCampaignsInterface"

class AdvertisementCampaigns
    include AdvertisementCampaignsInterface
    attr_accessor :advertisementsVector

    def initialize_fields
        @advertisementsVector = nil
    end
    

    def initialize(vector)
        initialize_fields
        @advertisementsVector = @advertisementsVector
    end
    

    def add(advertisementInterface)
        @advertisementsVector.add(advertisementInterface)
    end
    

    def get(index)
        return @advertisementsVector.get(index)
    end
    

    def size()
        return @advertisementsVector.size()
    end
    

    def isEnabled()
        return true
    end
    

    def search(advertisementSearchInterface)
        return nil
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/business/advertisement/AdvertisementInterface"
require "org/allbinary/business/advertisement/AdvertisementsInterface"
require "org/allbinary/business/advertisement/search/AdvertisementSearchInterface"

