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
require "org/allbinary/business/advertisement/campaign/AdvertisementCampaignInterface"

module ::Org; module Allbinary; module Business; module Advertisement; module Campaign

class AdvertisementCampaign
    include AdvertisementCampaignInterface
    attr_accessor :hashMap

    def jfields_org_allbinary_business_advertisement_campaign_AdvertisementCampaign
        @hashMap = nil unless instance_variable_defined?(:@hashMap)
    end
    

    def initialize(hashMap)
        jfields_org_allbinary_business_advertisement_campaign_AdvertisementCampaign
        @hashMap = hashMap
    end
    

    def getComponent()
        return nil
    end
    java_overload :getComponent, 0
    

    def getName()
        return @hashMap.get(AdvertisementCampaignData.getInstance().NAME)
    end
    java_overload :getName, 0
    

    def setComponentName(name)
        @hashMap.put(::Org::Allbinary::Business::DynamicObjectData::NAME, name)
    end
    java_overload :setComponentName, 1
    

    def setName(name)
        @hashMap.put(AdvertisementCampaignData.getInstance().NAME, name)
    end
    java_overload :setName, 1
    

    def search(advertisementSearchInterface)
        return nil
    end
    java_overload :search, 1
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Business; autoload :DynamicObjectData, "org/allbinary/business/DynamicObjectData" unless const_defined?(:DynamicObjectData, false); end; end; end
module ::Org; module Allbinary; module Business; module Advertisement; autoload :AdvertisementsInterface, "org/allbinary/business/advertisement/AdvertisementsInterface" unless const_defined?(:AdvertisementsInterface, false); end; end; end; end
module ::Org; module Allbinary; module Business; module Advertisement; module Search; autoload :AdvertisementSearchInterface, "org/allbinary/business/advertisement/search/AdvertisementSearchInterface" unless const_defined?(:AdvertisementSearchInterface, false); end; end; end; end; end
autoload :AdvertisementCampaignData, "org/allbinary/business/advertisement/campaign/AdvertisementCampaignData" unless const_defined?(:AdvertisementCampaignData, false)

end; end; end; end; end

