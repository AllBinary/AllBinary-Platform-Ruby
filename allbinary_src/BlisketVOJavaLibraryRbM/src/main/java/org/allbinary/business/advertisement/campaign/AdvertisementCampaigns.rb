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

require "java/lang/JavaOverload"
require "org/allbinary/business/advertisement/campaign/AdvertisementCampaignsInterface"

module ::Org; module Allbinary; module Business; module Advertisement; module Campaign

class AdvertisementCampaigns
    include AdvertisementCampaignsInterface
    attr_accessor :advertisementsVector

    def jfields_org_allbinary_business_advertisement_campaign_AdvertisementCampaigns
        @advertisementsVector = nil unless instance_variable_defined?(:@advertisementsVector)
    end
    

    def initialize(vector)
        jfields_org_allbinary_business_advertisement_campaign_AdvertisementCampaigns
        @advertisementsVector = @advertisementsVector
    end
    

    def add(advertisementInterface)
        @advertisementsVector.add(advertisementInterface)
    end
    java_overload :add, 1
    

    def get(index)
        return @advertisementsVector.get(index)
    end
    java_overload :get, 1
    

    def size()
        return @advertisementsVector.size()
    end
    java_overload :size, 0
    

    def isEnabled()
        return true
    end
    java_overload :isEnabled, 0
    

    def search(advertisementSearchInterface)
        return nil
    end
    java_overload :search, 1
end

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Business; module Advertisement; autoload :AdvertisementInterface, "org/allbinary/business/advertisement/AdvertisementInterface" unless const_defined?(:AdvertisementInterface, false); end; end; end; end
module ::Org; module Allbinary; module Business; module Advertisement; autoload :AdvertisementsInterface, "org/allbinary/business/advertisement/AdvertisementsInterface" unless const_defined?(:AdvertisementsInterface, false); end; end; end; end
module ::Org; module Allbinary; module Business; module Advertisement; module Search; autoload :AdvertisementSearchInterface, "org/allbinary/business/advertisement/search/AdvertisementSearchInterface" unless const_defined?(:AdvertisementSearchInterface, false); end; end; end; end; end

end; end; end; end; end

